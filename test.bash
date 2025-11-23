#!/bin/bash -xv 
# SPDX-FileCopyrightText: 2025 Ryomu Inukai
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}行目が違うよ
	res=1
}

res=0



out=$(echo 5 | ./odd_even)
[ "${out}" = "5 Odd" ] || ng "$LINENO"

out=$(echo 10 | ./odd_even)
[ "${out}" = "10 Even" ] || ng "$LINENO"

out=$(echo あ | ./odd_even)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo 1.5 | ./odd_even)
[ "$?" = 1 ] || ng "$LINENO"

out=$(echo | ./odd_even)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res




