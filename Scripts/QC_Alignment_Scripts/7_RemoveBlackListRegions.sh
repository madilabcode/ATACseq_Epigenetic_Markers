#!/bin/bash
# Create necessary directories if they do not exist
mkdir -p ./Removed_BlkLst_
for file in ./*.bam; do
  base=$(basename $file .bam)
  #Remove reads within the blacklist regions
  bedtools intersect -nonamecheck -v -abam $file -b /home/kfirinbal/ATAC-seq_CovVac/ENCODE_BlackList_Regions/hg38-blacklist.v2.bed > ${base}.tmp.bam
  
  #Sort and index the bam file
  samtools sort -O bam -o ./Removed_BlkLst_/${base}.blacklist-filtered.bam ${base}.tmp.bam
  samtools index ./Removed_BlkLst_/${base}.blacklist-filtered.bam
  
  rm ${base}.tmp.bam
done