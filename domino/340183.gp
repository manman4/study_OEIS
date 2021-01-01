default(realprecision, 1000);
a(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*sin(j*Pi/(2*n))^2+4*sin(k*Pi/(2*n))^2+4*sin(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n), ", "))