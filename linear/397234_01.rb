require './linear'

# A397234
a =
[1, 1, 2, 2, 3, 4, 7, 11, 18, 27, 41, 61, 93, 142, 219, 336, 515, 786, 1200, 1832, 2801, 4284, 6554, 10023, 15325, 23427, 35814, 54754, 83718, 128006, 195722]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)