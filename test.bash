#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Ryomu Inukai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

### NORMAL INPUT ###
# 期待値を指数形式 (例: 2^2 * 3^1) に修正しました

# 12 -> 2^2 * 3^1
out=$(echo 12 | ./factorize)
[ "${out}" = "12: 2^2 * 3^1" ] || ng "$LINENO"

# 13 -> 13^1
out=$(echo 13 | ./factorize)
[ "${out}" = "13: 13^1" ] || ng "$LINENO"

# 100 -> 2^2 * 5^2
out=$(echo 100 | ./factorize)
[ "${out}" = "100: 2^2 * 5^2" ] || ng "$LINENO"

### STRANGE INPUT ###
out=$(echo あ | ./factorize 2>&1)
[ "$?" = 1 ] || ng "$LINENO"
echo ${out} | grep "Error" || ng "$LINENO"

out=$(echo | ./factorize)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
