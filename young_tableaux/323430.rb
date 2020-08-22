def A(n)
  return 1 if n < 2
  a = []
  ary = [[[n]]]
  (1..n - 1).each{|i| a << [[i]]}
  while a.size > 0
    b = []
    a.each{|i|
      sum = i.flatten.inject(:+)
      s = i.size
      (0..s).each{|k|
        if k == 0
          (i[0][-1] + 1..n - sum).each{|m| 
            j = Marshal.load(Marshal.dump(i))
            j[0] << m
            if m == n - sum
              ary << j if j.map{|x| x.size}.uniq.size == 1
            else
              b << j
            end
          }
        elsif k < s
          k_size = i[k].size
          if i[k - 1].size > k_size
            ([i[k][-1], i[k - 1][k_size]].max + 1..n - sum).each{|m|
              j = Marshal.load(Marshal.dump(i))
              j[k] << m
              if m == n - sum
                ary << j if j.map{|x| x.size}.uniq.size == 1
              else
                b << j if j.map{|y| y[0]}.inject(:+) * j[0].size < n && j[0].inject(:+) * (k + 1) < n
              end
            }
          end
        else
          (i[s - 1][0] + 1..n - sum).each{|m| 
            j = Marshal.load(Marshal.dump(i))
            j << [m]
            if m == n - sum
              ary << j if j.map{|x| x.size}.uniq.size == 1
            else
              b << j if j.map{|y| y[0]}.inject(:+) * j[0].size < n && j[0].inject(:+) * (k + 2) < n
            end
          }
        end
      }
    }
    a = b.uniq - a
    # p [n, a.size]
    ary.uniq!
  end
  ary.uniq.size
end

(0..50).each{|i|
  print i
  print ' '
  puts A(i)
}