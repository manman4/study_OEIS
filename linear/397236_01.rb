require './linear'

# A397236
a =
[1, 0, 0, 1, 1, 2, 1, 3, 5, 5, 9, 11, 18, 25, 33, 52, 70, 103, 146, 206, 302, 422, 610, 870, 1239, 1782, 2530, 3631, 5183, 7400, 10595, 15113, 21627, 30891]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)