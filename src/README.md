# 注意書き

試験的にコードをレポジトリ

[OEIS_00](https://github.com/manman4/OEIS_00) 

[OEIS_01](https://github.com/manman4/OEIS_01) 

[OEIS_02](https://github.com/manman4/OEIS_02)

[OEIS_03](https://github.com/manman4/OEIS_03)

に移行します。

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

gp ファイル内でNを使わない方がいい。

よくターミナルでN=○○とするので、

gp ファイル内でそのNを使っていることを避けるため

ダメな例

```PARI:ターミナル
parisize = 8000000, primelimit = 500000
? N=60;
? \r /Users/xxx/Desktop/printN.gp 
60
? 
```

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

# MAGMAによる計算

オンライン　http://magma.maths.usyd.edu.au/calc/
