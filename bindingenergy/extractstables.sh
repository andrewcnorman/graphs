#!/bin/bash
#
# Andrew C. Norman
# Radley College
# 2018-03-28
# 
# Extracts the data for the stable elements only to stablesdata.dat
# Usage: ./extractstables.sh

echo "# stable nuclide data (a subset of 'data.dat')" > stablesdata.dat

cat stables.dat | while read LINE
do
# put A and Z for that nuclide into variables
A=$(echo "$LINE" | cut --delimiter=" " -f 1)
Z=$(echo "$LINE" | cut --delimiter=" " -f 2)
# now find the data for stable nuclide and put it into data.dat
grep -E "^$A $Z" data.dat >> stablesdata.dat
done
