require 'prime'

# Cf. A344080
# tau(n^k)
def tau(n, k = 1)
  n.prime_division.inject(1){|s, i| s * (k * i[1] + 1)}
end

# a[0]=0
def tau_ary(n, k = 1)
  [0] + (1..n).map{|i| tau(i, k)}
end

p tau_ary(20)
# A048691
p tau_ary(20, 2)
# A048785
p tau_ary(20, 3)
