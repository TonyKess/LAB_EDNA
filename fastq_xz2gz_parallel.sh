#!/bin/bash
#SBATCH --time=12:00:00
#SBATCH --account=def-ibradbur
#SBATCH --mail-type=ALL
#SBATCH --mail-user=tonykess@gmail.com
#SBATCH --nodes=1
#SBATCH --mem=0
#SBATCH --cpus-per-task=32
#SBATCH --kill-on-invalid=yes
#SBATCH --job-name=fastq_xz2gz_parallel.sh


ls *xz | sed 's/.xz//' > XZfilelist

cat XZfilelist | parallel --jobs 32 ' xz -c -d {}.xz | gzip {}.gz '

