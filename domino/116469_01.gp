default(realprecision, 1000);
T(n, k) = round(prod(a=1, n-1, prod(b=1, k-1, 4*sin(a*Pi/(2*n))^2+4*sin(b*Pi/(2*k))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k), ", ")))

\\ 以下の式でも同じ結果であることを確認
U(n, k) = round(prod(a=1, n-1, prod(b=1, k-1, 4*cos(a*Pi/(2*n))^2+4*cos(b*Pi/(2*k))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k) == U(k, n-k), ", ")))
V(n, k) = round(prod(a=1, n-1, prod(b=1, k-1, 4*sin(a*Pi/(2*n))^2+4*cos(b*Pi/(2*k))^2)));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k) == V(k, n-k), ", ")))
