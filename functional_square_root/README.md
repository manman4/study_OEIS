# Functional Square Root等の数列


| 番号 | 関係式 | 
|----- | ----- | 
| [A220110](https://oeis.org/A220110) |    A(A(x)) = x + 2*x^2 + 4*x^3 |
| [A220288](https://oeis.org/A220288) | A(A(A(x))) = x + 3*x^2 + 9*x^3 |


## 式

b(n,m) のn>mの場合

以下、PARI/GPのコードでないが、見やすさのため、コードのように書いている。

```
\\ A141120
b(n,m) 
= 1/5 * ( 
    25^(n-m) * binomial(m,n-m) 
    - Sum_{l=m+1..n-1} 
        (b(n,l) + Sum_{k=l..n} 
            (b(n,k) + Sum_{j=k..n} 
                (b(n,j) + Sum_{i=j..n} 
                    b(n,i) * b(i,j)
                ) * b(j,k)
            ) * b(k,l)
        ) * b(l,m) 
    ).

\\ A141121
b(n,m) 
= 1/6 * ( 
    36^(n-m) * binomial(m,n-m) 
    - Sum_{l=m+1..n-1} 
       (b(n,l) + Sum_{k=l..n} 
            (b(n,k) + Sum_{j=k..n} 
                (b(n,j) + Sum_{i=j..n} 
                    (b(n,i) + Sum_{h=i..n} 
                        b(n,h) * b(h,i)
                    ) * b(i,j)
                ) * b(j,k)
            ) * b(k,l)
       ) * b(l,m) 
    ).

\\ A372537
b(n,m) 
= 1/4 * ( 
    4^(n-m) * Sum_{l=0..m} binomial(l,n-3*m+2*l) * binomial(m,l) 
    - Sum_{l=m+1..n-1} 
        (b(n,l) + Sum_{k=l..n} 
            (b(n,k) + Sum_{j=k..n} 
                b(n,j) * b(j,k)
            ) * b(k,l)
        ) * b(l,m) 
    ). 

\\ A372521
b(n,m) 
= 1/5 * ( 
    5^(n-m) * Sum_{l=0..m} binomial(l,n-3*m+2*l) * binomial(m,l) 
    - Sum_{l=m+1..n-1} 
       (b(n,l) + Sum_{k=l..n} 
            (b(n,k) + Sum_{j=k..n} 
                (b(n,j) + Sum_{i=j..n} 
                    b(n,i) * b(i,j)
                ) * b(j,k)
            ) * b(k,l)
       ) * b(l,m) 
    ).

\\ A371841
b(n,m) = 1/6 * ( 
    6^(n-m) * Sum_{l=0..m} binomial(l,n-3*m+2*l) * binomial(m,l) 
    - Sum_{l=m+1..n-1} 
        (b(n,l) + Sum_{k=l..n} 
            (b(n,k) + Sum_{j=k..n} 
                (b(n,j) + Sum_{i=j..n} 
                    (b(n,i) + Sum_{h=i..n} 
                        b(n,h) * b(h,i)
                    ) * b(i,j)
                ) * b(j,k)
            ) * b(k,l)
        ) * b(l,m) 
    ). 

```
