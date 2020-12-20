#!/bin/bash

# Change benchmark_name variable 
benchmark_name='/specmcf'
mcpat="McPAT_files$benchmark_name"
benchmarks="benchmarks$benchmark_name"
print_energy='Scripts/print_energy.py'
output="print_energy$benchmark_name"

for file in $(ls $mcpat/*.txt)
do
  name=$(echo $file | rev | cut -d'/' -f1 | rev | cut -d'.' -f1)
  echo "$name"
  python2 $print_energy $mcpat/$name.txt $benchmarks/$name/stats.txt > "$name.txt"
  mv "$name.txt" $output
done
