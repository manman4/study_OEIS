T(n, k) = sqrtint(4^k*polresultant(polchebyshev(2*n+1, 1, I*x/2), polchebyshev(2*k, 2, x/2)));
for(n=0, 10, for(k=0, n, print1(T(k, n-k), ", ")))