# sumdiv

## Sum_{k>=1} a(k) * x^k/(1 - x^k)　っぽいもの


| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A087909](https://oeis.org/A087909) | Sum_{d&#124;n} d^(n/d - 1)                | Sum_{k>=1}               x^k/(1 - k         * x^k) | 
| [A352944](https://oeis.org/A352944) | Sum_{k=0..floor(n/2)} (n-2 * k)^k         | Sum_{k>=0}               x^k/(1 - k         * x^2) | 
| [A352946](https://oeis.org/A352946) | Sum_{k=0..floor(n/3)} (n-3 * k)^k         | Sum_{k>=0}               x^k/(1 - k         * x^3) | 
| [A308688](https://oeis.org/A308688) | Sum_{d&#124;n} d^(2 * n/d - 1)            | Sum_{k>=1} k           * x^k/(1 - k^2       * x^k) | 
| [A055225](https://oeis.org/A055225) | Sum_{d&#124;n} d^(n/d)                    | Sum_{k>=1} k           * x^k/(1 - k         * x^k) | 
| [A073705](https://oeis.org/A073705) | Sum_{d&#124;n} d^(2 * n/d)                | Sum_{k>=1} k^2         * x^k/(1 - k^2       * x^k) | 
| [A078308](https://oeis.org/A078308) | Sum_{d&#124;n} d^(n/d + 1)                | Sum_{k>=1} k^2         * x^k/(1 - k         * x^k) | 
| [A294567](https://oeis.org/A294567) | Sum_{d&#124;n} d^(2 * n/d + 1)            | Sum_{k>=1} k^3         * x^k/(1 - k^2       * x^k) | 
| [A262843](https://oeis.org/A262843) | Sum_{d&#124;n} d^(d - 1)                  | Sum_{k>=1} k^(k-1)     * x^k/(1 -             x^k) | 
| [A359732](https://oeis.org/A359732) | Sum_{d&#124;n} d^(2 * d - 1)              | Sum_{k>=1} k^(2 * k-1) * x^k/(1 -             x^k) | 
| [A062796](https://oeis.org/A062796) | Sum_{d&#124;n} d^d                        | Sum_{k>=1} k^k         * x^k/(1 -             x^k) | 
| [A353009](https://oeis.org/A353009) | Sum_{k=0..floor(n/2)} (n-2 * k)^(n-2 * k) | Sum_{k>=0} k^k         * x^k/(1 -             x^2) | 
| [A353018](https://oeis.org/A353018) | Sum_{k=0..floor(n/3)} (n-3 * k)^(n-3 * k) | Sum_{k>=0} k^k         * x^k/(1 -             x^3) | 
| [A308696](https://oeis.org/A308696) | Sum_{d&#124;n} d^(2 * d)                  | Sum_{k>=1} k^(2 * k)   * x^k/(1 -             x^k) | 
| [A359701](https://oeis.org/A359701) | Sum_{d&#124;n} d^(d + n/d - 2)            | Sum_{k>=1} k^(k-1)     * x^k/(1 - k         * x^k) | 
| [A359700](https://oeis.org/A359700) | Sum_{d&#124;n} d^(d + n/d - 1)            | Sum_{k>=1} k^k         * x^k/(1 - k         * x^k) | 
| [A353013](https://oeis.org/A353013) | Sum_{k=0..floor(n/2)} (n-2 * k)^(n-    k) | Sum_{k>=0} k^k         * x^k/(1 - k         * x^2) | 
| [A353014](https://oeis.org/A353014) | Sum_{k=0..floor(n/3)} (n-3 * k)^(n-2 * k) | Sum_{k>=0} k^k         * x^k/(1 - k         * x^3) | 
| [A294956](https://oeis.org/A294956) | Sum_{d&#124;n} d^(d + n/d)                | Sum_{k>=1} k^(k+1)     * x^k/(1 - k         * x^k) | 
| [A359442](https://oeis.org/A359442) | Sum_{d&#124;n} d^(n + 1 - d - n/d)        | Sum_{k>=1}               x^k/(1 - k^(k-1)   * x^k) | 
| [A342629](https://oeis.org/A342629) | Sum_{d&#124;n} d^(n - n/d)                | Sum_{k>=1} k^(k-1)     * x^k/(1 - k^(k-1)   * x^k) | 
| [A342677](https://oeis.org/A342677) | Sum_{d&#124;n} d^(n - n/d + 1)            | Sum_{k>=1} k^k         * x^k/(1 - k^(k-1)   * x^k) | 
| [A342628](https://oeis.org/A342628) | Sum_{d&#124;n} d^(n - d)                  | Sum_{k>=1}               x^k/(1 - k^k       * x^k) | 
| [A342675](https://oeis.org/A342675) | Sum_{d&#124;n} d^(n - d + 1)              | Sum_{k>=1} k           * x^k/(1 - k^k       * x^k) | 
| [A353016](https://oeis.org/A353016) | Sum_{k=0..floor(n/2)} (n-2 * k)^(2 * k)   | Sum_{k>=0}               x^k/(1 - k^2       * x^2) | 
| [A353017](https://oeis.org/A353017) | Sum_{k=0..floor(n/3)} (n-3 * k)^(3 * k)   | Sum_{k>=0}               x^k/(1 - k^3       * x^3) | 
| [A082245](https://oeis.org/A082245) | Sum_{d&#124;n} d^(n - 1)                  | Sum_{k>=1} k^(k-1)     * x^k/(1 - k^k       * x^k) | 
| [A023887](https://oeis.org/A023887) | Sum_{d&#124;n} d^n                        | Sum_{k>=1} k^k         * x^k/(1 - k^k       * x^k) | 
| [A352082](https://oeis.org/A352082) | Sum_{k=0..floor(n/2)} (n-2 * k)^n         | Sum_{k>=0} k^k         * x^k/(1 - k^2       * x^2) | 
| [A353015](https://oeis.org/A353015) | Sum_{k=0..floor(n/3)} (n-3 * k)^n         | Sum_{k>=0} k^k         * x^k/(1 - k^3       * x^3) | 
| [A308570](https://oeis.org/A308570) | Sum_{d&#124;n} d^(2 * n)                  | Sum_{k>=1} k^(2 * k)   * x^k/(1 - k^(2 * k) * x^k) | 
| [A294645](https://oeis.org/A294645) | Sum_{d&#124;n} d^(n + 1)                  | Sum_{k>=1} k^(k+1)     * x^k/(1 - k^k       * x^k) | 


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

| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A081543](https://oeis.org/A081543) | Sum_{d&#124;n}               binomial(d+n/d-1, d) | Sum_{k>=1}       x^k /(1 -      x^k )^(k+1) | 
| [A360794](https://oeis.org/A360794) | Sum_{d&#124;n} d^(n/d-1)   * binomial(d+n/d-1, d) | Sum_{k>=1}       x^k /(1 -  k * x^k )^(k+1) | 
| [A360823](https://oeis.org/A360823) | Sum_{d&#124;n} d^(n/d)     * binomial(d+n/d-1, d) | Sum_{k>=1}   k * x^k /(1 -  k * x^k )^(k+1) | 
| [A360831](https://oeis.org/A360831) | Sum_{d&#124;n} d^n         * binomial(d+n/d-1, d) | Sum_{k>=1}  (k * x)^k/(1 - (k * x)^k)^(k+1) | 
| [A360948](https://oeis.org/A360948) | Sum_{d&#124;n} (n/d)^(d-1) * binomial(d+n/d-1, d) | Sum_{k>=1} (1/k) * (1/(1- k *  x^k )^k - 1) |
| [A338662](https://oeis.org/A338662) | Sum_{d&#124;n} (n/d)^d     * binomial(d+n/d-1, d) | Sum_{k>=1}         (1/(1- k *  x^k )^k - 1) |
| [A338663](https://oeis.org/A338663) | Sum_{d&#124;n} (n/d)^n     * binomial(d+n/d-1, d) | Sum_{k>=1}         (1/(1-(k * x)^k )^k - 1) |

## binomial(d, n/d-1)

| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A360726](https://oeis.org/A360726) | Sum_{d&#124;n} d^d       * binomial(d, n/d-1) | Sum_{k>=1} (k * x * (1 +      x^k) )^k | 
| [A327249](https://oeis.org/A327249) | Sum_{d&#124;n} d^(n/d-1) * binomial(d, n/d-1) | Sum_{k>=1} (    x * (1 +  k * x^k) )^k | 
| [A360732](https://oeis.org/A360732) | Sum_{d&#124;n} d^n       * binomial(d, n/d-1) | Sum_{k>=1} (k * x * (1 + (k * x)^k))^k | 

## binomial(d, n/d)

| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A318636](https://oeis.org/A318636) | Sum_{d&#124;n}            binomial(d, n/d) | Sum_{k>=1}        ((1 +      x^k )^k - 1) | 
| [A338694](https://oeis.org/A338694) | Sum_{d&#124;n}  d^d     * binomial(d, n/d) | Sum_{k>=1} k^k *  ((1 +      x^k )^k - 1) | 
| [A327238](https://oeis.org/A327238) | Sum_{d&#124;n}  d^(n/d) * binomial(d, n/d) | Sum_{k>=1}        ((1 +  k * x^k )^k - 1) | 
| [A338685](https://oeis.org/A338685) | Sum_{d&#124;n}  d^n     * binomial(d, n/d) | Sum_{k>=1}        ((1 + (k * x)^k)^k - 1) | 




## Sum_{k>=0} x^a^k/(1 - x^a^k)^b

A(x) = x/(1-x)^b + A(x^a)

| Number | a(n) | G.f. | 
| ----- | ----- | ----- | 
| [A001511](https://oeis.org/A001511) |        | Sum_{k>=0} x^2^k/(1 - x^2^k) | 
| [A051064](https://oeis.org/A051064) |        | Sum_{k>=0} x^3^k/(1 - x^3^k) | 




