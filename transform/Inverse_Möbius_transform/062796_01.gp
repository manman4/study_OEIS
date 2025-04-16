M=15;

print("A062796")

f(n) = n^n;
a(n) = sumdiv(n, d, f(d));
for(n=1, M, print1(a(n), ", "));
