def a(n)
  return 0 if n < 2
  return [1, 13, 80, 549, 3851, 26499, 183521, 1269684, 8782833, 60764640, 420375910][n-2] if n <= 12
  return 3*a(n-1) + 21*a(n-2) + 44*a(n-3) - 5*a(n-4) - 47*a(n-5) - 26*a(n-6) + 83*a(n-7) - 81*a(n-8) + 39*a(n-9) - 10*a(n-10) + a(n-11)
end

(2..30).each{|i| p [i, a(i)]}
