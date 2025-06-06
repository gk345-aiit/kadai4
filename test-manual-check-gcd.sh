#!/bin/bash

# ランダム値を生成
number1=$((RANDOM % 9 + 1))
number2=$((RANDOM % 9 + 1))

# Test Case 1
result=$(./check-gcd.sh "3" "" 2>&1)
if [[ -n "$result" ]] ; then
    echo "Test Case 1 Passed result value: $result"
else
    echo "Test Case 1 Failed result value: $result"
    exit 1
fi

# Test Case 2
result=$(./check-gcd.sh "a" "z" 2>&1)
if [[ -n "$result" ]] ; then
    echo "Test Case 2 Passed result value: $result"
else
    echo "Test Case 2 Failed result value: $result"
    exit 1
fi

# Test Case 3
echo $1
echo $2
echo $3

result=$(./check-gcd.sh $1 $2 2>&1)
expected=$3

echo $result
echo $expected

if [[ "$result" =~ $expected ]] ; then
    echo "Test Case 3 Passed result value: $result"
else
    echo "Test Case 3 Failed result value: $result"
    exit 1
fi

echo "All Test Passed: Manual Entry Args"
