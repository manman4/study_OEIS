default(realprecision, 1000);
T(n, k) = round(sqrt(prod(a=1, n-1, prod(b=1, k-1, 4*sin(a*Pi/n)^2+4*cos(b*Pi/k)^2))));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k), ", ")))