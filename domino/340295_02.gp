{a(n) = sqrtint(sqrtint(polresultant(polchebyshev(4*n+2, 1, x/2), polchebyshev(4*n+2, 1, I*x/2))))/2^n};
for(n=0, 20, print1(a(n), ", "))