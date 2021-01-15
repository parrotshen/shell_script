#!/bin/bash

if [ $# == 0 ]; then
  echo "Usage: $0 tcp"
  echo "     : $0 udp"
  echo
  exit
fi

type=$1

echo
echo "[1;32mPID	FD	Port	Command[0m"

# scan all process
for pid in $(ps -A -o pid=);
do
  if [ $pid -lt $$ ]; then

    for fd in $(sudo ls /proc/$pid/fd/)
    do
      link=$(sudo readlink /proc/$pid/fd/$fd)
      socket=$(echo -n $link | awk -F ':' '{print $1}')

      # check the fd link which is socket
      if [ "$socket" == "socket" ]; then

        # get the i-node number
        inode=$(sudo echo -n $link | awk -F '[][]' '{print $2}')

        # find TCP/UDP port by the i-node number
        str=$(cat /proc/net/$type | grep $inode)
        if [ -n "$str" ]; then
          port=$(echo -n $str | awk -F ' ' '{print $2}' | awk -F ':' '{print $2}')
          port=$(printf "%u" "0x$port")

          # display the result
          cmd=$(sudo cat /proc/$pid/status | grep Name | awk '{print $2}')
          echo "$pid	$fd	$port	$cmd"
        fi

      fi
    done

  fi
done

echo
