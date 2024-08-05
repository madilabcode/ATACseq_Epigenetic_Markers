#!/bin/bash

# Directory containing your fastq.gz files
FASTQ_DIR="../"

# Output directory for FastQC results
OUTPUT_DIR="./"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Loop through each fastq.gz file in the directory
for FILE in "$FASTQ_DIR"/*.fastq.gz; do
    # Extract the base name of the file (without the path and extension)
    BASENAME=$(basename "$FILE" .fastq.gz)
    
    # Create a directory for the FastQC output
    mkdir -p "$OUTPUT_DIR/$BASENAME"
    
    # Run FastQC and save the results in the corresponding directory
    fastqc "$FILE" -o "$OUTPUT_DIR/$BASENAME"
done
