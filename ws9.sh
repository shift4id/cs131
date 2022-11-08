#!/bin/bash

if [ $# -lt 2 ];
then
  echo "$0: Missing arguments"
  exit 1
fi

while read line; do
  if [ $(($RANDOM % 100))  -lt $1 ];
    then echo "$line"
  fi
done < $2

