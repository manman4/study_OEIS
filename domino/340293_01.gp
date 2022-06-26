default(realprecision, 1000);
a(n) = round(4^((n-1)*n)*prod(j=1, n, prod(k=j+1, n, 1-(sin(j*Pi/(2*n+1))*sin(k*Pi/(2*n+1)))^2)));
for(n=0, 20, print1(a(n), ", "))