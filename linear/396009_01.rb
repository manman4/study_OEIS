require './linear'

# A396009
a =
[0, 0, 0, 0, 0, 1, 2, 4, 7, 7, 9, 11, 13, 15, 18, 20, 23, 26, 29, 32, 36, 39, 43, 47, 51, 55, 60, 64, 69, 74, 79, 84, 90, 95, 101, 107, 113, 119, 126, 132]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)