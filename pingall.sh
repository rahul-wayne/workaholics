#!/bin/bash
# Program name: pingall.sh
date
read -r -p "Enter the full path of file containing IP list:" ip_list
cat "$ip_list" |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up" 
    else
    echo "node $output is down"
    fi
done
