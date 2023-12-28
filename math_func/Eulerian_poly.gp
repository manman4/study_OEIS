\\ https://oeis.org/wiki/Eulerian_polynomials#Three_identitie
f(n) = if(n==0, 1, sum(k=1, n, k!*stirling(n, k, 2)*(x-1)^(n-k)));

for(i=0, 10, print(Vec(f(i))));
