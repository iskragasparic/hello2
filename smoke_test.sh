#! /bin/bash

python service2/entrypoint.py > service2_output.txt

VAR=`cat service2_output.txt`

if [ -z "$VAR" ]
then
    echo 'Empty output!'
    exit 1
else
    echo 'Smoke test passed!'
    exit 0
fi
