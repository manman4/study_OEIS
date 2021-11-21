M=18;

\\ この結果は正しくない
a(n) = if(n==0, 1, sum(k=1, n, (3*k+1)^(k-1)*binomial(n-1, k-1)*a(n-k)));
for(n=0, M, print1(a(n), ", "));