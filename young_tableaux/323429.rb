def A(n)
  return 1 if n < 2
  a = []
  ary = [[[n]]]
  (1..n - 1).each{|i| a << [[i]]}
  while a.size > 0
    b = []
    a.each{|i|
      # 盤上の数字の合計
      sum = i.flatten.inject(:+)
      # 盤の行数
      s = i.size
      (0..s).each{|k|
        if k < s 
          k_size = i[k].size
          left_num = i[k][-1]
        else
          k_size = 0
          left_num = 0
        end
        if k == 0
          # 適当に大きな数字
          up_size = n + 2
          up_num = 0
        else
          up_size = i[k - 1].size
          up_num = i[k - 1][k_size]
        end
        if up_size > k_size
          ([left_num, up_num].max..n - sum).each{|m|
            j = Marshal.load(Marshal.dump(i))
            j << [] if k == s
            j[k] << m
            if m == n - sum
              ary << j if j.map{|x| x.size}.uniq.size == 1
            else
              b << j if i[0].inject(:+) * (k + 1) < n
            end
          }
        end
      }
    }
    a = b.uniq - a
    ary.uniq!
  end
  ary.uniq.size
end

(0..25).each{|i|
  print i
  print ' '
  puts A(i)
}