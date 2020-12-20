#!/bin/bash

# Change benchmark_name variable and output variable
benchmark_name='/specmcf'
mcpat="McPAT_files$benchmark_name"
benchmarks="benchmarks$benchmark_name"
energy_output="print_energy$benchmark_name"
output="results_specmcf"

touch $output
echo "" > $output

for file in $(ls $mcpat/*.txt)
do
  name=$(echo $file | rev | cut -d'/' -f1 | rev | cut -d'.' -f1)
  leakage=$(cat $energy_output/$name.txt | grep leakage | cut -d' ' -f2)
  dynamic=$(cat $energy_output/$name.txt | grep dynamic | cut -d' ' -f5)
  runtime=$(cat $energy_output/$name.txt | grep runtime | cut -d' ' -f9)
  energy=$(cat $energy_output/$name.txt | grep energy | cut -d' ' -f3)
  #EDP=$((energy * runtime))
  EDP=$(expr $energy*$runtime | bc)
  #echo "$energy * $runtime" | bc --mathlib --quiet >> $EDP

  echo \"benchmark\": \"$name\", >> $output
  echo \"leakage\": $leakage, >> $output
  echo \"dynamic\": $dynamic, >> $output
  echo \"runtime\": $runtime, >> $output
  echo \"energy\": $energy, >> $output
  echo \"EDP\": $EDP, >> $output
  echo "" >> $output

done

echo "" >> $output
