default(realprecision, 1000);
a(n) = round(4^(2*(n-1)*n)*prod(j=1, n-1, prod(k=1, n-1, 1-(sin(j*Pi/(2*n))*sin(k*Pi/(2*n)))^2)));
for(n=1, 20, print1(a(n), ", "))