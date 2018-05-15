#!/bin/bash

echo "-----------------------------------"
echo "---    GL DevOps intro task     ---"
echo "-----------------------------------"


if [ -z "$1" ]; then
	echo "Parameter is required. You shoud use either 'cpu' or 'mem'." 
	exit 1;
fi

if [ $1 == 'cpu' ]; then
	# top -n 1 | grep "Cpu" | awk '{ print "system.cpu.user " $2 "\n""system.cpu.idle " $8 "\n"}'
	cpu_string=`top -n 1 | grep "Cpu"`
	echo $cpu_string | awk '{ print "system.cpu.user " $2}'
	echo $cpu_string | awk '{ print "system.cpu.idle " $8}'
        echo $cpu_string | awk '{ print "system.cpu.unniced_user " $2}'
        echo $cpu_string | awk '{ print "system.cpu.system " $4}'
        echo $cpu_string | awk '{ print "system.cpu.niced_user " $6}'
        echo $cpu_string | awk '{ print "system.cpu.idle " $8}'
        echo $cpu_string | awk '{ print "system.cpu.wait " $10}'
        echo $cpu_string | awk '{ print "system.cpu.hardware_interrupts " $12}'
        echo $cpu_string | awk '{ print "system.cpu.software_interrupts " $14}'
        echo $cpu_string | awk '{ print "system.cpu.stolen_by_virt_hypervisor " $14}'
elif [ $1 == 'mem' ]; then 
        mem_string=`top -n 1 | grep "Mem"`
	echo $mem_string
        echo $mem_string | awk '{print "virtual total "$4}'
        echo $mem_string | awk '{print "virtual free "$6}'
        echo $mem_string | awk '{print "virtual used "$8}'
        echo $mem_string | awk '{print "virtual cache "$10}'
        echo $mem_string | awk '{print "swap total "$14}'
        echo $mem_string | awk '{print "swap free "$16}'
        echo $mem_string | awk '{print "swap used "$18}'
else 
       	echo "Parameter is not supported. You shoud use either 'cpu' or 'mem'."
fi
