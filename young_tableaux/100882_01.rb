def f(n, i, t)
  return 0 if n < 0
  return 1 if n == 0
  # A209915とは特にここが異なる
  if i == 1
    return 1 if n <= t
    return 0
  end
  return 0 if i == 0
  return f(n, i - 1, t) + (1..[t, n / i].min).inject(0){|s, j| s + f(n - i * j, i - 1, j)}
end

def A(n)
  f(n, n, n)
end

p (0..50).map{|i| A(i)}