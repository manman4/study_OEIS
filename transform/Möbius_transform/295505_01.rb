require './Möbius_transform'

n = 50
ary = [0] + (1..n).map{|i| 4 ** (i - 1)}

p Möbius_transform(ary, n)