b(n,m) = prod(j=1, n\2, prod(k=1, m, 4*sin(2*j*Pi/n)^2    +4*sin((2*k-1)*Pi/m)^2));
c(n,m) = prod(j=1, n\2, prod(k=1, m, 4*sin((2*j-1)*Pi/n)^2+4*sin(2*k*Pi/m)^2));
d(n,m) = prod(j=1, n\2, prod(k=1, m, 4*sin((2*j-1)*Pi/n)^2+4*sin((2*k-1)*Pi/m)^2));
T(n,m) = if(n*m%2==1, 0, if(n%2==1, T(m,n), (sqrt(b(n,m))+sqrt(c(n,m))+sqrt(d(n,m)))/2));
for(n=0, 10, print1(T(n,n+1), ", ")) 

for(n=0, 10, print1(b(n,n+1), ", ")) 
for(n=0, 10, print1(c(n,n+1)-d(n,n+1), ", ")) 

for(n=0, 6, print1(b(2*n,3), ", ")) 
for(n=0, 6, print1(c(2*n,3), ", ")) 
for(n=0, 6, print1(d(2*n,3), ", ")) 

print1(", ")

for(n=0, 6, print1(b(4,n), ", ")) 
for(n=0, 6, print1(c(4,n), ", ")) 
for(n=0, 6, print1(d(4,n), ", ")) 

e(n,m) = prod(j=1, n, prod(k=1, m, 4*sin((2*j-1)*Pi/(2*n))^2+4*sin((2*k-1)*Pi/m)^2));

for(n=0, 6, print1(round(sqrt(e(n,3))), ", ")) 
for(n=0, 6, print1(round(sqrt(e(n,4))), ", ")) 
for(n=0, 6, print1(round(sqrt(e(n,n))), ", ")) 

e(n,k) = sqrt(prod(a=1, n, prod(b=1, k, 4*sin((2*a-1)*Pi/(2*n))^2+4*sin((2*b-1)*Pi/k)^2)));

for(n=0, 6, print1(e(n,0), ", ")) 
for(n=0, 6, print1(e(n,1), ", ")) 
for(n=0, 10, print1(round(e(n,2)), ", ")) 
for(n=0, 10, print1(round(e(n,3)), ", ")) 
for(n=0, 15, print1(round(e(n,4)), ", ")) 
for(n=0, 20, print1(round(e(n,5)), ", ")) 
for(n=0, 10, print1(round(e(n,n)), ", ")) 

for(n=0, 16, print1(round(e(1,n)), ", ")) 
for(n=0, 16, print1(round(e(2,n)), ", ")) 

matrix(6, 6, n, k, round(e(n, k))) 

for(n=0, 9, for(k=0, n, print1(round(e(k,n-k)), ", ")))

T(n, k) = round(sqrt(prod(a=1, n, prod(b=1, k, 4*sin((2*a-1)*Pi/(2*n))^2+4*sin((2*b-1)*Pi/k)^2))));
for(n=1, 10, for(k=1, n-1, print1(T(k,n-k), ", ")))