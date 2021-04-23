#!/bin/bash

if [ $# == 1 ]; then
    echo $(cat /proc/$1/cmdline)
    exit
fi

MYSELF=$(basename $0)
PROCESSES=$(ps ax -o pid=)

printf '[1;36mCPU\tPID\tProcess[0m\n'
for PID in ${PROCESSES}
do
    CPU=$(taskset -cp ${PID} | sed 's/^.*: //')
    NAME=$(cat /proc/${PID}/status | grep "Name:" | awk '{print $2}')
    CMDLINE=$(cat /proc/${PID}/cmdline)
    if [ "$NAME" == "$MYSELF" ]; then
        break
    fi
    if [ -z "$CMDLINE" ]; then
        printf '%s\t%s\t[%s]\n' "${CPU}" "${PID}" "${NAME}"
    else
        printf '%s\t%s\t%s\n' "${CPU}" "${PID}" "${NAME}"
    fi
done
echo
