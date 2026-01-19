require './linear'

# A391843
a =
[1, 0, 2, 0, 3, 1, 4, 5, 5, 15, 7, 35, 15, 70, 44, 127, 129, 221, 340, 396, 804, 781, 1742, 1716, 3550, 4005, 7009, 9390]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)