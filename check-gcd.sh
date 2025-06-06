#!/bin/bash

# 最大公約数の判定
calGcd(){
        local number1=$1
        local number2=$2

        while [[ $number2 -ne 0 ]]; do
                local tmp=$number2
                number2=$(expr $number1 % $number2)
                number1=$tmp
        done

        echo "$number1"
}

# 引数の数判定
if [[ $# -ne 2 ]] ; then
        echo  "エラー: 引数を2つ指定して下さい" >&2
        exit 1
fi

# 空の引数をチェック
if [[ -z "$1" || -z "$2" ]]; then
    echo "エラー: 引数に空の値は使えません" >&2
    exit 1
fi


# 引数が数値か判定
if ! [[ $1 =~ ^[1-9]+$ ]] || ! [[ $2 =~ ^[1-9]+$ ]] ; then
        echo "エラー: 引数が数値ではありません。" >&2
        exit 1
fi

# 最大公約数の判定
calGcd "$1" "$2"
