default(realprecision, 1000);
T(n, k) = round(prod(a=1, n, prod(b=1, k, 4*sin(a*Pi/(2*n+1))^2+4*sin(b*Pi/(2*k+1))^2)));
for(n=0, 10, for(k=0, n, print1(T(k, n-k), ", ")))