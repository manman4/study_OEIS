require './generalized_Euler_transform'

n = 50
ary1 = Array.new(n + 1, -1)
ary2 = Array.new(n + 1,  1)

# Product_{k>1} (1 + x^k)/(1 - x^k)
p A([[ary1, ary1], [ary2, ary2]], n, 2)
