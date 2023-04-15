#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <days>"
  exit 1
fi

days=$1

if ! [[ "$days" =~ ^[0-9]+$ ]]; then
  echo "Error: <days> argument must be a positive integer."
  exit 1
fi

current_date=$(date +%Y-%m-%d\ %H:%M:%S)
new_date=$(date -d "$current_date + $days days" +%Y-%m-%d\ %H:%M:%S)

echo "Setting system date to $new_date ..."
sudo date -s "$new_date"
echo "System date set to $new_date"

