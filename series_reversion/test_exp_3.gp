a(n, r, s, t, u) = my(A=1); for(i=1, n, A=exp(x*A^s / (1-x*A^r)^t + x*O(x^n) ) / (1 - x*A^r)^u ); n!*polcoef(A, n);
b(n, r, s, t, u) = n!*sum(k=0, n, (r*n+(s-r)*k+1)^(k-1)*binomial((r*u+1)*n+((s-r)*u+t-1)*k+u-1, n-k)/k!);


for(r=0, 3, for(s=0, 3, for(t=-5, 5, for(u=-5, 5, for(n=0, 15, if(a(n, r, s, t, u)!=b(n, r, s, t, u), print1([n, r, s, t, u], ", ")))))));
print1("done");


a(n, r, s, t, u) = my(A=1); for(i=1, n, A=exp(x*A^s * (1+x*A^r)^t + x*O(x^n) ) * (1 + x*A^r)^u ); n!*polcoef(A, n);
b(n, r, s, t, u) = n!*sum(k=0, n, (r*n+(s-r)*k+1)^(k-1)*binomial(r*u*n+((s-r)*u+t)*k+u, n-k)/k!);


for(r=0, 3, for(s=0, 3, for(t=-5, 5, for(u=-5, 5, for(n=0, 15, if(a(n, r, s, t, u)!=b(n, r, s, t, u), print1([n, r, s, t, u], ", ")))))));
print1("done");