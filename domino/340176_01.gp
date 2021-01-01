default(realprecision, 1000);
{a(n) = round(prod(j=1, 2*n-1, prod(k=j+1, 2*n-1-j, 4-4*cos(j*Pi/(2*n))*cos(k*Pi/(2*n)))))};
for(n=0, 20, print1(a(n), ", "))