#!/bin/bash

#2つの自然数を引数とし
if [ "$#" -ne 2 ]; then
  echo "Error: Please provide two integers." >&2
  exit 1
fi

#正しくない入力を行った際はエラー終了
if ! [[ "$1" =~ ^[0-9]+$ && "$2" =~ ^[0-9]+$ ]]; then
  echo "Error: Arguments must be natural numbers." >&2
  exit 1
fi

#最大公約数を出力
a=$1
b=$2
while [ "$b" -ne 0 ]; do
  temp=$b
  b=$((a % b))
  a=$temp
done

#1つの自然数
echo "$a"
