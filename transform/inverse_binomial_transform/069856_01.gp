M=15;

print("A069856")

f(n) = n^n;
a(n) = sum(k=0, n, (-1)^(n-k)*binomial(n, k)*f(k));
for(n=0, M, print1(a(n), ", "));
