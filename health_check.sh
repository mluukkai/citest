#!/bin/bash

OUT=$(curl -s https://silent-meadow-3241.fly.dev/health)

if [ $OUT == 'ok' ]; 
then
    exit 0
else 
    exit 1
fi