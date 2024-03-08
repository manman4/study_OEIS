\\ A371005, A371006, A371007, A371008, A371009

a(n, s, t) = sum(k=0, n+1, s^k*t^(n+1-k)*k^n*binomial(n+1, k))/((s+t)*(n+1));
b(n, s, t) = my(x='x+O('x^(n+2))); n! * polcoef(serreverse((s+t) * x/(s*exp((s+t)*x) + t))/x, n);

for(s=-10, 10, for(t=-10, 10, if(s+t!=0, for(n=0, 20, if(a(n, s, t)!=b(n, s, t), print1([n, s, t], ", "))))));
print1("done");
