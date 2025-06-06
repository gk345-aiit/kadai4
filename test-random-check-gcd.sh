#!/bin/bash

# ランダム値を生成
number1=$((RANDOM % 9 + 1))
number2=$((RANDOM % 9 + 1))

result=$(./check-gcd.sh $number1 $number2 2>&1)
expected='^[0-9]+$'

echo "arg1: $number1"
echo "arg2: $number2"
echo "result: $result"
echo "expected: $expected"

# Test Case 4
if [[ "$result" =~ $expected ]] ; then
    echo "Test Case 4 Passed result value: $result"
else
    echo "Test Case 4 Failed result value: $result"
    exit 1
fi

echo "All Test Passed: Random Entry Args"
