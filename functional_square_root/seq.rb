require './fsr'

n = 20

# A220110, 
(2..6).each{|i|
  f_ary = [0, 1, i * i, i * i * i] + [0] * (n - 3)
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
}

# A141120, A141121
(2..6).each{|i|
  f_ary = [0, 1, i * i] + [0] * (n - 2)
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
}

(2..6).each{|i|
  f_ary = [0] + (1..n).map{|j| j * (i * i) ** (j - 1)}
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
  # ちなみに
  f_ary = [0] + (1..n).map{|j| j * i ** (j - 1)}
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
}