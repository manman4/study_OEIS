def f(n, i, t)
  return 0 if n < 0
  return 1 if n == 0
  if i == 1
    return 1 if n >= t # A100882とは不等号の向きが異なる
    return 0
  end
  return 0 if i == 0
  return f(n, i - 1, t) + (t..n / i).inject(0){|s, j| s + f(n - i * j, i - 1, j)}
end

def A(n)
  f(n, n, 1)
end

p (0..50).map{|i| A(i)}