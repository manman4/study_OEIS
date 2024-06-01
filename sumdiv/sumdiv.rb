# Sum_{d|n} f(d) の計算

# 工夫せずに計算すると、以下のようになる。

# def sumdiv(n)
#   s = 0
#   (1..n.each{|i| s += f(i) if n % i == 0})
#   s
# end

# def sumdiv_ary(n)
#   [0] + (1..n).map{|i| sumdiv(i)}
# end

# 以下のように計算する方が速いと思われる。

def sumdiv(n)
  ary = [0] + Array.new(n, 0)
  i = 1
  while i <= n
    a = f(i)
    j = i
    while j <= n
      ary[j] += a
      j += i
    end
    i += 1
  end
  ary
end

def f(n)
  n ** n
end

# A062796
p sumdiv(16)
