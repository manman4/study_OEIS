require './linear'

# A397237
a =
[1, 2, 3, 5, 11, 25, 52, 103, 206, 422, 870, 1782, 3631, 7400, 15113, 30891, 63113, 128879, 263162, 537453, 1097740, 2242060, 4579036, 9351820]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)