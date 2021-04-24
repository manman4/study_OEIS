# sumdiv

Lambert級数

Sum_{k>=1} a(k) * x^k/(1 - x^k)

っぽいもの

## binomial(d+n/d-2, d-1)

| Number | a(n) | G.f. |
| ----- | ----- | ----- | 
| [A157019](https://oeis.org/A157019) | a(n) = Sum_{d&#124;n}       binomial(d+n/d-2, d-1) | Sum_{k>=1}     (x/(1-x^k))^k |
| [A157020](https://oeis.org/A157020) | a(n) = Sum_{d&#124;n} d   * binomial(d+n/d-2, d-1) | Sum_{k>=1} k * (x/(1-x^k))^k |
| [A343573](https://oeis.org/A343573) | a(n) = Sum_{d&#124;n} d^d * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k * x/(1-x^k))^k |
