# sumdiv

Sum_{k>=1} a(k) * x^k/(1 - x^k) っぽいもの

## binomial(d+n/d-2, d-1)

| Number | a(n) | G.f. | 重複 |
| ----- | ----- | ----- | ----- | 
| [A157019](https://oeis.org/A157019) | Sum_{d&#124;n}           binomial(d+n/d-2, d-1) | Sum_{k>=1}      (x/(1-x^k))^k       | 有 |
| [A157020](https://oeis.org/A157020) | Sum_{d&#124;n}     d   * binomial(d+n/d-2, d-1) | Sum_{k>=1}  k * (x/(1-x^k))^k       | 無 |
| [A343573](https://oeis.org/A343573) | Sum_{d&#124;n}     d^d * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1-x^k))^k       | 無 |
| [A338661](https://oeis.org/A338661) | Sum_{d&#124;n}     d^n * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1-(k * x)^k))^k | 有 |
| [A157019](https://oeis.org/A157019) | Sum_{d&#124;n}           binomial(d+n/d-2, d-1) | Sum_{k>=1}      (x/(1-x^k))^k       | 有 |
| [A324159](https://oeis.org/A324159) | Sum_{d&#124;n} (n/d)^d * binomial(d+n/d-2, d-1) | Sum_{k>=1}  k * (x/(1- k * x^k) )^k | 無 |
| [A338661](https://oeis.org/A338661) | Sum_{d&#124;n} (n/d)^n * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1-(k * x)^k))^k | 有 |

## binomial(d+n/d-1, d)

| Number | a(n) | G.f. | G.f. |
| ----- | ----- | ----- | ----- | 
| [A081543](https://oeis.org/A081543) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | Sum_{k>=1}     x^k/(1-x^k)^(k+1) | Sum_{k>=1} (1/(1-      x^k)^k - 1) |
| [A338662](https://oeis.org/A338662) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | -------------------------------- | Sum_{k>=1} (1/(1- k *  x^k)^k - 1) |
| [A338663](https://oeis.org/A338663) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | -------------------------------- | Sum_{k>=1} (1/(1-(k * x)^k)^k - 1) |
