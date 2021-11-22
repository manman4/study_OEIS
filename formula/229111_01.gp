a(n) = sum(k=0, n-1, (-1)^k*binomial(n-1, k)^3*binomial(5*k-(n-1), 3*(n-1)));
for(n=1, 20, print1(a(n), ", "))
