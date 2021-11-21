def A(n)
  f_ary = [[n]]
  cnt = 1
  while f_ary.size > 0
    b_ary = []
    f_ary.each{|i|
      s = i.size
      (1..i[0] - 1).each{|j|
        a = [j]
        (0..s - 1).each{|k|
          num = i[k] - a[k]
          if num > 0
            a << num
          else
            break
          end
        }
        b_ary << a if a.size == s + 1
      }
    }
    f_ary = b_ary
    cnt += f_ary.size
  end
  cnt
end

def A062684(n)
  (1..n).map{|i| A(i)}
end

p A062684(50)
