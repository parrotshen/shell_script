#!/bin/bash

if [ $# == 1 ]; then
    cat /proc/interrupts | grep "^ *$1:"
    echo
    exit
fi

LIST=$(ls -v /proc/irq/ | tr -d default_smp_affinity)

printf '[1;36mMask\tIRQ\tDevice[0m\n'
for IRQ in ${LIST}
do
    CPU=$(sudo cat /proc/irq/$IRQ/smp_affinity)
    DEVICE=$(cat /proc/interrupts | grep "^ *$IRQ:" | awk '{print $NF}')
    if [ -n "$DEVICE" ]; then
        printf '%s\t%s\t%s\n' "${CPU}" "${IRQ}" "${DEVICE}"
    fi
done
echo
