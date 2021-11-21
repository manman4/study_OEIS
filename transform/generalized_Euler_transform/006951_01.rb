require './generalized_Euler_transform'

n = 50
ary1 = Array.new(n + 1, -1)
ary2 = Array.new(n + 1,  1)
ary3 = Array.new(n + 1,  2)

# Product_{k>0} (1 - x^k)/(1 - 2*x^k)
p A([[ary1, ary2], [ary2, ary3]], n)