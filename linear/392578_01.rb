require './linear'

# A392578
a =
[1, 8, 42, 186, 755, 2910, 10839, 39404, 140673, 495184, 1723612, 5944602, 20346280, 69189414, 233985831, 787511074, 2639382314]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)