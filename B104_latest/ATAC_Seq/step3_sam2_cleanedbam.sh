#!/bin/bash

module load samtools

#coverting to bam and sort the bam file
mkdir -p samfiles bamfiles sortedbam
for sam in *.sam; do
ibam=${sam%.*}.bam
sbam=${sam%.*}_sorted.bam
samtools view --threads 36 -b -o $ibam $sam
samtools sort -o $sbam -T ${sam%.*}_temp --threads 36 $ibam
mv $sam ./samfiles/
mv $ibam ./bamfiles/
mv $sbam ./sortedbam/
done

#remove clone duplicates
module load picard
for bam in *.bam;do
out=${bam%.*}_clean.bam
java -Djava.io.tmpdir=$TMPDIR -Xmx8G -jar $PICARD MarkDuplicates INPUT=$bam OUTPUT=$out METRICS_FILE=${out}.txt REMOVE_DUPLICATES=true VALIDATION_STRINGENCY=LENIENT
done
