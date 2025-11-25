# 因数分解

[![test](https://github.com/RiM72J/robosys2025x/actions/workflows/test.yml/badge.svg)](https://github.com/RiM72J/robosys2025x/actions/workflows/test.yml)

-標準入力から数値を読み込んで、因数分解を出力するコマンドです。

## 概要 / Description

-標準入力から整数を行ごとに読み込み、素因数分解を行って標準出力に出力します。

## 必要な環境 / Requirements

* python 3.7+
* Linux (tested on Ubuntu 20.04/22.04)

## 使用方法 / Usage
-標準入力から整数を渡します

'''
$ echo 12 | ./factorze
12: 2 2 3
$ echo 100 | ./factorze
100: 2 2 5 5
---
-seqコマンドも使うことができます。
'''
$ seq 5 | ./factorize
1: 1
2: 2
3: 3
4: 2 2
5: 5
---
## インストール / Install
-リポジトリをクローンしてください。
git clone [https://github.com/RiM72J/robosys2025x.git](https://github.com/RiM72J/robosys2025x.git)
cd robosys2025x

## ライセンス/ License
-このソフトウェアは、BSD 3条項ライセンスの下で公開されています。
Copyright (c) 2025 Ryomu Inukai

- © 2025 Ryomu Inukai
