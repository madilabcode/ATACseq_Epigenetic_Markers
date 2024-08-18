#!/bin/bash

# Genome size
genome_size=2701495711

# Loop through each BAM file in the directory
for Group in CD8_Good CD8_Poor; do
  bam_file="${Group}/${Group}_merged.bam"
  # Extract the sample name from the BAM file name
  sample_name=$(basename "$bam_file" _merged.bam)
  # Set the peak name
  peak_name="${sample_name}_peak"
    # Output directory for peak files
  output_dir=${Group}/Peaks/
  
  # Create the output directory if it doesn't exist
  mkdir -p "$output_dir"
  # Call macs2 and save results in the output directory
  macs2 callpeak -t "$bam_file" -f BAMPE -n "$output_dir/$peak_name" -g "$genome_size" --keep-dup all
done

#nohup bash Mac2_PeakCalling_Merged_Bams_CD8.sh > Mac2_PeakCalling_Merged_Bams_CD8.log 2>&1 &