default(realprecision, 1000);
a(n) = round(prod(j=1, n, prod(k=1, n, prod(m=1, n, 4*cos(j*Pi/(2*n+1))^2+4*cos(k*Pi/(2*n+1))^2+4*cos(m*Pi/(2*n+1))^2))));
for(n=0, 10, print1(a(n), ", "))