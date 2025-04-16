M=15;

print("A086331")

f(n) = n^n;
a(n) = sum(k=0, n, binomial(n, k)*f(k));
for(n=0, M, print1(a(n), ", "));
