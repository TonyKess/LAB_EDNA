# Analysis of Labrador eDNA data to maximize informativeness for fishery species
This repo covers steps used in analysis of eDNA data from Labdrador, starting with xzipped (not sure why!) fastq files. To get started, this repo into your home directory

` git clone https://github.com/TonyKess/LAB_EDNA.git `


1. First, we need to convert the fastq.xz files to fastq.gz files. We will do this in parallel using the script fastq_xz2gz_parallel.sh

We will make sure it is executable:

` chmod +x fastq_xz2gz_parallel.sh `

Then submit to the SLURM scheduler on compute canada

` sbatch fastq_xz2gz_parallel.sh `


