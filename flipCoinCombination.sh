#!/bin/bash

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
for(( i=5;i<10;i++ ))
do
r=$(random)$(random)
flip[$i]=$r
winper2=$(( 100/4 ))
done
for(( i=10;i<15;i++ ))
do
p=$(random)$(random)$(random)
flip[$i]=$p
winper3=$(( 100/6 ))
done

echo ${flip[@]}
