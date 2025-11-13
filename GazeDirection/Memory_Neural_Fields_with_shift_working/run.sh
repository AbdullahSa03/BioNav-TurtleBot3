#!/bin/bash

source ~/Experiments/.exportLD_LIBRARY_PATH

rm -f stderr.txt
script_name=`ls *.res | cut -d'.' -f1`
promethe $script_name.{script,res,gcd,config} -S0 -W1 $1 $2
# 2> stderr.txt
