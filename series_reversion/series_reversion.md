# Series Reversion

## Series_Reversion の計算について

ラグランジュの反転公式より

A(x) = (1/x) * Series_Reversion( x * f(x) )　を母関数にもつ数列　

a(n) = (1/(n+1)) * [x^n] (1/f(x))^(n+1).

数列 b(n) = [x^n] (1/f(x))^n を考えると、

A(x) = exp( Sum_{k>=1} b(k) * x^k/k ).

ex) [A182401](https://oeis.org/A182401)

G.f.: (1/x) * Series_Reversion( x / (1+5*x+x^2) ).

A182401(n) = (1/(n+1)) * [x^n] (1+5*x+x^2)^(n+1).

A098409(n) = [x^n] (1+5*x+x^2)^n を考えると、

G.f.: (1/x) * Series_Reversion( x / (1+5*x+x^2) ) = exp( Sum_{k>=1} A098409(k) * x^k/k ).


(参考)

https://atcoder.jp/contests/abc222/editorial/2742

https://oeis.org/A251592/a251592.pdf


## (1/x) * Series_Reversion( x * f(x) )

Offset の違いは無視する。

### x * (1-x)^u * (1-x-x^s)^t

| 番号 | [s,t,u] | x * f(x) |
|----- | ----- | ----- | 
| [A046736](https://oeis.org/A046736) | [2, 1,-1] | x / (1-x)   * (1-x-x^2)   |
| [A054514](https://oeis.org/A054514) | [3, 1,-1] | x / (1-x)   * (1-x-x^3)   |
| [A215342](https://oeis.org/A215342) | [4, 1,-1] | x / (1-x)   * (1-x-x^4)   |
| [A366112](https://oeis.org/A366112) | [5, 1,-1] | x / (1-x)   * (1-x-x^5)   |
| [A001002](https://oeis.org/A001002) | [2, 1, 0] | x *           (1-x-x^2)   |
| [A049140](https://oeis.org/A049140) | [3, 1, 0] | x *           (1-x-x^3)   |
| [A368961](https://oeis.org/A368961) | [2, 2, 0] | x *           (1-x-x^2)^2 |
| [A368962](https://oeis.org/A368962) | [3, 2, 0] | x *           (1-x-x^3)^2 |
| [A368963](https://oeis.org/A368963) | [2, 3, 0] | x *           (1-x-x^2)^3 |
| [A368964](https://oeis.org/A368964) | [3, 3, 0] | x *           (1-x-x^3)^3 |
| [A108623](https://oeis.org/A108623) | [2,-1, 1] | x * (1-x)   / (1-x-x^2)   |
| [A243157](https://oeis.org/A243157) | [3,-1, 1] | x * (1-x)   / (1-x-x^3)   |
| [A368965](https://oeis.org/A368965) | [2, 2, 1] | x * (1-x)   * (1-x-x^2)^2 |
| [A368966](https://oeis.org/A368966) | [3, 2, 1] | x * (1-x)   * (1-x-x^3)^2 |
| [A368967](https://oeis.org/A368967) | [2, 2, 2] | x * (1-x)^2 * (1-x-x^2)^2 |
| [A368968](https://oeis.org/A368968) | [3, 2, 2] | x * (1-x)^2 * (1-x-x^3)^2 |
| [A366081](https://oeis.org/A366081) | [2,-1, 2] | x * (1-x)^2 / (1-x-x^2)   |
| [A049133](https://oeis.org/A049133) | [3,-1, 2] | x * (1-x)^2 / (1-x-x^3)   |
| [A366082](https://oeis.org/A366082) | [2,-1, 3] | x * (1-x)^3 / (1-x-x^2)   |
| [A366084](https://oeis.org/A366084) | [3,-1, 3] | x * (1-x)^3 / (1-x-x^3)   |
| [A366089](https://oeis.org/A366089) | [4,-1, 3] | x * (1-x)^3 / (1-x-x^4)   |
| [A366083](https://oeis.org/A366083) | [2,-1, 4] | x * (1-x)^4 / (1-x-x^2)   |
| [A366085](https://oeis.org/A366085) | [3,-1, 4] | x * (1-x)^4 / (1-x-x^3)   |
| [A366090](https://oeis.org/A366090) | [4,-1, 4] | x * (1-x)^4 / (1-x-x^4)   |


### x * (1-x)^u * (1-x+x^s)^t

| 番号 | [s,t,u] | x * f(x) |
|----- | ----- | ----- | 
| [A368969](https://oeis.org/A368969) | [2, 2, 0] | x *           (1-x+x^2)^2 |
| [A368970](https://oeis.org/A368970) | [3, 2, 0] | x *           (1-x+x^3)^2 |
