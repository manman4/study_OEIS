require './generalized_Euler_transform'

n = 50
ary1 = (0..n).map{|i|  i * (3 * i - 2)}
ary2 = Array.new(n + 1, -1)

# Product_{k>0} 1/(1 + x^k)^(k * (3 * k - 2))
p A([[ary1, ary2]], n)
