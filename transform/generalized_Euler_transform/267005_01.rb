require './generalized_Euler_transform'

n = 50
ary1 = Array.new(n + 1, -1)
ary2 = (0..n).map{|i|  i}
ary3 = Array.new(n + 1,  1)

# Product_{k>0} (1 - k * x^k)/(1 - x^k)
p A([[ary1, ary2], [ary3, ary3]], n)
