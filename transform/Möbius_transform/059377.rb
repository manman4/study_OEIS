require './Möbius_transform'

n = 50
ary = (0..n).map{|i| i * i * i * i}

p Möbius_transform(ary, n)