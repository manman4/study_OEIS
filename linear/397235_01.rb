require './linear'

# A397235
a =
[1, 2, 5, 11, 26, 60, 140, 325, 756, 1757, 4085, 9496, 22076, 51320, 119305, 277350, 644761, 1498887, 3484490, 8100456, 18831276, 43777405]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)