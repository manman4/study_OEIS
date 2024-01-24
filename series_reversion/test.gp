\\ 1) x * (1-x)^u * (1-x+x^s)^t
\\ Cf. A368969

a(n, s, t, u) = sum(k=0, n\s, (-1)^k * binomial(t*(n+1)+k-1, k)*binomial((t+u+1)*(n+1)-(s-1)*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u*(1-x+x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ 2) x * (1-x)^u * (1-x-x^s)^t
\\ Cf. A368961

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1)+k-1, k)*binomial((t+u+1)*(n+1)-(s-1)*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u*(1-x-x^s)^t)/x, n);

for(s=1, 10, for(t=0, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ 3) x * (1-x)^u / (1-x+x^s)^t
\\ 実質的に1)と同じ
\\ Cf. A369229

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1), k)*binomial((u-t+1)*(n+1)-(s-1)*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u/(1-x+x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ 4) x / (1-x)^u * (1-x-x^s)^t  
\\ 実質的に2)と同じ
\\ Cf. A369486

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1)+k-1, k)*binomial((t-u+1)*(n+1)-(s-1)*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x/(1-x)^u*(1-x-x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ 5) x / (1+x)^u / (1+x+x^s)^t
\\ Cf. A369477

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1), k)*binomial((t+u)*(n+1)-k, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x/((1+x)^u*(1+x+x^s)^t))/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


\\ x * (1-x)^u * (1-x^s)^t
\\ Cf. A369296

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1)+k-1, k)*binomial((u+1)*(n+1)-s*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u*(1-x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ x * (1-x)^u / (1+x^s)^t
\\ Cf. A369262

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1), k)*binomial((u+1)*(n+1)-s*k-2, n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x*(1-x)^u/(1+x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ x / (1+x)^u * (1-x^s)^t
\\ Cf. A369399

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1)+k-1, k)*binomial(u*(n+1), n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x/(1+x)^u*(1-x^s)^t)/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");


\\ x / (1+x)^u / (1+x^s)^t
\\ Cf. A369439

a(n, s, t, u) = sum(k=0, n\s, binomial(t*(n+1), k)*binomial(u*(n+1), n-s*k))/(n+1);

b(n, s, t, u) = my(x='x+O('x^(n+2))); polcoef(serreverse(x/((1+x)^u*(1+x^s)^t))/x, n);

for(s=1, 10, for(t=-10, 10, for(u=-20, 20, for(n=0, 20, if(a(n, s, t, u)!=b(n, s, t, u), print1([n, s, t, u], ", "))))));

print1("done");
