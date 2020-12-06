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

## list

| Number | ary([[x_1, y_1], [x_2, y_2], ...]) |
| ----- | ----- | 
| A000122 | [[2, 5], [1, -2], [4, -2]] |
| A002448 | [[1, 2], [2, -1]] |
| A010054 | [[2, 2], [1, -1]] |
| A010815 | [[1, 1]] |
| A080995 | [[2, 1], [3, 2], [1, -1], [6, -1]] |
| A089801 | [[2, 2], [3, 1], [12, 1], [1, -1], [4, -1], [6, -1]] |
| A089802 | [[1, 1], [6, 2], [2, -1], [3, -1]] |
| A089807 | [[1, 1], [4, 1], [6, 2], [2, -1], [3, -1], [12, -1]] |
| A089810 | [[2, 2], [3, 1], [1, -1], [6, -1]] |
| A089812 | [[1, 2], [6, 1], [2, -1], [3, -1]] |
| A106459 | [[1, 1], [4, 1], [2, -1]] |
| A121373 | [[2, 3], [1, -1], [4, -1]] |
| A133985 | [[1, 1], [4, 1], [6, 5], [2, -2], [3, -2], [12, -2]] |
| A133988 | [[2, 5], [3, 1], [12, 1], [1, -2], [4, -2], [6, -2]] |

