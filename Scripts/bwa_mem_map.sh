#!/bin/bash

# Directory paths
REF="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Hg38"
FASTQ_DIR="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/fastqsgzs/Trimmed_Fastqs/Fixed_Fastqs"

# Sample identifiers
samples=("G08CD4_S145927" "G08CD8_S145930" "G09CD4_S145929" "G09CD8_S145931"
         "G27CD8_S145935" "G44CD4_S145919" "G44CD8_S145922" "G48CD4_S145936"
         "G48CD8_S145920" "G50CD4_S145934" "G50CD8_S145937" "G52CD4_S145933"
         "G52CD8_S145932" "G58CD4_S145925" "G58CD8_S145928" "G70CD4_S145923"
         "G70CD8_S145926" "G81CD4_S145921" "G81CD8_S145924")


# Loop through samples
for sample in "${samples[@]}"
do
  read1="${FASTQ_DIR}/BSF_1580_HTNFCDMXY1${sample}_tr_1P_fixed.fastq.gz"
  read2="${FASTQ_DIR}/BSF_1580_HTNFCDMXY2${sample}_tr_2P_fixed.fastq.gz"
  output_bam="BSF_1580_HTNFCDMXY${sample}.bam"
  stats_output="BSF_1580_HTNFCDMXY${sample}_map_stats.txt"

  # BWA mem, samtools sort, index, and flagstat
  bwa mem -t 2 $REF $read1 $read2 | samtools sort -@2 -o $output_bam -
  samtools index $output_bam
  samtools flagstat $output_bam > $stats_output

  echo "Processed ${sample}"
done
