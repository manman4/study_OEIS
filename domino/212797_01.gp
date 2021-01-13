default(realprecision, 1000);
a(n) = round(n*2^(2*n-1)*prod(k=1, n-1, 1+sin(k*Pi/n)^2));
for(n=1, 20, print1(a(n), ", "))