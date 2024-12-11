# basic

## 二項係数

binomial(r,k) = (-1)^k * binomial(k-r-1,k)

注意：　r < 0 の場合は、binomial(r,k) = binomial(r,r-k) は必ずしも成り立たない。


```PARI
-4 | 1 -4 10 -20
-3 | 1 -3  6 -10
-2 | 1 -2  3  -4
-1 | 1 -1  1  -1
 0 | 1  0  0   0
 1 | 1  1  0   0
 2 | 1  2  1   0
 3 | 1  3  3   1
```

（参考）　コンピュータの数学　P.161


### 負の二項係数

よく使うもの

(-4)^n * binomial(-1/2,n) = binomial(2*n,n)

binomial(-k,n-k) = (-1)^(n-k) * binomial(n-1,n-k)


## 形式的べき級数(FPS)

競プロではFPSで通じている。

とりあえず、この記事を理解すべき。　https://trap.jp/post/1657/

以下が特に大事

母関数を 1−ax−bx^2 +⋯ で割ることは、もらう DP A[n] += A[n - 1] * a + A[n - 2] * b + … を計算することに対応する。

実装例

https://manchanr6.blogspot.com/2023/10/231001.html

より詳しくはこちらで議論（実装）する予定

https://github.com/manman4/study_OEIS/tree/main/linear
