default(realprecision, 1000);
a(n) = round(4^(2*n^2)*prod(j=1, n, prod(k=1, n, 1-(sin(j*Pi/(2*n+1))*cos(k*Pi/(2*n+1)))^2)));
for(n=0, 20, print1(a(n), ", "))

a001570(n) = real((2+quadgen(12))^(2*n-1))/2;
\\ 以下は整数
for(n=0, 20, print1(a(n)/a001570(n+1), ", "))