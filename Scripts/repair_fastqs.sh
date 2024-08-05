#!/bin/bash

# Load BBMap module or ensure it's available in PATH
# module load BBMap  # Uncomment if using a module system

# Directory containing the FASTQ files
fastq_dir="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/fastqsgzs/Trimmed_Fastqs"

# Output directory for fixed FASTQ files
output_dir="${fastq_dir}/Fixed_Fastqs"
mkdir -p $output_dir

# Loop through the FASTQ files and find matching pairs
for r1_file in ${fastq_dir}/*_1P.fastq.gz; do
    # Get the base name of the file without the _1P.fastq.gz part
    base_name=$(basename $r1_file _1P.fastq.gz)

    # Define the corresponding _2P.fastq.gz file
    r2_file=$fastq_dir/${base_name}_2P.fastq.gz
    
    # Check if the R2 file exists
    if [[ -f $r2_file ]]; then
        # Derive output filenames
        r1_fixed=${output_dir}/$base_name"_1P_fixed.fastq.gz"
        r2_fixed=${output_dir}/$base_name"_2P_fixed.fastq.gz"
        singletons=${output_dir}/$base_name"_singletons.fastq.gz"        
        # Run repair.sh
        echo "Processing: $r1_file and $r2_file"
        repair.sh in1=$r1_file in2=$r2_file out1=$r1_fixed out2=$r2_fixed outs=$singletons
    else
        echo "Warning: Paired file for $r1_file not found!"
    fi
done

echo "Repair process completed."
