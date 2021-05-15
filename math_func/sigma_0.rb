require 'prime'

# Cf. A344080
def tau(n)
  n.prime_division.inject(1){|s, i| s * (i[1] + 1)}
end

# a[0]=0
def tau_ary(n)
  [0] + (1..n).map{|i| tau(i)}
end

p tau_ary(20)
