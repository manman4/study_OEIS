a(n) = if(n<2, 3*n+1, ((4*n-1) * (8*n^2-4*n) * a(n-1) - 36 * (n-1) * (2*n-1) * (4*n+1) * a(n-2))/(n * (2*n+1) * (4*n-3)));
for(n=0, 20, print1(a(n), ", "))
