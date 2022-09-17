#!/bin/sh


OUT=$(curl localhost:8080/health)

if [ $OUT == 'ok' ]; 
then
    echo 'equal'
    exit 0
else 
    echo 'not equal'
    exit 1 
fi