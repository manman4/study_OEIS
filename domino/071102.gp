default(realprecision, 1000);
a340291(n) = round(4^(2*n^2)*prod(j=1, n, prod(k=1, n, 1-(cos(j*Pi/(2*n+1))*cos(k*Pi/(2*n+1)))^2)));
a340166(n) = round(4^(2*(n-1)^2)*prod(j=1, n-1, prod(k=1, n, 1-(cos(j*Pi/(2*n))*cos(k*Pi/(2*n)))^2)));
a(n) = if(n%2==1, a340291((n-1)/2), 2*4^(n-2)*a340166(n/2))
for(n=1, 10, print1(a(n), ", "))