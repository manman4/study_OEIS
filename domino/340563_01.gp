default(realprecision, 1000);
a(n) = round(sqrt(prod(j=1, n-1, prod(k=1, n-1, 4*sin(j*Pi/n)^2+4*cos(k*Pi/n)^2))));
for(n=0, 20, print1(a(n), ", "))