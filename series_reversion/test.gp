\\ 2) 1 / ( (1-x)^u * (1-x-x^s)^t )^n
\\ Cf. A372233

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n+k-1, k)*binomial((t+u+1)*n-(s-1)*k-1, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( 1 / ( (1-x)^u * (1-x-x^s)^t )^n, n);   
for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ 3) ( (1-x+x^s)^t / (1-x)^u )^n
\\ 実質的に1)と同じ

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n, k)*binomial((u-t+1)*n-(s-1)*k-1, n-s*k));
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( (1-x+x^s)^t / (1-x)^u )^n, n);   
for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ 4) ( (1-x)^u / (1-x-x^s)^t )^n
\\ 実質的に2)と同じ

a(n, s, t, u) = sum(k=0, n\s, binomial(t*n+k-1, k)*binomial((t-u+1)*n-(s-1)*k-1, n-s*k));  
b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef( ( (1-x)^u / (1-x-x^s)^t )^n, n);   
for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));
print1("done");


\\ 5) ( (1+x)^u * (1+x+x^s)^t )^n

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
