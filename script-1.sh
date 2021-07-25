#!/bin/bash
for file in `find /etc -maxdepth 1 -type f | head -n 100` 
do
   sed -i 's/nginx-01.com/nginx-02.com/g' $file
done
