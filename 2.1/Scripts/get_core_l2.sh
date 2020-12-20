#!/bin/bash

# Change benchmark_name variable and output variable
benchmark_name='/specmcf'
mcpat="McPAT_files$benchmark_name"
benchmarks="benchmarks$benchmark_name"
energy_output="print_energy$benchmark_name"
output="results_specmcf"

touch $output

for file in $(ls $mcpat/*.txt)
do
  name=$(echo $file | rev | cut -d'/' -f1 | rev | cut -d'.' -f1)
  echo \"benchmark\": \"$name\", >> $output

  for i in 59 60 62 64 65 275 276 278 280 281 
  do
    line=$i;
    prep=`grep -ne ^ $mcpat/$name.txt | grep -e ^$line:`; 
    echo "${prep#$line:}" >> $output ;
  done
  
  echo "" >> $output
      		
done


