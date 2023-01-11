# sumdiv

## Sum_{k>=1} a(k) * x^k/(1 - x^k)　っぽいもの


| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A087909](https://oeis.org/A087909) | Sum_{d&#124;n} d^(n/d - 1)                | Sum_{k>=1}           x^k/(1 - k * x^k) | 
| [A055225](https://oeis.org/A055225) | Sum_{d&#124;n} d^(n/d)                    | Sum_{k>=1} k       * x^k/(1 - k * x^k) | 
| [A078308](https://oeis.org/A078308) | Sum_{d&#124;n} d^(n/d + 1)                | Sum_{k>=1} k^2     * x^k/(1 - k * x^k) | 
| [A062796](https://oeis.org/A062796) | Sum_{d&#124;n} d^d                        | Sum_{k>=1} k^k     * x^k/(1 -     x^k) | 
| [A359701](https://oeis.org/A359701) | Sum_{d&#124;n} d^(d + n/d - 2)            | Sum_{k>=1} k^(k-1) * x^k/(1 - k * x^k) | 
| [A359700](https://oeis.org/A359700) | Sum_{d&#124;n} d^(d + n/d - 1)            | Sum_{k>=1} k^k     * x^k/(1 - k * x^k) | 
| [A294956](https://oeis.org/A294956) | Sum_{d&#124;n} d^(d + n/d)                | Sum_{k>=1} k^(k+1) * x^k/(1 - k * x^k) | 
| [A353013](https://oeis.org/A353013) | Sum_{k=0..floor(n/2)} (n-2 * k)^(n-    k) | Sum_{k>=0} k^k     * x^k/(1 - k * x^2) | 
| [A353014](https://oeis.org/A353014) | Sum_{k=0..floor(n/3)} (n-3 * k)^(n-2 * k) | Sum_{k>=0} k^k     * x^k/(1 - k * x^3) | 


## binomial(d+n/d-2, d-1)

| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A157019](https://oeis.org/A157019) | Sum_{d&#124;n}                 binomial(d+n/d-2, d-1) | Sum_{k>=1}      (x/(1-     x^k) )^k | 
| [A157020](https://oeis.org/A157020) | Sum_{d&#124;n} d             * binomial(d+n/d-2, d-1) | Sum_{k>=1}  k * (x/(1-     x^k) )^k | 
| [A343573](https://oeis.org/A343573) | Sum_{d&#124;n} d^ d          * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1-     x^k) )^k | 
| [A324158](https://oeis.org/A324158) | Sum_{d&#124;n} d^(  n/d-1)   * binomial(d+n/d-2, d-1) | Sum_{k>=1}      (x/(1- k * x^k) )^k | 
| [A324159](https://oeis.org/A324159) | Sum_{d&#124;n} d^(  n/d)     * binomial(d+n/d-2, d-1) | Sum_{k>=1}  k * (x/(1- k * x^k) )^k |
| [A339712](https://oeis.org/A339712) | Sum_{d&#124;n} d^(d+n/d-1)   * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1- k * x^k) )^k |
| [A339481](https://oeis.org/A339481) | Sum_{d&#124;n} d^(  n  -d)   * binomial(d+n/d-2, d-1) | Sum_{k>=1}      (x/(1-(k * x)^k))^k | 
| [A339482](https://oeis.org/A339482) | Sum_{d&#124;n} d^(  n  -d+1) * binomial(d+n/d-2, d-1) | Sum_{k>=1}  k * (x/(1-(k * x)^k))^k |
| [A338661](https://oeis.org/A338661) | Sum_{d&#124;n} d^   n        * binomial(d+n/d-2, d-1) | Sum_{k>=1} (k *  x/(1-(k * x)^k))^k | 


## binomial(d+n/d-1, d)

| Number | a(n) | G.f. | G.f. |
| ----- | ----- | ----- | ----- | 
| [A081543](https://oeis.org/A081543) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | Sum_{k>=1}     x^k/(1-x^k)^(k+1) | Sum_{k>=1} (1/(1-      x^k)^k - 1) |
| [A338662](https://oeis.org/A338662) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | -------------------------------- | Sum_{k>=1} (1/(1- k *  x^k)^k - 1) |
| [A338663](https://oeis.org/A338663) | Sum_{d&#124;n}       binomial(d+n/d-1, d) | -------------------------------- | Sum_{k>=1} (1/(1-(k * x)^k)^k - 1) |
