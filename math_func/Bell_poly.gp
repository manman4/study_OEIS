\\ 第２種スターリング数を多項式にしたものは、Touchard polynomialsもしくはBell polynomials　https://en.wikipedia.org/wiki/Touchard_polynomials
\\ ちなみにBell_polyと関係ないが、第１種スターリング数を多項式にしたものは　https://en.wikipedia.org/wiki/Falling_and_rising_factorials

Bell_poly(n, x) = exp(-x)*suminf(k=0, k^n*x^k/k!);

for(i=0, 10, print(round(Bell_poly(i, x))));
for(i=0, 10, print(Vec(round(Bell_poly(i, x)))));

\\ n次式のベル多項式の係数を求める
Bell_poly(n) = sum(k=0, n, stirling(n, k, 2)*x^k);

for(i=0, 10, print(round(Bell_poly(i))));
for(i=0, 10, print(Vecrev(round(Bell_poly(i)))));
