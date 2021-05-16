#!/bin/bash

if [ $(( RANDOM%2 )) -eq 0 ]
then
echo H
else
echo T
fi
