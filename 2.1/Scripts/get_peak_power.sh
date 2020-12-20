#!/bin/bash

# Change benchmark_name variable and output variable
benchmark_name='/specsjeng'
mcpat="McPAT_files$benchmark_name"
benchmarks="benchmarks$benchmark_name"
energy_output="print_energy$benchmark_name"
output="results_specsjeng"

touch $output

for file in $(ls $mcpat/*.txt)
do
  name=$(echo $file | rev | cut -d'/' -f1 | rev | cut -d'.' -f1)
  echo \"benchmark\": \"$name\", >> $output

  line="14";
  prep=`grep -ne ^ $mcpat/$name.txt | grep -e ^$line:`; 
  echo "${prep#$line:}" >> $output ;

  echo "" >> $output
      		
done
