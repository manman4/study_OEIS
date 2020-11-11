a(n) = if(n<1, 0, 1);
T(n, k) = if(k==0, 0^n, sum(j=0, n-k+1, binomial(n-1, j-1)*a(j)*T(n-j, k-1)));
tabl(nn) = for(n=0, nn, for(k=0, n, print1(T(n, k), ", ")); print);
tabl(10)
