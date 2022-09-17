#!/bin/bash

echo "Hello from shell script"

OUT=$(curl localhost:8080/health)

echo $?
echo '-'
echo $OUT
echo '-'
echo $OUT == 'ok' 

if [ $OUT == 'ok' ]; 
then
    echo 'equal'
    exit 0
else 
    echo 'not equal'
    exit 0
fi