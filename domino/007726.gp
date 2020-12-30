¥¥ 添字は以下の文献に添う
¥¥ https://www.sciencedirect.com/science/article/pii/S0012365X9683024X?via%3Dihub

default(realprecision, 120);
a(n) = round(prod(j=2, n-1, prod(i=1, j-1, 4*sin(i*Pi/(2*n))^2+4*sin(j*Pi/(2*n))^2)));
for(n=1, 20, print1(a(n), ", "))
