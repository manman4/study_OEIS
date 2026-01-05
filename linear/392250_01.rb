require './linear'

# A392250
a =
[1, 0, 1, 0, 1, 1, 1, 3, 1, 6, 2, 10, 6, 15, 16, 22, 36, 35, 71, 64, 128, 129, 220, 265, 376, 529, 661, 
1013, 1211, 1873, 2290, 3394, 4382, 6126, 8347]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)