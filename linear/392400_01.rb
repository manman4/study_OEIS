require './linear'

# A392400
a =
[1, 1, 2, 11, 37, 113, 377, 1266, 4175, 13785, 45665, 151169, 500162, 1655187, 5477917, 18128529, 59993817, 198543154]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)