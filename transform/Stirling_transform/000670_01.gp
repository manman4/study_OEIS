M=15;

f(n) = n!;
a(n) = sum(k=0, n, f(k)*stirling(n, k, 2));
for(n=0, M, print1(a(n), ", "));
