m = 100
@ary = []
(0..m).each{|i| @ary << Array.new(m+1, 1)}
# p @ary

def B(n,k)
  return 0 if k == 0
  return 1 if k == 1
  if k > n
    return @ary[n][k-1]
  else
    return @ary[n-k][k]+@ary[n][k-1]
  end
end


(1..m).each{|i|
  (0..m).each{|j| 
    @ary[i][j] = B(i,j)
  }
}
# p @ary
def f(n, i, t)
  # return 0 if n < 0
  return 1 if n == 0
  if i == 1
    if n <= t
      return @ary[n][n]
    else
      return @ary[n][t]
    end
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