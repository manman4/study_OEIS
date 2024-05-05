# m次以下を取り出す
def mul(f_ary, b_ary, m)
  s1, s2 = f_ary.size, b_ary.size
  ary = Array.new(s1 + s2 - 1, 0)
  (0..s1 - 1).each{|i|
    (0..s2 - 1).each{|j|
      ary[i + j] += f_ary[i] * b_ary[j]
    }
  }
  ary[0..m]
end

# [1, f, f^2, f^3, ...]
def A(f_ary, n)
  g_ary = [1] + [0] * n
  a = [g_ary]
  n.times{
    g_ary = mul(f_ary, g_ary, n)
    a << g_ary
  }
  a
end

# f_aryの1次の項は1であること
def f2r(f_ary, n)
  a = A(f_ary, n)
  b = []
  (0..n).each{|i|
    c = [0] * (n + 1)
    c[i] = 1
    b << c
  }
  (2..n).each{|i1|
    (i1 - 1).downto(1){|x|
      b[x][i1] = (a[x][i1] - (x + 1..i1 - 1).inject(0){|s, i2| s + b[i2][i1] * b[x][i2]}) / 2r
    }
  }
  b[1]
end

# f_aryの1次の項は1であること
def f3r(f_ary, n)
  a = A(f_ary, n)
  b = []
  (0..n).each{|i|
    c = [0] * (n + 1)
    c[i] = 1
    b << c
  }
  (2..n).each{|i1|
    # 計算の順に注意
    (i1 - 1).downto(1){|x|
      b[x][i1] = (a[x][i1] - (x + 1..i1 - 1).inject(0){|s, i2| s + (i2..i1).inject(b[i2][i1]){|t, i3| t + b[i3][i1] * b[i2][i3]} * b[x][i2]}) / 3r
    }
  }
  b[1]
end

# f_aryの1次の項は1であること
def f4r(f_ary, n)
  a = A(f_ary, n)
  b = []
  (0..n).each{|i|
    c = [0] * (n + 1)
    c[i] = 1
    b << c
  }
  (2..n).each{|i1|
    # 計算の順に注意
    (i1 - 1).downto(1){|x|
      b[x][i1] = (a[x][i1] - (x + 1..i1 - 1).inject(0){|s, i2| s + (i2..i1).inject(b[i2][i1]){|t, i3| t + (i3..i1).inject(b[i3][i1]){|u, i4| u + b[i4][i1] * b[i3][i4]} * b[i2][i3]} * b[x][i2]}) / 4r
    }
  }
  b[1]
end

# f_aryの1次の項は1であること
def f5r(f_ary, n)
  a = A(f_ary, n)
  b = []
  (0..n).each{|i|
    c = [0] * (n + 1)
    c[i] = 1
    b << c
  }
  (2..n).each{|i1|
    # 計算の順に注意
    (i1 - 1).downto(1){|x|
      b[x][i1] = (a[x][i1] - (x + 1..i1 - 1).inject(0){|s, j| s + (j..i1).inject(b[j][i1]){|t, k| t + (k..i1).inject(b[k][i1]){|u, l| u + (l..i1).inject(b[l][i1]){|v, m| v + b[m][i1] * b[l][m]} * b[k][l]} * b[j][k]} * b[x][j]}) / 5r
    }
  }
  b[1]
end

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
