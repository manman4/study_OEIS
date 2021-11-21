require './generalized_Euler_transform'

n = 50
ary1 = (0..n).map{|i| -i}
ary2 = Array.new(n + 1, -1)

# Product_{k>1} (1 + x^k)^k
p ary = A([[ary1, ary2]], n, 2)
