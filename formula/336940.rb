require 'prime'

def A(n)
  h = {}
  Prime.each(n * n){|i| h[i] = 1}
  ary0 = []
  ary1 = [1]
  (1..n * n).each{|i|
    i.prime_division.each{|j| h[j[0]] += j[1]}
    ary0 << h[2]
    ary1 << h.values.inject(:*) / h[2]
  }
  p ary0
  p ary1
end

A(15)
