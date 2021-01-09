default(realprecision, 1000);
T(n, k) = round(prod(a=1, n-1, prod(b=1, k-1, 4*sin(a*Pi/(2*n))^2+4*sin(b*Pi/(2*k))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k), ", ")))