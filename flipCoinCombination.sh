#!/bin/bash -x

declare -A flip
random(){
if [ $(( RANDOM%2 )) -eq 0 ]
then
echo H
else
echo T
fi
}
for(( i=0;i<5;i++ ))
do
f=$( random )
flip[$i]=$f
winper=$(( 100/2 ))
done
echo ${flip[@]}
