#!/bin/bash
curl -sL http://169.254.169.254/latest/meta-data >> temp.txt
file="temp.txt"
while read -r line; do
echo -e "$line\n"
variable=$(curl -sL http://169.254.169.254/latest/meta-data/$line)
echo "$variable"
done