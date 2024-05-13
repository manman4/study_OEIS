require './fsr'

n = 20

# A220110
f_ary = [0, 1, 2, 4] + [0] * (n - 3)
p a = f2r(f_ary, n)
p a.map(&:to_i)

# A220288
f_ary = [0, 1, 3, 9] + [0] * (n - 3)
p a = f3r(f_ary, n)
p a.map(&:to_i)

# A141119
f_ary = [0, 1, 16] + [0] * (n - 2)
p a = f4r(f_ary, n)
p a.map(&:to_i)

# A141120
f_ary = [0, 1, 25] + [0] * (n - 2)
p a = f5r(f_ary, n)
p a.map(&:to_i)

# A141121
f_ary = [0, 1, 36] + [0] * (n - 2)
p a = f6r(f_ary, n)
p a.map(&:to_i)
