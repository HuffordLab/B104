The following pipeline was used to generate both the genic PAV and the syntenic orthologs used for this project.

The pipeline is run in the following order:

1) B73_B104_reciprocal_liftoff.sh
2) gff3_to_longest_CDS.sh
3) prep_for_dagchainer.sh
4) run_dagchainer.sh

The following software is required:

Liftoff: https://github.com/agshumate/Liftoff
Bedtools: https://bedtools.readthedocs.io/en/latest/
DagChainer: https://vcru.wisc.edu/simonlab/bioinformatics/programs/dagchainer/dagchainer_documentation.html
