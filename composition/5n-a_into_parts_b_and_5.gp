b(n) = polcoef((1/(1 - x - x^5) + O(x^1000)), 5*n);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n, binomial(n+4*k, n-k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^4/((1-x)^5 - x) + O(x^20))  


b(n) = polcoef((1/(1 - x - x^5) + O(x^1000)), 5*n-1);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n, binomial(n-1+4*k, n-k));
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^5/((1-x)^5 - x) + O(x^20))  
\\ a(0)=0
Vec(x/((1-x)^5 - x) + O(x^20))  


b(n) = polcoef((1/(1 - x - x^5) + O(x^1000)), 5*n-2);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n, binomial(n+2+4*k, n-1-k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x*(1-x)/((1-x)^5 - x) + O(x^20))  


b(n) = polcoef((1/(1 - x - x^5) + O(x^1000)), 5*n-3);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n, binomial(n+1+4*k, n-1-k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x*(1-x)^2/((1-x)^5 - x) + O(x^20))  


b(n) = polcoef((1/(1 - x - x^5) + O(x^1000)), 5*n-4);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n, binomial(n+4*k, n-1-k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x*(1-x)^3/((1-x)^5 - x) + O(x^20))  


print


b(n) = polcoef((1/(1 - x^2 - x^5) + O(x^1000)), 5*n);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\2, binomial(n+3*k, n-2*k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^4/((1-x)^5 - x^2) + O(x^20))  


b(n) = polcoef((1/(1 - x^2 - x^5) + O(x^1000)), 5*n-1);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\2, binomial(n+1+3*k, n-1-2*k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x*(1-x)^2/((1-x)^5 - x^2) + O(x^20))  


b(n) = polcoef((1/(1 - x^2 - x^5) + O(x^1000)), 5*n-2);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\2, binomial(n-1+3*k, n-2*k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^5/((1-x)^5 - x^2) + O(x^20)) 
\\ a(0)=0
Vec(x^2/((1-x)^5 - x^2) + O(x^20))  


b(n) = polcoef((1/(1 - x^2 - x^5) + O(x^1000)), 5*n-3);
for(n=0,20,print1(b(n),", ")) 
a(n) = sum(k=0, n\2, binomial(n+3*k, n-1-2*k));   
for(n=0,20,print1(a(n),", "))   
Vec(x*(1-x)^3/((1-x)^5 - x^2) + O(x^20))  


b(n) = polcoef((1/(1 - x^2 - x^5) + O(x^1000)), 5*n-4);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\2, binomial(n+1+3*k, n-2-2*k));   
for(n=0, 20, print1(a(n),", "))   
Vec(x^2*(1-x)/((1-x)^5 - x^2) + O(x^20))  


print


b(n) = polcoef((1/(1 - x^3 - x^5) + O(x^1000)), 5*n);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\3, binomial(n+2*k, n-3*k));  
for(n=0, 20, print1(a(n),", "))   
Vec((1-x)^4/((1-x)^5 - x^3) + O(x^20))  


b(n) = polcoef((1/(1 - x^3 - x^5) + O(x^1000)), 5*n-1);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\3, binomial(n+1+2*k, n-2-3*k));  
for(n=0, 20, print1(a(n),", "))   
Vec(x^2*(1-x)/((1-x)^5 - x^3) + O(x^20))  


b(n) = polcoef((1/(1 - x^3 - x^5) + O(x^1000)), 5*n-2);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\3, binomial(n+2*k, n-1-3*k)); 
for(n=0, 20, print1(a(n),", ")) 
Vec(x*(1-x)^3/((1-x)^5 - x^3) + O(x^20))  
\\ a(0)=0
Vec(x^3/((1-x)^5 - x^3) + O(x^20))  


b(n) = polcoef((1/(1 - x^3 - x^5) + O(x^1000)), 5*n-3);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\3, binomial(n-1+2*k, n-3*k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^5/((1-x)^5 - x^3) + O(x^20)) 


b(n) = polcoef((1/(1 - x^3 - x^5) + O(x^1000)), 5*n-4);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\3, binomial(n+2*k, n-2-3*k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x^2*(1-x)^2/((1-x)^5 - x^3) + O(x^20))  


print


b(n) = polcoef((1/(1 - x^4 - x^5) + O(x^1000)), 5*n);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\4, binomial(n+k, n-4*k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^4/((1-x)^5 - x^4) + O(x^20))  


b(n) = polcoef((1/(1 - x^4 - x^5) + O(x^1000)), 5*n-1);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\4, binomial(n+k, n-1-4*k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x*(1-x)^3/((1-x)^5 - x^4) + O(x^20))  


b(n) = polcoef((1/(1 - x^4 - x^5) + O(x^1000)), 5*n-2);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\4, binomial(n+k, n-2-4*k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x^2*(1-x)^2/((1-x)^5 - x^4) + O(x^20))  


b(n) = polcoef((1/(1 - x^4 - x^5) + O(x^1000)), 5*n-3);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\4, binomial(n+k, n-3-4*k)); 
for(n=0, 20, print1(a(n),", "))
Vec(x^3*(1-x)/((1-x)^5 - x^4) + O(x^20))  


b(n) = polcoef((1/(1 - x^4 - x^5) + O(x^1000)), 5*n-4);
for(n=0, 20, print1(b(n),", ")) 
a(n) = sum(k=0, n\4, binomial(n-1+k, n-4*k)); 
for(n=0, 20, print1(a(n),", "))
Vec((1-x)^5/((1-x)^5 - x^4) + O(x^20)) 
\\ a(0)=0
Vec(x^4/((1-x)^5 - x^4) + O(x^20))  

