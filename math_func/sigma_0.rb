require 'prime'

def d(n)
  return 1 if n == 1
  n.prime_division.inject(1){|s, i| s * (i[1] + 1)}
end

n = 20
p (1..n).map{|i| d(i)}