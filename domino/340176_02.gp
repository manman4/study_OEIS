{a007341(n) = polresultant(polchebyshev(n-1, 2, x/2), polchebyshev(n-1, 2, (4-x)/2))};
{a334088(n) = sqrtint(polresultant(polchebyshev(2*n, 1, x/2), polchebyshev(2*n, 1, I*x/2)))};
{a(n) = if(n==0, 1, sqrtint(a007341(n)*a334088(n)/n))};
for(n=0, 20, print1(a(n), ", "))