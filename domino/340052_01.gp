default(realprecision, 120);
a(n) = round(prod(j=2, n, prod(i=1, j-1, 4*sin(i*Pi/(2*n+1))^2+4*sin(j*Pi/(2*n+1))^2)));
for(n=0, 20, print1(a(n), ", "))