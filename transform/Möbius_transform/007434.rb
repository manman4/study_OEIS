require 'prime'

def A008683(n)
  ary = n.prime_division
  return (-1) ** (ary.size % 2) if ary.all?{|i| i[1] == 1}
  0
end

# a[0] = 0
def Möbius_transform(ary, n)
  m_ary = [0] + (1..n).map{|i| A008683(i)}
  a = [0]
  (1..n).each{|i|
    s = 0
    (1..i).each{|j|
      s += m_ary[i / j] * ary[j] if i % j == 0
    }
    a << s
  }
  a
end

n = 50
ary = (0..n).map{|i| i * i}

p Möbius_transform(ary, n)