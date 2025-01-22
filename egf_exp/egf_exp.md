# E.g.f. 1/(1 - f(x)) and e.g.f. exp(f(x))

数列a(n) のe.g.f. が exp(f(x)) であり、

数列b(n) のe.g.f. f(x) であるとき、

*a(n) = Sum_{k=1..n} b(k) * binomial(n-1,k-1) * a(n-k).*

数列a(n) のe.g.f. が 1/(1 - f(x)) であり、

数列b(n) のe.g.f. f(x) であるとき、

a(n) = Sum_{k=1..n} b(k) * binomial(n,k) * a(n-k).


| Number | e.g.f. 1/(1 - f(x)) | Number | E.g.f. exp(f(x)) |
| ----- | ----- | ----- | ----- | 
| [A006154](https://oeis.org/A006154) | 1/(1 -     sinh(x)) | [A003724](https://oeis.org/A003724) | exp(    sinh(x)) | 
| [A000557](https://oeis.org/A000557) | 1/(1 - 2 * sinh(x)) | [A352279](https://oeis.org/A352279) | exp(2 * sinh(x)) | 
