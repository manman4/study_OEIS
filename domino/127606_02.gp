a(n) = sqrtint(4^n*polresultant(polchebyshev(2*n+1, 1, I*x/2), polchebyshev(2*n, 2, x/2)));
for(n=0, 20, print1(a(n), ", "))