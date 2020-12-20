#!/bin/bash

# Change benchmark_name variable and output path for each benchmark
benchmark_name='/spechmmer'
benchmarks="benchmarks$benchmark_name"
gem5_to_mcpat='Scripts/GEM5ToMcPAT.py'
inorder='./mcpat/ProcessorDescriptionFiles/inorder_arm.xml'
output='xml_files/spechmmer_xml'

config=''
stats=''

for file in $(find $benchmarks -name stats.txt -or -name config.json | sort -h)
do
  name=$(echo $file | rev | cut -d'/' -f2 | rev)
  if [[ $file == *"config.json" ]]
  then
    config=$file
  fi
  if [[ $file == *"stats.txt" ]]
  then
    echo 'edwww'
    echo $gem5_to_mcpat $stats $config $inorder
    stats=$file
    python2 $gem5_to_mcpat $stats $config $inorder -o "$name.xml"
    mv "$name.xml" $output
  fi

	
done
