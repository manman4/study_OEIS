require './Möbius_transform'

n = 50
ary = [0] + Prime.take(n).to_a

p Möbius_transform(ary, n)