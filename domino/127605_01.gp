default(realprecision, 1000);
a(n) = round(prod(i=1, n, prod(j=1, n, 4*sin(i*Pi/(2*n+1))^2+4*sin(j*Pi/(2*n+1))^2)));
for(n=0, 20, print1(a(n), ", "))

\\ A340052
for(n=0, 20, print1((a(n)/((2*n+1)*2^n))^(1/2), ", "))