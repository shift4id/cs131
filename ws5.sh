#!/bin/bash

FILENAME="t1000_customers.txt"
LINES=$(cat $FILENAME)
COUNTER=1
for LINE in $LINES
do
    echo "[$COUNTER/1000]: $LINE"
    COUNTER=$((COUNTER+1))
    cat amazon_reviews_us_Books_v1_02.tsv | grep $LINE > CUSTOMERS/${LINE}.txt
done

