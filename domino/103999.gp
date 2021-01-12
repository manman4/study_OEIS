default(realprecision, 1000);
T(n, k) = round(prod(a=1, n, prod(b=1, k, 4*sin((4*a-1)*Pi/(4*n))^2+4*sin((2*b-1)*Pi/(2*k))^2)));
for(n=0, 10, for(k=0, n, print1(T(k, n-k), ", ")))