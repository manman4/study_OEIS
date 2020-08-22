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
        if k == 0
          left_num = i[k][-1]
          if left_num <= n - sum
            j = Marshal.load(Marshal.dump(i))
            j[0] << left_num
            if left_num == n - sum
              ary << j
            else
              b << j
            end
          end
        elsif k < s
          k_size = i[k].size
          if i[k - 1].size > k_size
            left_num = i[k][-1]
            if left_num <= n - sum
              j = Marshal.load(Marshal.dump(i))
              j[k] << left_num
              if left_num == n - sum
                ary << j
              else
                b << j
              end
            end
          end
        else
          (i[s - 1][0]..n - sum).each{|m|
            j = Marshal.load(Marshal.dump(i))
            j << [m]
            if m == n - sum
              ary << j
            else
              b << j
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

b = []
(0..40).each{|i|
  j = A(i)
  p j
  b << j
}
p b