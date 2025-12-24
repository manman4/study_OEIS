require './linear'

# A391962
a =
[1, 2, 3, 7, 17, 36, 72, 143, 282, 549, 1057, 2019, 3832, 7232, 13581, 25394, 47303, 87819, 
162549, 300060, 552552, 1015259, 1861674, 3407433, 6226053]
f = polynomial(a)
p f
p reccurence_form(f)
# p reccurence_relation(a)