require './linear'

# A392674
a =
[1, 0, 0, 2, 0, 0, 3, 0, 1, 4, 0, 5, 5, 0, 15, 6, 1, 35, 7, 8, 70, 8, 36, 126, 10, 120, 210, 21, 330, 
330, 77, 792, 496, 298, 1716, 729, 1014, 3432]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)