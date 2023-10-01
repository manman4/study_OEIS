def I(ary, n)
  a = [1]
  i = 0
  while i < n
    a << -(0..i).inject(0){|s, j| s + ary[1 + i - j] * a[j]}
    i += 1
  end
  a
end

def Rational_function(ary0, ary, n)
  a = ary0.clone
  i = 0
  while i < n
    a[i + 1] -= (0..i).inject(0){|s, j| s + ary[1 + i - j] * a[j]}
    i += 1
  end
  a
end

# ary[0] = 1
def sqrt_a(ary)
  n = ary.size - 1
  a = [1]
  (0..n - 1).each{|i| a << (ary[i + 1] - (1..i).inject(0){|s, j| s + a[j] * a[-j]}) / 2}
  a
end

a = [1, -2] + [0] * 9
p I(a, 10)

b = [0, 0, 1] + [0] * 8
p Rational_function(b, a, 10)

# A002420
c = [1, 4] + [0] * 9
p sqrt_a(c)
    