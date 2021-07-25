#!/bin/bash
for ((NUM = 1; NUM <= 10; NUM++))
do 
    filename=random_text_$NUM.txt;
    tr -dc 'A-Za-z0-9!"#$%&'\''()*+,-./:;<=>?@[\]^_`{|}~' </dev/urandom | head -c 1000 > $filename;
done
