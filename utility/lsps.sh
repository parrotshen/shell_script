#!/bin/bash

if [ $# == 1 ]; then
    ID1=$(id -u $1)
else
    ID1=$UID
fi

MYSELF=$(basename $0)
PROCESSES=$(ls -v /proc/ | grep "^[0-9]")

for PID in ${PROCESSES}
do
    ID2=$(cat /proc/${PID}/status | grep "Uid:" | awk '{print $2}')
    NAME=$(cat /proc/${PID}/status | grep "Name:" | awk '{print $2}')
    CMDLINE=$(cat /proc/${PID}/cmdline)
    if [ "$NAME" == "$MYSELF" ]; then
        break
    fi
    if [ "$ID1" == "$ID2" ]; then
        if [ -z "$CMDLINE" ]; then
            printf '%s\t[%s]\n' "${PID}" "${NAME}"
        else
            printf '%s\t%s\n' "${PID}" "${CMDLINE}"
        fi
    fi
done
echo
