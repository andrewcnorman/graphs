#!/bin/bash
#
# Andrew C. Norman
# Radley College
# 2025-11-18
# 
# Extracts the data for the stable elements only to stablesdata.dat
# Usage: ./extractstables2025.sh

echo "# stable nuclide data (a subset of 'data2020.dat')" > stablesdata2020.dat

cat stables2020.dat | while read LINE
do
# put A and Z for that nuclide into variables
A=$(echo "$LINE" | cut --delimiter=" " -f 1)
Z=$(echo "$LINE" | cut --delimiter=" " -f 2)
# now find the data for stable nuclide and put it into data.dat
grep -E "^$A $Z" data2020.dat >> stablesdata2020.dat
done
