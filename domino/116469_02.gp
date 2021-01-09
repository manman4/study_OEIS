T(n, k) = polresultant(polchebyshev(n-1, 2, x/2), polchebyshev(k-1, 2, (4-x)/2));
for(n=1, 10, for(k=1, n-1, print1(T(k, n-k), ", ")))