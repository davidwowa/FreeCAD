#!/bin/bash

echo "This tool calculate number of objects for given diameter of sphere"
echo "this tool use lib cln https://www.ginac.de/CLN/"
read -p "enter diameter in mm " diameter
echo $diameter "mm"
PI=$(pi 5)
d2=$(echo "($diameter*$diameter)" | bc -l)
area=$(echo "($PI*$d2)/2" | bc -l)
echo "area is $area mm^2"
read -p "enter size for every object in mm " size
size_area=$(echo "$size*$size" | bc -l)
echo "object area $size_area mm^2"
objects=$(echo "$area/$size_area" | bc -l)
echo "you need $objects in inkscape, area for every one is $size_area"
