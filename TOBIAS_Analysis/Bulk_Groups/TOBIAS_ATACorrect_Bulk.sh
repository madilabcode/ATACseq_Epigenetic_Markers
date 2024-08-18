#!/bin/bash

# Genome size
genome_size=2701495711
genome_fa="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
#genome="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz"
blacklist_bed="/home/kfirinbal/ATAC-seq_CovVac/ENCODE_BlackList_Regions/hg38-blacklist.v2.bed"


BASE_DIR="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/"

for GROUP in CD4/CD4_Good CD4/CD4_Poor CD8/CD8_Good CD8/CD8_Poor; do
  SAMPLE_NAME=${GROUP#*/}
  echo $SAMPLE_NAME
  bam_file="${BASE_DIR}/${GROUP}/${SAMPLE_NAME}_merged.bam"
      
  # Output directory for peak files
  PEAKS_DIR=${BASE_DIR}${GROUP}/Peaks/
  OUTPUT_DIR=${BASE_DIR}${GROUP}/ATACorrect/
  
  # Create the output directory if it doesn't exist
  mkdir -p "$OUTPUT_DIR"

  # Run TOBIAS ATACorrect
  TOBIAS ATACorrect --bam "$bam_file" --genome $genome_fa --peaks "${PEAKS_DIR}/${SAMPLE_NAME}_peak_peaks.narrowPeak" --blacklist $blacklist_bed --outdir $OUTPUT_DIR --cores 30 --split 10

done


#nohup bash TOBIAS_ATACorrect_Bulk.sh > TOBIAS_ATACorrect_Bulk_CD8.log 2>&1 &
