



a(n, q, r, s, t, u) = my(A=1); for(i=1, n, A=exp(q*x*A^(s/q) * (1+x*A^(r/q))^t + x*O(x^n) ) * (1 + x*A^(r/q))^(q*u) ); n!*polcoef(A, n);
b(n, q, r, s, t, u) = q*n!*sum(k=0, n, (r*n+(s-r)*k+q)^(k-1)*binomial(r*u*n+((s-r)*u+t)*k+q*u, n-k)/k!);


for(q=1, 4, for(r=0, 3, for(s=0, 3, for(t=-5, 5, for(u=-5, 5, for(n=0, 15, if(a(n, q, r, s, t, u)!=b(n, q, r, s, t, u), print1([n, q, r, s, t, u], ", "))))))));
print1("done");





a(n, q, r, s, t, u) = my(A=1); for(i=1, n, A=exp(q*x*A^(s/q) / (1-x*A^(r/q))^t + x*O(x^n) ) / (1 - x*A^(r/q))^(q*u) ); n!*polcoef(A, n);
b(n, q, r, s, t, u) = q*n!*sum(k=0, n, (r*n+(s-r)*k+q)^(k-1)*binomial((r*u+1)*n+((s-r)*u+t-1)*k+q*u-1, n-k)/k!);


for(q=1, 4, for(r=0, 3, for(s=0, 3, for(t=-5, 5, for(u=-5, 5, for(n=0, 15, if(a(n, q, r, s, t, u)!=b(n, q, r, s, t, u), print1([n, q, r, s, t, u], ", "))))))));
print1("done");





\\ b(n) = 3*n!*sum(k=0, n, (n+3)^(k-1)*binomial(2*n+2*k+6,n-k)/k!);                                                                 
\\ for(n=0, 20, print1(b(n),", "));                                                                                                 

\\ my(A=1, n=22); for(i=1, n, A=exp(3*x * A^(1/3) * (1 + x*A^(1/3))^2 + x*O(x^n) ) * (1 + x*A^(1/3))^(6) ); Vec(serlaplace(A^(1)))  





\\ b(n) = 4*n!*sum(k=0, n, (n+4)^(k-1)*binomial(2*n+2*k+8,n-k)/k!);                                                               
\\ for(n=0, 20, print1(b(n),", "));    

\\ my(A=1, n=22); for(i=1, n, A=exp(4*x * A^(1/4) * (1 + x*A^(1/4))^2 + x*O(x^n) ) * (1 + x*A^(1/4))^(8) ); Vec(serlaplace(A^(1)))