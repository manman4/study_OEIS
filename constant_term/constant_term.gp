M=17;

\\ A361677
a(n) = polcoef(polcoef(polcoef((1 + x + y + z + 1/(x*y) + 1/(y*z) + 1/(z*x))^n, 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361678
a(n) = polcoef(polcoef(polcoef(polcoef((1 + w + x + y + z + 1/(x*y*z) + 1/(w*y*z) + 1/(w*x*z) + 1/(w*x*y))^n, 0), 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));