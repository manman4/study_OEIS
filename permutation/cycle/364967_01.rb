def dif_cycle(ary, n)
  ary = [0] + ary
  max = 0
  min = n
  (1..n).each{|i|
    j = ary[i]
    cnt = 1
    while true
      break if j == i
      j = ary[j]
      cnt += 1
    end
    max = cnt if cnt > max
    min = cnt if cnt < min
  }
  max - min
end

def A364967(n)
  return [1] if n == 0
  ary = [0] * (n + 1)
  (1..n).to_a.permutation{|h|
    ary[dif_cycle(h, n)] += 1
  }
  ary
end

(0..8).each{|i| p A364967(i)}

