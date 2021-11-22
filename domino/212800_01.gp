default(realprecision, 1000);
T(n, k) = round(n*k*prod(a=1, n-1, prod(b=1, k-1, 4*sin(a*Pi/n)^2+4*sin(b*Pi/k)^2)));
for(n=1, 20, print1(T(n, n), ", "))