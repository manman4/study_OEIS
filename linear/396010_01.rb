require './linear'

# A396010
a =
[0, 0, 0, 0, 0, 0, 1, 1, 3, 4, 7, 8, 12, 12, 15, 17, 20, 22, 26, 28, 32, 35, 39, 42, 47, 50, 55, 59, 64, 68, 74, 78, 84, 89, 95, 100, 107, 112, 119, 125, 132]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)