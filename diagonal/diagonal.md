# diagonal


| A-number | diagonal | formula | description | check |
| -------- | -------- | ------- | ----------- | ------ |
| [A084601](https://oeis.org/A084601) | 1 / (1 - 2*x^2 - y^2 - x*y) | | | |
| [A002457](https://oeis.org/A002457) | 1 / (1 - x - y)^2 |  | | |
| [A007744](https://oeis.org/A007744) | 1 / (1 - x - y)^4 | a(n) = binomial(2n+3,n) * binomial(n+3,3) | | |
| [A106440](https://oeis.org/A106440) | 1 / (1 - x - y)^5 | a(n) = binomial(2n+4,n) * binomial(n+4,4) | | |
| [A331322](https://oeis.org/A331322) | 1 / (1 - x - y - z)^2 | a(n) = (3*n + 1)!/(n!)^3 | | |
| [A098658](https://oeis.org/A098658) | 1 / (1 - 3*x - y) | a(n) = 3^n*(2*n)!/(n!)^2 | | |
| [A098430](https://oeis.org/A098430) | 1 / (1 - 4*x - y) | a(n) = 4^n*(2*n)!/(n!)^2 | | |
| [A054440](https://oeis.org/A054440) | a(n) = [(x*y)^n] Product_{k>=1} (1 + x^k / (1 - x^k) + y^k / (1 - y^k)) | | |  
| [A278405](https://oeis.org/A278405) | 1 / ((1 + x)*(1 - x)*(1 - y)*(1 - z) - x*y*z) | | | |
| [A192369](https://oeis.org/A192369) | 1 / (1 - x - y - x^2 - y^2 - (x*y)^2) | | | |
| [A192365](https://oeis.org/A192365) | 1 / (1 - x - y - x^2 - y^2 - x*y - (x*y)^2) | | | |
| [A122680](https://oeis.org/A122680) | 1 / (1 - x - y - x^2 - y^2 - x^3 - y^3) | | | |
| [A000172](https://oeis.org/A000172) | 1 / ((1-x)*(1-y)*(1-z) - x*y*z)   | a(n) = Sum_{k=0..n} binomial(n,k)^3       | | |
| [A206178](https://oeis.org/A206178) | 1 / ((1-x)*(1-y)*(1-z) - 2*x*y*z) | a(n) = Sum_{k=0..n} binomial(n,k)^3 * 2^k | | 1/(1 - x - y - z + x*y + y*z + x*z - 3*x*y*z)と同じ |
| [A206180](https://oeis.org/A206180) | 1 / ((1-x)*(1-y)*(1-z) - 3*x*y*z) | a(n) = Sum_{k=0..n} binomial(n,k)^3 * 3^k | | |
| [A216483](https://oeis.org/A216483) | 1 / ((1-x)*(1-y)*(1-z) - 4*x*y*z) | a(n) = Sum_{k=0..n} binomial(n,k)^3 * 4^k | | |
| [A216636](https://oeis.org/A216636) | 1 / ((1-x)*(1-y)*(1-z) - 5*x*y*z) | a(n) = Sum_{k=0..n} binomial(n,k)^3 * 5^k | | |
| [A108488](https://oeis.org/A108488) | 1 / ((1 - x)*(1 - y) - 2*(x*y)^2) | | | |
| [A051286](https://oeis.org/A051286) | 1 / ((1 - x)*(1 - y) - (x*y)^2)                               | | | |
| [A181545](https://oeis.org/A181545) | 1 / ((1 - x)*(1 - y)*(1 - z) - (x*y*z)^2)                     | | | |
| [A181546](https://oeis.org/A181546) | 1 / ((1 - x)*(1 - y)*(1 - z)*(1 - w) - (x*y*z*w)^2)           | | | | 
| [A181547](https://oeis.org/A181547) | 1 / ((1 - x)*(1 - y)*(1 - z)*(1 - u)*(1 - v) - (x*y*z*u*v)^2) | | | |
| [A246840](https://oeis.org/A246840) | 1 / ((1 - x)*(1 - y) - (x*y)^3)           | | | |
| [A248658](https://oeis.org/A248658) | 1 / ((1 - x)*(1 - y)*(1 - z) - (x*y*z)^3) | | | |
| [A275027](https://oeis.org/A275027) | 1 / ((1 - x)*(1 - y)*(1 - z) - x^2*y*z)   | | | |
| [A381482](https://oeis.org/A381482) | 1 / ((1 - x)*(1 - y)*(1 - z) - 2*x^2*y*z) | | | |
| [A349713](https://oeis.org/A349713) | 1 / (1 - x - y - (x*y)^2)     | | | | 
| [A002426](https://oeis.org/A002426) | 1 / (1 - x^2 - y^2 - x*y)     | | | |
| [A182883](https://oeis.org/A182883) | 1 / (1 - x^3 - y^3 - (x*y)^2) | | | |
| [A084603](https://oeis.org/A084603) | 1 / (1 - 3*x^2 - y^2 - x*y)   | | | |
| [A344560](https://oeis.org/A344560) | 1 / (1 - x^3 - y^3 - z^3 - x*y*z) | | | |
| [A082488](https://oeis.org/A082488) | 1 / (1 - x - y - z - w - x*y*z*w)              | | Columns k=4 of A229142 | checked |
| [A082489](https://oeis.org/A082489) | 1 / (1 - x - y - z - u - v - x*y*z*u*v)        | | Columns k=5 of A229142 | checked |
| [A229049](https://oeis.org/A229049) | 1 / (1 - x - y - z - u - v - w - x*y*z*u*v*w)  | | Columns k=6 of A229142 | checked |




