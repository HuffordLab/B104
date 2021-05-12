#!/bin/bash
for bam in *.bam; do
bedfile=${bam%.*}.bed
module load bedtools2
bedtools bamtobed -i $bam > $bedfile
done
