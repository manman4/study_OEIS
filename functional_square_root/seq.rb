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
  # ちなみに2,4はOK
  f_ary = [0] + (1..n).map{|j| j * i ** (j - 1)}
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
  # 2,3, ... ,6すべてOK
  f_ary = [0] + (1..n).map{|j| j * (i * i) ** (j - 1)}
  p a = fsr(f_ary, n, i)
  p [i, a.all?{|i| i.denominator == 1}]
}


def f(n)
  return 1 if n < 2
  (1..n).inject(:*)
end

(2..6).each{|i|
  f_ary = [0] + (1..n).map{|j| i ** (j - 1) / f(j - 1).to_r}
  a = fsr(f_ary, n, i)
  p b = [0] + (1..n).map{|j| f(j) * a[j]}
  p [i, b.all?{|i| i.denominator == 1}]
}

(2..6).each{|i|
  # 偶数はNG
  f_ary = [0] + (1..n).map{|j| i ** (j - 1) / j.to_r}
  a = fsr(f_ary, n, i)
  p b = [0] + (1..n).map{|j| f(j) * a[j]}
  p [i, b.all?{|i| i.denominator == 1}]
  # 2,3, ... ,6すべてOK
  f_ary = [0] + (1..n).map{|j| (2 * i) ** (j - 1) / j.to_r}
  a = fsr(f_ary, n, i)
  p b = [0] + (1..n).map{|j| f(j) * a[j]}
  p [i, b.all?{|i| i.denominator == 1}]
}



