#!/bin/bash
ulimit -s unlimited
module load bowtie

bowtie-build B104_genome_chr.fasta B104 


bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-input-rep1.Ltrim.fastq -2 output_B104-input-rep1.Rtrim.fastq -S B104_input_rep1.sam
bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-input-rep2.Ltrim.fastq -2 output_B104-input-rep2.Rtrim.fastq -S B104_input_rep2.sam 
bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-Leaf-rep1.Ltrim.fastq -2 output_B104-Leaf-rep1.Rtrim.fastq -S B104_Leaf_rep1.sam 
bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-Leaf-rep2.Ltrim.fastq -2 output_B104-Leaf-rep2.Rtrim.fastq -S B104_Leaf_rep2.sam 
bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-Root-rep1.Ltrim.fastq -2 output_B104-Root-rep1.Rtrim.fastq -S B104_Root_rep1.sam 
bowtie -X 1000 -m 1 -v 2 --best --strata B104 -1 output_B104-Root-rep2.Ltrim.fastq -2 output_B104-Root-rep2.Rtrim.fastq -S B104_Root_rep2.sam 
