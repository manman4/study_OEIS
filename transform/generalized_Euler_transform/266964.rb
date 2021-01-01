require './generalized_Euler_transform'

n = 50
ary1 = (0..n).map{|i| -i}
ary2 = (0..n).map{|i|  i}

# Product_{k>0} (1 - k * x^k)^k
p A([[ary1, ary2]], n)
