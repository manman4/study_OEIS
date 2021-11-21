require './generalized_Euler_transform'

n = 50
ary1 = Array.new(n + 1, 1)
ary2 = (0..n).map{|i| i}

# Product_{k>1} 1/(1 - k * x^k)
p A([[ary1, ary2]], n, 2)
