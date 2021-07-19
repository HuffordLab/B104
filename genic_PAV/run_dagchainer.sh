#!/bin/bash

for sample in *_dagchainer.txt; do
                echo $sample
                describer=$(basename ${sample} | sed -e 's/_dagchainer.txt//')
                echo $describer

perl /DAGCHAINER/run_DAG_chainer.pl -i ${sample} -D 1000000 -g 40000 -A 4

done
