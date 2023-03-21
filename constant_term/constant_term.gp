M=17;

\\ A361657
a(n) = polcoef(polcoef((1 + x^2 + y^2 + 1/(x*y))^n, 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361658
a(n) = polcoef(polcoef(polcoef((1 + x^3 + y^3 + z^3 + 1/(x*y*z))^n, 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A344560
a(n) = polcoef(polcoef((1 + x + y + 1/(x*y))^n, 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361637
a(n) = polcoef(polcoef(polcoef((1 + x + y + z + 1/(x*y*z))^n, 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361673
a(n) = polcoef(polcoef(polcoef((1 + x*y + y*z + z*x + 1/(x*y*z))^n, 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361675
a(n) = polcoef(polcoef(polcoef(polcoef((1 + x*y*z + w*y*z + w*x*z + w*x*y + 1/(w*x*y*z))^n, 0), 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A201805
a(n) = polcoef(polcoef((1 + x + y + 1/x + 1/y)^n, 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361677
a(n) = polcoef(polcoef(polcoef((1 + x + y + z + 1/(x*y) + 1/(y*z) + 1/(z*x))^n, 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));

\\ A361678
a(n) = polcoef(polcoef(polcoef(polcoef((1 + w + x + y + z + 1/(x*y*z) + 1/(w*y*z) + 1/(w*x*z) + 1/(w*x*y))^n, 0), 0), 0), 0); 
for(n=0, M, print1(a(n), ", "));