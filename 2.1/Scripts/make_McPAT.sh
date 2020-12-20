#!/bin/bash

# Change benchmark_name variable and xml path for each benchmark
benchmark_name='/spechmmer'
mcpat='./mcpat/mcpat'
xmls='xml_files/spechmmer_xml/*.xml'
output="McPAT_files$benchmark_name"

for file in $(ls $xmls)
do
  name=$(echo $file | rev | cut -d'/' -f1 | rev | cut -d'.' -f1)
  echo $name
  $mcpat -infile $file -print_level 5 > "$name.txt" 
  mv "$name.txt" $output
done
