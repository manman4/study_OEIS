require 'prime'

def berlekamp_massey(s, q)
  b, c = [1], [1] + [0] * (s.size - 1)
  l, m, a = 0, -1, 1
  s.size.times{|n|
    d = (0..l).inject(0) {|sum, i| (sum + c[i] * s[n - i]) % q}
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
    f.each_with_index.inject(0) {|sum, (fj, j)|
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
    f = (0...f.size).map {|i| chinese(n, f[i], q, c[i])}
    return f if test(f, s)
    n *= q
  }
end

a = [1, 2, 3, 5, 8]
p polynomial(a)  # [1, -1, -1]

# A339850
a =
[1,4,13,44,148,498,1676,5640,18980,63872,214944,
 723336,2434192,8191616,27566672,92768192,
 312186304,1050578720,3535439040,11897565568,
 40038044736,134737229824,453421769728,
 1525868548224,5134898635008,17280115002368,
 58151561641216]
p polynomial(a)  # [1, -2, -4, -2]

# A339851
a =
[1,13,80,549,3851,26499,183521,1269684,8782833,
 60764640,420375910,2908245096,20119820809,
 139192751951,962962619849,6661962019139,
 46088745527485,318850883829314,2205872265781839,
 15260652269262421,105576152878533354,
 730396306808551777,5053023343572544589]
p polynomial(a)  # [1, -3, -21, -44, 5, 47, 26, -83, 81, -39, 10, -1]
