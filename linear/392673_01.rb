require './linear'

# A392673
a =
[1, 0, 2, 0, 3, 0, 4, 1, 5, 5, 6, 15, 7, 35, 9, 70, 17, 126, 46, 210, 131, 331, 342, 506, 805, 781, 1730, 1287, 3448, 2366, 6465]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)