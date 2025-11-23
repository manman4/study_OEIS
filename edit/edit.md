# EDIT

編集の注意について

https://oeis.org/wiki/AVOID_INTERFERING_EDITS

## Title

### 数学記号

* != or <>  not equal
* [n]  1からnの配列

### G.f.

2020/12/05 現在　Expansion of ～ ○○, G.f. ○○ ではなく Generating function Sum_{n >= 0} a(n)*x^n = ○○を推奨

### 順番

大体次の順にしている

2^k (分子), k! (分子), binomial, Stirling, その他式

### Square array

A(n,k)ではなくT(n,k) ? -> EICのコミュではどちらでもいいという結論に。（2025/02）

Cf. https://oeis.org/A364113

#### A(n,k)とT(n,k)

OFFSET０のとき　T(n,k) = A(k,n-k).

Cf. [A046688](https://oeis.org/A046688)、[A323834](https://oeis.org/A323834)

#### ColumnとRow

Column kの該当数列がずれているとき添字はn、Row nの該当数列がずれているとき、添字はk 

Cf. [A376033](https://oeis.org/A376033)

## DATA

### 存在しない時

０でなく−１を推奨。0より-1の方が探しやすいから

## OFFSET

最近までリストは1から始まるが原則だったが、最近変更された。

http://oeis.org/wiki/Offsets#Offset_1_.28Lists.29_.28Functions_that_are_defined_for_all_positive_integers.29

## b-file

## PROG

The purpose of code is purely practical, so everybody wants just the best.

自分のソースコード保存では、上記以外も保存する。

以下も参照のこと。

https://github.com/manman4/study_OEIS/tree/main/src#readme

### PARI

関数(ex.別の数列を求めるもの等)は基本小文字から

```PARI:func
a354339(n) = n!*sum(k=1, n, sumdiv(k, d, 1/(d*(k/d)^d))/(n-k)!);
a_vector(n) = my(v=vector(n+1)); v[1]=1; for(i=1, n, v[i+1]=sum(j=1, i, a354339(j)*binomial(i-1, j-1)*v[i-j+1])); v;
```

再帰は遅くなるので、保存しながら計算

```PARI:func
\\　A355203
a_vector(n) = my(v=vector(n)); v[1]=1; for(i=1, n-1, v[i+1]=sum(j=1, i, (-1)^(i-j)*stirling(i, j, 2)*v[j])); v;
```


## diff

OSがwindowsの頃

difff やdiffchecker → winmerge

OSがLinuxやmacになってから

diffchecker, FileMerge

## ブラウザ

Mac とChromeでは図が崩れる時がある　Mac ではSafari or Firefox



