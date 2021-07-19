#!/bin/bash

for sample in *.gff3
        do
                echo $sample
                describer=$(echo ${sample} | sed 's/.gff3//')
                echo $describer

cat ${sample} | grep -v "#" | sed -e 's/ID=//g; s/CDS://g' | tr ';' '\t' | awk -v OFS="\t" '{if($3 == "CDS")print $1,$4,$5,$9,$9,$7}' | sed -e 's/_P[0-9]*//g' | sort -k1,1 -k4,4 | groupBy -i - -g 1,4 -c 2,3,6 -o min,max,distinct | awk -v OFS="\t" '{print $1,$3,$4,$2,$2,$5}' | bedtools sort > ${describer}_CDS_sorted.bed

done
