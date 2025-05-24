#!/bin/bash

echo "2と4を入力し、結果が2か確認"
output=$(~/kadai4/gcd.sh 2 4)
if [ "$output" = "2" ]; then
  echo "OK（出力: $output）"
else
  echo "NG（出力: $output）"
fi

echo "引数が1つだけのときにエラーが出るか確認"
output=$(~/kadai4/gcd.sh 3 2>&1)
if echo "$output" | grep -q "Error"; then
  echo "OK（出力: $output）"
else
  echo "NG（出力: $output）"
fi

echo "文字列を引数にしたときにエラーが出るか確認"
output=$(~/kadai4/gcd.sh a b 2>&1)
if echo "$output" | grep -q "Error"; then
  echo "OK（出力: $output）"
else
  echo "NG（出力: $output）"
fi

echo "全ての確認が完了しました。"

