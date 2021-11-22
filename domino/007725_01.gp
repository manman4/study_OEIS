default(realprecision, 1000);
a(n) = if(n==0, 1, round(4^(2*(n-1)*n+1)*prod(j=1, n-1, prod(k=1, n-1, 1-(sin(j*Pi/(2*n))*sin(k*Pi/(2*n)))^2))));
for(n=0, 20, print1(a(n), ", "))

\\ 以下の式でも同じ結果であることを確認
b(n) = if(n==0, 1, round(4^(2*(n-1)*n+1)*prod(j=1, n-1, prod(k=1, n-1, 1-(cos(j*Pi/(2*n))*cos(k*Pi/(2*n)))^2))));
for(n=0, 20, print1(a(n) == b(n), ", "))
c(n) = if(n==0, 1, round(4^(2*(n-1)*n+1)*prod(j=1, n-1, prod(k=1, n-1, 1-(sin(j*Pi/(2*n))*cos(k*Pi/(2*n)))^2))));
for(n=0, 20, print1(a(n) == c(n), ", "))