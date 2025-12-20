require 'prime'

def berlekamp_massey(s, q)
  b, c = [1], [1] + [0] * (s.size - 1)
  l, m, a = 0, -1, 1
  s.size.times{|n|
    d = (0..l).inject(0){|sum, i| (sum + c[i] * s[n - i]) % q}
    next if d == 0
    t = c[0..l]
    (0...[s.size - n + m, b.size].min).each{|j|
      c[n - m + j] = (c[n - m + j] - d * a * b[j]) % q
    }
    b, l, m, a = t, n + 1 - l, n, mod_inv(d, q) if 2 * l <= n
  }
  c[0..l]
end

def euclid(a, b)
  return [0, 1] if a == 0
  q, r = b.divmod(a)
  x, y = euclid(r, a)
  [y - q * x, x]
end

# x^(-1) (mod n)
def mod_inv(x, n)
  euclid(x, n)[0]
end

# x % n1 = r1, x % n2 = r2, |x| <= n1 * n2 / 2 となる x
def chinese(n1, r1, n2, r2)
  x = (n1 * (r2 - r1) * mod_inv(n1, n2) + r1) % (n = n1 * n2)
  2 * x > n ? x - n : x
end

# f を多項式として f=0 が数列 s を生成する漸化式の特性方程式となっているか
def test(f, s)
  (0..s.size - f.size).all?{|i|
    f.each_with_index.inject(0){|sum, (fj, j)|
      sum + fj * s[f.size + i - j - 1]
    } == 0
  }
end

# 数列 s を生成する漸化式の特性方程式 f=0 の f を返す
def polynomial(s)
  f, n = [], 1
  Prime.each{|q|
    c = berlekamp_massey(s, q)
    if c.size != f.size then
      f, n = c, q if c.size > f.size
      next
    end
    f = (0...f.size).map{|i| chinese(n, f[i], q, c[i])}
    return f if test(f, s)
    n *= q
  }
end

def integer_form(coeffs, seq_name: "a", index: "n")
  raise ArgumentError, "係数は2個以上必要です" if coeffs.length < 2
  raise ArgumentError, "最高次係数が0です" if coeffs[0] == 0

  a0 = coeffs[0]
  terms = []

  coeffs[1..].each_with_index{|c, i|
    next if c == 0
    coef  = -c
    shift = i + 1

    term =
      if coef == 1
        "#{seq_name}(#{index}-#{shift})"
      elsif coef == -1
        "-#{seq_name}(#{index}-#{shift})"
      else
        "#{coef}*#{seq_name}(#{index}-#{shift})"
      end

    terms << term
  }

  rhs = terms.join(" + ").gsub("+ -", "- ")

  a0 == 1 ? "#{seq_name}(#{index}) = #{rhs}" :
            "#{a0}*#{seq_name}(#{index}) = #{rhs}"
end

def reccurence_relation(s, seq_name: "a", index: "n")
  coeffs = polynomial(s)
  integer_form(coeffs, seq_name: seq_name, index: index)
end

