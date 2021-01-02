default(realprecision, 1000);
a(n) = if(n==0, 1, round(4^((n-1)^2)*prod(j=1, n-1, prod(k=j+1, n-1, 1-(cos(j*Pi/(2*n))*cos(k*Pi/(2*n)))^2))));
for(n=0, 20, print1(a(n), ", "))