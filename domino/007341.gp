default(realprecision, 1000);
a(n) = round(prod(i=1, n-1, prod(j=1, n-1, 4*sin(i*Pi/(2*n))^2+4*sin(j*Pi/(2*n))^2)));
for(n=1, 20, print1(a(n), ", "))

\\  以下の式でも同じ結果であることを確認
b(n) = round(prod(i=1, n-1, prod(j=1, n-1, 4*cos(i*Pi/(2*n))^2+4*cos(j*Pi/(2*n))^2)));
for(n=1, 20, print1(a(n) == b(n), ", "))
c(n) = round(prod(i=1, n-1, prod(j=1, n-1, 4*sin(i*Pi/(2*n))^2+4*cos(j*Pi/(2*n))^2)));
for(n=1, 20, print1(a(n) == c(n), ", "))
