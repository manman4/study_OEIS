def a(n)
  return 0 if n < 1
  return [2, 32, 294, 2304, 16810, 117600][n-1] if n <= 6
  return 14*a(n-1) - 63*a(n-2) + 100*a(n-3) - 63*a(n-4) + 14*a(n-5) - a(n-6)
end

(1..20).each{|i| p [i, a(i)]}