default(realprecision, 1000);
a(n) = round(4^((n-1)*n)*prod(j=1, n, prod(k=j+1, n, 1-(cos(j*Pi/(2*n+1))*cos(k*Pi/(2*n+1)))^2)));
for(n=0, 20, print1(a(n), ", "))