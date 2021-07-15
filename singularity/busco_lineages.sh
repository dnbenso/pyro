#!/bin/bash
# Call this with the pyro.simg:
# singularity exec singularity/pyro.simg bash singularity/busco_lineages.sh
export AUGUSTUS_CONFIG_PATH=$(pwd)/pyro/config
export PYTHONPATH=/usr/local/lib/python3.8/site-packages
busco --list-datasets
busco -i ./reference/ref.fa -o run_ref -l nematoda_odb10 -m geno -f --download_path ./config/
