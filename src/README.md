# 注意書き

コードをレポジトリ

[OEIS_00](https://github.com/manman4/OEIS_00) 

[OEIS_01](https://github.com/manman4/OEIS_01) 

[OEIS_02](https://github.com/manman4/OEIS_02)

[OEIS_03](https://github.com/manman4/OEIS_03)

に移行します。

# OpenMP

## Mac

Mac では、Apple Clang で OpenMP を使用するために、Homebrew を使用して `libomp` をインストールする必要があります。

1. Homebrew をインストールしていない場合は、公式サイト（https://brew.sh/）の指示に従ってインストールしてください。

2. ターミナルを開いて、以下のコマンドを実行して `libomp` をインストールします。

   ```bash
   brew install libomp
   ```

インストールが完了したら、言語に合わせてエイリアスを設定してください。

#### C

ステップ1：設定ファイル（.zshrc）を開く

ターミナルで以下のコマンドを入力して、設定ファイルをエディタで開きます。

```bash
nano ~/.zshrc
```

ステップ2：エイリアスを追記する

ファイルの末尾に、以下の 1行 をコピー＆ペーストしてください。

```bash
alias gcc-omp='clang -O3 -Xpreprocessor -fopenmp -lomp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include'
```

- `clang`: C用のコンパイラを指定。
- `-Xpreprocessor -fopenmp`: Apple Clang で OpenMP を有効にするためのフラグ。
- `-lomp`: libomp をリンク。
- `-I` と `-L`: Homebrew でインストールした OpenMP の場所を明示。

ステップ3：保存して閉じる

保存: Control + O キーを押し、そのまま Enter を押します。

終了: Control + X キーを押してエディタを閉じます。

ステップ4：設定を現在のターミナルに反映させる

これを忘れると、まだエイリアスが使えません。

```bash
source ~/.zshrc
```

動作確認：いざコンパイル！

これで準備完了です。以下のコマンドで、C コードをコンパイルしてみてください。

```bash
gcc-omp your_code.c -o your_program
```

エラーが出ずに終了すれば成功です。あとは実行するだけです。

#### C++

ステップ1：設定ファイル（.zshrc）を開く

ターミナルで以下のコマンドを入力して、設定ファイルをエディタで開きます。

```bash
nano ~/.zshrc
```

ステップ2：エイリアスを追記する

ファイルの末尾（または既存の gcc-omp の下）に、以下の 1行 をコピー＆ペーストしてください。

```bash
alias g++-omp='clang++ -O3 -Xpreprocessor -fopenmp -std=c++17 -I/opt/homebrew/opt/libomp/include -L/opt/homebrew/opt/libomp/lib -lomp'
```

- `clang++`: C++用のコンパイラを指定。
- `-std=c++17`: C++17規格を使用（構造化束縛、`if constexpr` など C++17 以降の機能を有効にします）。
- `-Xpreprocessor -fopenmp`: Apple Clang で OpenMP を有効にするためのフラグ。
- `-lomp`: libomp をリンク。
- `-I` と `-L`: Homebrew でインストールした OpenMP の場所を明示。

ステップ3：保存して閉じる

保存: Control + O キーを押し、そのまま Enter を押します。

終了: Control + X キーを押してエディタを閉じます。

ステップ4：設定を現在のターミナルに反映させる

これを忘れると、まだエイリアスが使えません。

```bash
source ~/.zshrc
```

動作確認：いざコンパイル！

これで準備完了です。以下のコマンドで、C++ コードをコンパイルしてみてください。

```bash
g++-omp your_code.cpp -o your_program
```

エラーが出ずに終了すれば成功です。あとは実行するだけです。

# PARI/GPについて

言語の仕様等はこちらのリポジトリで整理

https://github.com/manman4/lang/tree/main/PARI

## 計算の注意

```PARI:G.f.:
my(N=66, x='x+O('x^N)); 
```

で計算結果がN個以上出ても、計算上余分な桁を用意しただけの場合があるので、余分な桁の分の計算結果は使わない。

```PARI:G.f.:
my(N=20, x='x+O('x^N)); 2*((1-x)-sqrt((1-2*x+x^2+x^3)))/x^3
```

のように、割り算をすると想定した桁数に届かない時がある。

## 表示の注意

Vecについて

```PARI:Vec:
? f = 1+2*x+4*x^2; 
? Vec(f)
%2 = [4, 2, 1]
? Vecrev(f)
%3 = [1, 2, 4]
? f = 1+2*x+4*x^2+x*O(x^2);
? Vec(f)
%5 = [1, 2, 4]
```


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

## 外部出力（b-file）

対話型のままだと出力先のpath名を具体的に書いていないと、意図せぬところに出力される。

よって対話型でなく、カレントディレクトリにおいてgpを叩くと、カレントディレクトリに出力される

```PARI
% gp
                         GP/PARI CALCULATOR Version 2.17.3 (released)
                arm64 running darwin (aarch64/GMP-6.3.0 kernel) 64-bit version
             compiled: Nov 11 2025, Apple clang version 17.0.0 (clang-1700.4.4.1)
                           threading engine: pthread, nbthreads = 8
                        (readline v8.3 enabled, extended help enabled)

                            Copyright (C) 2000-2024 The PARI Group

PARI/GP is free software, covered by the GNU General Public License, and comes WITHOUT ANY 
WARRANTY WHATSOEVER.

Type ? for help, \q to quit.
Type ?18 for how to get moral (and possibly technical) support.

parisize = 8000000, primelimit = 1048576, factorlimit = 1048576
? \r /Users/xxxx.gp
```

## b-file作成（備忘録用）

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

# SageMathによる計算

言語の仕様等はこちらのリポジトリで整理

https://github.com/manman4/lang/tree/main/SageMath

# Singularによる計算

言語の仕様等はこちらのリポジトリで整理

https://github.com/manman4/lang/tree/main/Singular

# Maximaによる計算

言語の仕様等はこちらのリポジトリで整理

https://github.com/manman4/lang/tree/main/Maxima
