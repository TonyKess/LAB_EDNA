#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --account=def-ibradbur
#SBATCH --mail-type=ALL
#SBATCH --mail-user=samantha.crowley@dal.ca
#SBATCH --nodes=1
#SBATCH --mem=0
#SBATCH --cpus-per-task=32
#SBATCH --kill-on-invalid=yes
#SBATCH --job-name=fastq_xz2gz_parallel.sh

#get parameters file
source EDNA_params.tsv

#change directory
cd $projdir

#export source variables to keep parallel happy
export projdir

#make a list of fastq.xz names
ls *xz | sed 's/.xz//' > XZfilelist

# read in the list, pass to parallel, decompress with xz and recompress with gzip
cat XZfilelist | parallel --jobs 32 ' xz -c -d {}.xz | gzip {}.gz '

