Bell_poly(n, x) = exp(-x)*suminf(k=0, k^n*x^k/k!);

for(i=0, 10, print(Vec(round(Bell_poly(i, x)))));
