# 注意書き

試験的にコードをレポジトリOEIS_00〜OEIS_03に移行します。

# PARI/GPによる代表的な例

PROG

- G.f.:

```PARI:G.f.:
\\ A338731
my(N=66, x='x+O('x^N)); concat([0, 0], Vec(sum(k=1, N, x^(k*(3*k+1)/2)/(1-x^k))))
```

- E.g.f.:

```PARI:E.g.f.:
\\ A194689
my(N=66, x='x+O('x^N)); Vec(serlaplace(exp(2*(exp(x)-1-x))))
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
