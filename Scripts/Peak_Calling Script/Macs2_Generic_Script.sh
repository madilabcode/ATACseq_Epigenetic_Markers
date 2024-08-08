#!/bin/bash

# Genome size
genome_size=2701495711

# Output directory for peak files
output_dir="peak_files"

# Create the output directory if it doesn't exist
mkdir -p "$output_dir"

# Loop through each BAM file in the directory
for bam_file in *.bam; do
  # Extract the sample name from the BAM file name
  sample_name=$(basename "$bam_file" _NoMT_subset.blacklist-filtered.shifted.sorted.bam)
  # Set the peak name
  peak_name="${sample_name}_peak"
  # Call macs2 and save results in the output directory
  macs2 callpeak -t "$bam_file" -f BAMPE -n "$output_dir/$peak_name" -g "$genome_size" --keep-dup all
done
