\\ 第２種はTouchard polynomialsもしくはBell polynomials　https://en.wikipedia.org/wiki/Touchard_polynomials
\\ 第１種は　https://en.wikipedia.org/wiki/Falling_and_rising_factorials

Bell_poly(n, x) = exp(-x)*suminf(k=0, k^n*x^k/k!);

for(i=0, 10, print(Vec(round(Bell_poly(i, x)))));

\\ n次式のベル多項式の係数を求める
Bell_poly(n) = sum(k=0, n, stirling(n, k, 2)*x^k);

for(i=0, 10, print(Vec(round(Bell_poly(i)))));
