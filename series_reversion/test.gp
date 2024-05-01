
\\ 5) ( (1+x)^u / (1+x+x^s)^t )^n

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n, k)*binomial((t+u)*n-k, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( (1+x)^u * (1+x+x^s)^t )^n, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


\\ 1/( (1-x)^u * (1-x^s)^t )^n
\\ Cf. A370274


a(n, s, t, u) = sum(k=0, n\s, binomial(t*n+k-1, k)*binomial((u+1)*n-s*k-1, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( 1/( (1-x)^u * (1-x^s)^t )^n, n);


for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ ( 1/(1-x)^u * (1+x^s)^t )^n
\\ Cf. A370244

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n, k)*binomial((u+1)*n-s*k-1, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( 1/(1-x)^u * (1+x^s)^t )^n, n);


for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ ( (1+x)^u / (1+x^s)^t )^n
\\ Cf. A370214

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n+k-1, k)*binomial(u*n, n-s*k)); 
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( (1+x)^u / (1-x^s)^t )^n, n); 

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ ( (1+x)^u * (1+x^s)^t )^n
\\ Cf. A370194

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n, k)*binomial(u*n, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( (1+x)^u * (1+x^s)^t )^n, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");
