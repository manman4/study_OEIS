# PARI/GPによる代表的な例

PROG

```PARI:E.g.f.:
\\ A194689
my(N=66, x='x+O('x^N)); Vec(serlaplace(exp(2*(exp(x)-1-x)))) \\ _Seiichi Manyama_, Nov 20 2020
```

b-file作成（備忘録用）

- G.f.:

```PARI:G.f.:
\\ \r
\\ Nは使わない 

v(n)={x='x+O('x^(n+10)); ～ };
M=100;
v=v(M);
for(n=0, M, write("C:\\Users\\○○\\bXXXXXX.txt", n, " ", polcoef(v, n)))
```

- E.g.f.:

```PARI:E.g.f.:
\\ \r
\\ Nは使わない 

v(n)={x='x+O('x^(n+10)); serlaplace(～) };
M=100;
v=v(M);
for(n=0, M, write("C:\\Users\\○○\\bXXXXXX.txt", n, " ", polcoef(v, n)))
```
