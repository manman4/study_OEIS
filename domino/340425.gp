default(realprecision, 1000);
T(n, k) = round(4^(2*n*k-n-k)*prod(a=1, n-1, prod(b=1, k-1, 1-(sin(a*Pi/(2*n))*sin(b*Pi/(2*k)))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k), ", ")))

\\ 以下の式でも同じ結果であることを確認
U(n, k) = round(4^(2*n*k-n-k)*prod(a=1, n-1, prod(b=1, k-1, 1-(cos(a*Pi/(2*n))*cos(b*Pi/(2*k)))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k) == U(k, n-k), ", ")))
V(n, k) = round(4^(2*n*k-n-k)*prod(a=1, n-1, prod(b=1, k-1, 1-(sin(a*Pi/(2*n))*cos(b*Pi/(2*k)))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k) == V(k, n-k), ", ")))