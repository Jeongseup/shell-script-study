#! /bin/bash

num1=20.5
num2=5
# bc is Basic Caculate
echo "20.5 + 5" | bc
echo "20.5 * 5" | bc
echo "20.5 - 5" | bc
echo "20.5 / 5" | bc
echo "20.5 % 5" | bc

# 소수점 몇 째자리까지 보여줄 건지?
echo "scale=20;20.5/5" | bc

# with user variables
echo "$num1 + $num2" | bc
echo "$num1*$num2" | bc

# sqrt is math library
num=100
# -l flag means mathlib options to express floating
echo "scale=2;sqrt($num)" | bc -l  
# if not with scale, express default floating number
echo "sqrt($num)" | bc -l

# other bc option
echo "var=10;var"
echo "var2=1; ++var2" | bc
echo "3^3" | bc
