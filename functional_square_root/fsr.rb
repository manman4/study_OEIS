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
  (2..n).each{|i|
    # 計算の順に注意
    (i - 1).downto(1){|k|
      b[k][i] = (a[k][i] - (k + 1..i - 1).inject(0){|s, j| s + b[j][i] * b[k][j]}) / 2r
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
  (2..n).each{|i|
    # 計算の順に注意
    (i - 1).downto(1){|k|
      b[k][i] = (a[k][i] - (k + 1..i - 1).inject(0){|s, j| s + (j..i).inject(b[j][i]){|t, m| t + b[m][i] * b[j][m]} * b[k][j]}) / 3r
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

