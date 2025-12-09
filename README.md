# 因数分解する

[![test](https://github.com/RiM72J/robosys2025x/actions/workflows/test.yml/badge.svg)](https://github.com/RiM72J/robosys2025x/actions/workflows/test.yml)

- 標準入力から数値を読み込んで、因数分解の結果を指数形式で出力するコマンドです。

## 概要 

- 標準入力から整数を行ごとに読み込み、素因数分解を行って基数^指数の形で標準出力に出力します。

## 必要な環境 

* python 3.7+
* Linux (tested on Ubuntu 20.04/22.04)

## 使用方法 
- 標準入力から整数を渡します

```
$ echo 12 | ./factorize

12: 2^2 * 3^1
```

```
$ echo 100 | ./factorize
100: 2^2 * 5^2
```
 

- seqコマンドも使うことができます。
```
$ seq 5 | ./factorize
1: 1
2: 2^1
3: 3^1
4: 2^2
5: 5^1
```




## インストール 
- 下記の手順でリポジトリをクローンし、実行権限を与えてください。

```
# リポジトリをクローン
git clone https://github.com/RiM72J/robosys2025x.git
# ディレクトリへ移動
cd robosys2025x
# 実行権限を付与
chmod +x factorize
```

## ライセンス
- このソフトウェアは、BSD 3条項ライセンスの下で公開されています。


- © 2025 Ryomu Inukai
