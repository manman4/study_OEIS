default(realprecision, 1000);
a(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*sin(j*Pi/(2*n))^2+4*sin(k*Pi/(2*n))^2+4*sin(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n), ", "))

\\ 以下の式でも同じ結果であることを確認
b(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*sin(j*Pi/(2*n))^2+4*sin(k*Pi/(2*n))^2+4*cos(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == b(n), ", "))
c(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*sin(j*Pi/(2*n))^2+4*cos(k*Pi/(2*n))^2+4*sin(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == c(n), ", "))
d(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*sin(j*Pi/(2*n))^2+4*cos(k*Pi/(2*n))^2+4*cos(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == d(n), ", "))
e(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*cos(j*Pi/(2*n))^2+4*sin(k*Pi/(2*n))^2+4*sin(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == e(n), ", "))
f(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*cos(j*Pi/(2*n))^2+4*sin(k*Pi/(2*n))^2+4*cos(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == f(n), ", "))
g(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*cos(j*Pi/(2*n))^2+4*cos(k*Pi/(2*n))^2+4*sin(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == g(n), ", "))
h(n) = round(prod(j=1, n-1, prod(k=1, n-1, prod(m=1, n-1, 4*cos(j*Pi/(2*n))^2+4*cos(k*Pi/(2*n))^2+4*cos(m*Pi/(2*n))^2))));
for(n=1, 10, print1(a(n) == h(n), ", "))

\\ 以下は整数
for(n=1, 10, print1((a(n)/(n*3^(n-1)))^(1/3), ", "))