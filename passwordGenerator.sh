#!/bin/bash

# Creates special characters array
array[0]="!"
array[1]="@"
array[2]="#"
array[3]="$"
array[4]="%"
array[5]="&"


size=${#array[@]}
index=$(($RANDOM % $size))

#Outputs the password
gshuf /usr/share/dict/words -n2 | python3 -c "import sys; print(sys.stdin.read().title(), end='')" | { tr -d '\n'; echo -n; }; gshuf -i 0-2000 -n1 | { tr -d '\n'; echo -n; }; echo ${array[$index]}
