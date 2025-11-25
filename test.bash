#!/bin/bash -xv
# SPDX-FileCopyrightText: 2025 Ryomu Inukai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
    echo ${1}行目が違うよ
    res=1
}

res=0

out=$(echo 12 | ./factorize)
[ "${out}" = "12: 2 2 3" ] || ng "$LINENO"

out=$(echo 13 | ./factorize)
[ "${out}" = "13: 13" ] || ng "$LINENO"

out=$(echo 100 | ./factorize)
[ "${out}" = "100: 2 2 5 5" ] || ng "$LINENO"

out=$(echo あ | ./factorize 2>&1)
[ "$?" = 1 ] || ng "$LINENO"
echo ${out} | grep "Error" || ng "$LINENO"

out=$(echo | ./factorize)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
