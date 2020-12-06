# Eta product

Euler transform の応用でEta product に関する様々な数列が求められる。

コードもGeneralized Euler transformと似ている。

## 比較

- Generalized Euler transform

```Ruby:Generalized Euler transform
def s(f_ary, g_ary, n)
  s = 0
  (1..n).each{|i| s += i * f_ary[i] * g_ary[i] ** (n / i) if n % i == 0}
  s
end

def A(ary, n)
  a_ary = [1]
  a = [0] + (1..n).map{|i| ary.inject(0){|s, j| s + s(j[0], j[1], i)}}
  (1..n).each{|i| a_ary << (1..i).inject(0){|s, j| s + a[j] * a_ary[-j]} / i}
  a_ary
end

n = XX
ary1 = XX
ary2 = XX
ary3 = XX


p A([[ary1, ary2], ...], n)
```

- Eta product

```Ruby:Eta product
def s(k, n)
  s = 0
  (1..n).each{|i| s += i if n % i == 0 && i % k == 0}
  s
end

def A(ary, n)
  a_ary = [1]
  a = [0] + (1..n).map{|i| ary.inject(0){|s, j| s + j[1] * s(j[0], i)}}
  (1..n).each{|i| a_ary << (1..i).inject(0){|s, j| s - a[j] * a_ary[-j]} / i}
  a_ary
end

n = XX

p A([[a, b], ...], n)
```
