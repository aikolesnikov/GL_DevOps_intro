#!/bin/bash

echo "-----------------------------------"
echo "---    GL DevOps intro task     ---"
echo "-----------------------------------"

if [ $1 == 'cpu' ]; then
	top -n 1 | grep "Cpu"
elif [ $1 == 'mem' ]; then 
        top -n 1 | grep "Mem"
else 
       	echo "Parameter is not supported. You shoud use either 'cpu' or 'mem'."
fi


