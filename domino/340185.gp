default(realprecision, 1000);
a(n) = round(prod(j=1, 2*n, prod(k=j+1, 2*n-j, 4-4*cos(j*Pi/(2*n+1))*cos(k*Pi/(2*n+1)))));
for(n=0, 20, print1(a(n), ", "))