M=15;

f(n) = n!^2;
a(n) = sum(k=0, n, f(k)*stirling(n, k, 2));
for(n=0, M, print1(a(n), ", "));
