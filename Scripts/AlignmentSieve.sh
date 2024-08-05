#!/bin/bash

# Create necessary directories if they do not exist
mkdir -p ./Sieved

for file in ./*.bam; do
  base=$(basename $file .bam)
  
  alignmentSieve --numberOfProcessors max --ATACshift --blackListFileName /home/kfirinbal/ATAC-seq_CovVac/ENCODE_BlackList_Regions/hg38-blacklist.v2.bed --bam $file -o ./Sieved/${base}.shifted.bam
  
  # Sort the BAM file by coordinate
  samtools sort -o ./Sieved/${base}.shifted.sorted.bam ./Sieved/${base}.shifted.bam
  
  # Index the sorted BAM file
  samtools index ./Sieved/${base}.shifted.sorted.bam

 # Remove the unsorted shifted BAM file
  rm ./Sieved/${base}.shifted.bam
done
