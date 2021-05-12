#!/bin/bash

ulimit -s unlimited
module load jdk
module load trimmomatic

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-Root-rep2.L.fastq B104-Root-rep2.R.fastq output_B104-Root-rep2.Ltrim.fastq output_B104-Root-rep2.Luntrim.fastq output_B104-Root-rep2.Rtrim.fastq output_B104-Root-rep2.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-Root-rep1.L.fastq B104-Root-rep1.R.fastq output_B104-Root-rep1.Ltrim.fastq output_B104-Root-rep1.Luntrim.fastq output_B104-Root-rep1.Rtrim.fastq output_B104-Root-rep1.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-Leaf-rep2.L.fastq B104-Leaf-rep2.R.fastq output_B104-Leaf-rep2.Ltrim.fastq output_B104-Leaf-rep2.Luntrim.fastq output_B104-Leaf-rep2.Rtrim.fastq output_B104-Leaf-rep2.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-Leaf-rep1.L.fastq B104-Leaf-rep1.R.fastq output_B104-Leaf-rep1.Ltrim.fastq output_B104-Leaf-rep1.Luntrim.fastq output_B104-Leaf-rep1.Rtrim.fastq output_B104-Leaf-rep1.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-input-rep2.L.fastq B104-input-rep2.R.fastq output_B104-input-rep2.Ltrim.fastq output_B104-input-rep2.Luntrim.fastq output_B104-input-rep2.Rtrim.fastq output_B104-input-rep2.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30

java -jar /opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/bin/trimmomatic-0.36.jar PE -threads 32 -phred33 B104-input-rep1.L.fastq B104-input-rep1.R.fastq output_B104-input-rep1.Ltrim.fastq output_B104-input-rep1.Luntrim.fastq output_B104-input-rep1.Rtrim.fastq output_B104-input-rep1.Runtrim.fastq ILLUMINACLIP:/opt/rit/spack-app/linux-rhel7-x86_64/gcc-4.8.5/trimmomatic-0.36-lkktrbakk2a32djk45nokwrtgc6h5mzo/share/adapters/NexteraPE-PE.fa:2:30:10: LEADING:0 TRAILING:0 SLIDINGWINDOW:3:20 MINLEN:30
