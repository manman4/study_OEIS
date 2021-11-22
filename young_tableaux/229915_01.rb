m = 100
@ary = (0..m).map{[]}

# A026820
def F(n, k)
  return 1 if n == 0
  return 0 if k == 0
  return @ary[n][k - 1] if k > n
  @ary[n - k][k] + @ary[n][k - 1]
end

(0..m).each{|i|
  (0..m).each{|j| 
    @ary[i][j] = F(i, j)
  }
}

def f(n, i, t)
  return 0 if n < 0
  return 1 if n == 0
  # A100882とは特にここが異なる
  if i == 1
    return @ary[n][n] if n <= t
    return @ary[n][t]
  end
  return 0 if i == 0
  return f(n, i - 1, t) + (1..[t, n / i].min).inject(0){|s, j| s + f(n - i * j, i, j)}
end

def A(n)
  f(n, n, n)
end

(0..m).each{|i| 
  print i
  print ' '
  puts A(i)
}