# T(n,k) = (n!/k!) * Sum_{i_1,i_2,...,i_k > 0 and i_1+i_2+...+i_k=n} Product_{j=1..k} d(i_j).

def sigma(x, n)
  s = 0
  (1..n).each{|i|
    s += i ** x if n % i == 0
  }
  s
end

def f(n)
  return 1 if n < 2
  (1..n).inject(:*)
end

def A(n, k)
  sum = 0
  (1..n).to_a.repeated_permutation(k){|i|
    sum += i.map{|j| sigma(0, j)}.inject(:*) if i.inject(:+) == n
  }
  f(n) / f(k) * sum
end

n = 8
p (1..n).map{|i| (1..i).map{|j| A(i, j)}}.flatten