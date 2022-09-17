#!/bin/bash


OUT=$(curl localhost:8080/health)

if [ $OUT == 'shit' ]; 
then
    exit 0
else 
    exit 1
fi