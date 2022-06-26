default(realprecision, 1000);
a(n) = round(4^((n-2)*(n-1))*prod(j=2, n-1, prod(i=1, j-1, 1-(sin(i*Pi/(2*n))*sin(j*Pi/(2*n)))^2)));
for(n=1, 20, print1(a(n), ", "))

\\ 以下の式でも同じ結果であることを確認
b(n) = round(4^((n-2)*(n-1))*prod(j=2, n-1, prod(i=1, j-1, 1-(cos(i*Pi/(2*n))*cos(j*Pi/(2*n)))^2)));
for(n=1, 20, print1(a(n) == b(n), ", "))