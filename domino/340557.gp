default(realprecision, 1000);
a(n) = round(prod(j=1, n, prod(k=1, n, 4*sin((4*j-1)*Pi/(4*n))^2+4*sin((2*k-1)*Pi/(2*n))^2)));
for(n=0, 20, print1(a(n), ", "))