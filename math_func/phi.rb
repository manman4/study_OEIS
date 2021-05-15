require 'prime'

# Cf. A344138
# a[0]=0
def phi(n)
  phi_ary = [0]
  (1..n).each{|i| phi_ary << i}
  (2..n).each{|p|
    if phi_ary[p] == p
      p.step(n, p){|d| phi_ary[d] -= phi_ary[d] / p}
    end
  }
  phi_ary
end

p phi(20)
