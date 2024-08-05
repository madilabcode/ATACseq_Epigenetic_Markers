#!/bin/bash

# Genome size
genome_size=2701495711
genome_fa="/data/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
blacklist_bed="/data/hg38-blacklist.v2.bed"

# Output directory for peak files
peaks_dir="/data/peak_files/"
wdir="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/"
output_dir="/data/TOBIAS_FootPrint"

# Create the output directory if it doesn't exist
mkdir -p "$wdir/$output_dir"

# Loop through each BAM file in the directory
for bam_file in "$wdir"/*.bam; do
  # Extract the sample name from the BAM file name
  sample_name=$(basename "$bam_file" _NoMT_subset.blacklist-filtered.shifted.sorted.bam)
  
  # Set the peak name
  peak_name="${sample_name}_peak_summits.bed"
  
  # Run TOBIAS ATACorrect
  docker run --rm -v "$wdir":/data quay.io/biocontainers/tobias:0.17.0--py312h1f1cfbb_0 TOBIAS ATACorrect \
    --bam /data/$(basename "$bam_file") \
    --genome $genome_fa \
    --peaks "${peaks_dir}${peak_name}" \
    --blacklist $blacklist_bed \
    --outdir $output_dir \
    --cores 10
done
