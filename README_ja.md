# study_OEIS

- [日本語](README_ja.md)
- [English](README.md)

[OEIS](https://oeis.org/) の各数列の研究

## 構成

### 全般

- [test](test/)

    PARI の結果の検証

- [src](src/)

    別リポジトリ（数列の番号順に整理していた）

- [formula](formula/)

    加えた公式の確認等

- [basic](basic/)

    二項係数のよく使う変形、形式的冪級数（FPS）

- [math_func](math_func/)

    Bell 多項式、Euler 多項式、Faulhaber の公式、Lambert W 関数など

- [transform](transform/)

    Bell transform

    generalized Euler transform

    Inverse Möbius transform

    Möbius transform

    Stirling transform

- [eta_product](eta_product/)

- [linear](linear/)

- [p_recursive](p_recursive/)

### 母関数・級数

- [egf_exp](egf_exp/)

    e.g.f. 1/(1 - f(x)) と exp(f(x))

- [dgf](dgf/)

    Dirichlet 母関数

- [series_reversion](series_reversion/)

    Series Reversion（ラグランジュの反転公式）

- [functional_square_root](functional_square_root/)

    A(A(x)) = ... などの関数方程式

- [riordan_array](riordan_array/)

- [hyper_geom](hyper_geom/)

    超幾何級数

- [q_analog](q_analog/)

    q-二項係数

- [constant_term](constant_term/)

    定数項として表される数列

- [diagonal](diagonal/)

    2変数有理関数の対角成分

### 個別の話題

- [graphillion](graphillion/)

- [domino](domino/)

- [addition_triangle](addition_triangle/)

- [tiling](tiling/)

    正方形・階段ポリオミノ・三角形などの敷き詰め

- [sumdiv](sumdiv/)

- [young_tableaux](young_tableaux/)

- [partition](partition/)

- [composition](composition/)

- [permutation](permutation/)

    順列の統計量（下降数・超過数など）

- [multiplicative_function](multiplicative_function/)

    乗法的関数

- [prime](prime/)

    素数のディオファントス表現

### その他

- [edit](edit/)

- [oeis_fun](oeis_fun/)

    OEIS に載っていない最も小さな数（下記）



## 話題

### 載っていない最も小さな数　

23543

- https://benwiederhake.github.io/oeis-funfacts/
- https://manman4.github.io/

自分で計算する方法 → https://github.com/manman4/study_OEIS/tree/main/oeis_fun

### images based on the parity of sequences in OEIS 

https://twitter.com/oeisTriangles

### pip oeis

oeisをpipでインストールできるが、

https://github.com/JulienPalard/oeis

を見る限りそんなに多くは登録されていない


## 有益なサイト

* The Combinatorial Object Server

* Prime Curios!
