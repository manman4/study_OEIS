Bell_poly(n, x) = exp(-x)*suminf(k=0, k^n*x^k/k!);

for(i=0, 10, print(Vec(round(Bell_poly(i, x)))));

\\ n次式のベル多項式の係数を求める
Bell_poly(n) = sum(k=0, n, stirling(n, k, 2)*x^k);

for(i=0, 10, print(Vec(round(Bell_poly(i)))));
