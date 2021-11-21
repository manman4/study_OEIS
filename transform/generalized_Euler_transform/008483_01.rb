require './generalized_Euler_transform'

n = 50
ary1 = Array.new(n + 1, 1)

# Product_{k>2} 1/(1 - x^k)
p A([[ary1, ary1]], n, 3)
