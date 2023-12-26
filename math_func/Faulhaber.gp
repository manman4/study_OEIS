f(n, m) = (subst(bernpol(m+1, x), x, n+1)-subst(bernpol(m+1, x), x, 0))/(m+1);

for(i=0, 10, for(j=0, 10, print1(f(j, i),", ")); print);
