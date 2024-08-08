#!/bin/bash

# Define base directories
BASE_DIR="/home/kfirinbal/ATAC-seq_CovVac/Groups/"
genomefa="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
#genome="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa.gz"
#MOTIFS="/home/kfirinbal/ATAC-seq_CovVac/Groups/data-tobias-2020/motifs.jaspar"
MOTIFS="/home/kfirinbal/ATAC-seq_CovVac/Groups/JASPAR2024_CORE_non-redundant_pfms_jaspar.txt"

# Loop through each group and run TOBIAS Footprint
for GROUP in CD4/CD4_Good CD4/CD4_Poor CD8/CD8_Good CD8/CD8_Poor; do
  Footprints_DIR="${BASE_DIR}${GROUP}/ScoreBigWig/"
  PEAKS_DIR="${BASE_DIR}${GROUP}/Peaks/"
  OUTPUT_DIR="${BASE_DIR}${GROUP}/BINDetect_JASPAR2024_CORE_non-redundant/"
  mkdir -p "${OUTPUT_DIR}"
  
  TOBIAS BINDetect --signals ${Footprints_DIR}/*.bw \
                   --peaks ${PEAKS_DIR}/merged_peaks.narrowPeak \
                   --motifs ${MOTIFS} \
                   --genome ${genomefa} \
                   --outdir ${OUTPUT_DIR} \
                   --cores 30 \
                   --split 15
done

 #--peak-header peak_header.txt \

#TOBIAS BINDetect --signals ${Footprints_DIR}/*.bw \
#                   --peaks ${PEAKS_DIR}/merged_peaks.bed \
#                   --motifs ${PITX3JASPAR} \
#                   --genome ${genomefa} \
#                   --skip-excel \
#                   --outdir ${OUTPUT_DIR} \
#                   --cores 30 

# CD4/CD4_Good CD4/CD4_Poor CD8/CD8_Good 

#TOBIAS BINDetect --signals "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Footprints/G27CD8_S145935_footprints.bw" --peaks "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Peaks/G27CD8_S145935_peak_summits.bed" --motifs "/home/kfirinbal/ATAC-seq_CovVac/Groups/JASPAR2024_CORE_non-redundant_pfms_jaspar.txt" --genome "/home/kfirinbal/ATAC-seq_CovVac/Groups/Homo_sapiens.GRCh38.dna.primary_assembly.fa" --outdir "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/BINDetect/" --peak_header "/home/kfirinbal/ATAC-seq_CovVac/Groups/peak_header.txt" --cores 30


#nohup TOBIAS BINDetect --signals "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Footprints/G27CD8_S145935_footprints.bw" --peaks "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Peaks/G27CD8_S145935_peak_summits.bed" --motifs "/home/kfirinbal/ATAC-seq_CovVac/Groups/H12CORE_jaspar_format.txt" --genome "/home/kfirinbal/ATAC-seq_CovVac/Groups/Homo_sapiens.GRCh38.dna.primary_assembly.fa" --outdir "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/BINDetect2/" --peak_header "/home/kfirinbal/ATAC-seq_CovVac/Groups/peak_header.txt" --cores 30 --split 15 > BINDetect_Database_CORE_CD8_Poor2.log 2>&1 &

#nohup TOBIAS BINDetect --signals "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Footprints/G27CD8_S145935_footprints.bw" --peaks "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/Peaks/merged_peaks_trimmed.bed" --motifs "/home/kfirinbal/ATAC-seq_CovVac/Groups/H12CORE_jaspar_format.txt" --genome "/home/kfirinbal/ATAC-seq_CovVac/Groups/Homo_sapiens.GRCh38.dna.primary_assembly.fa" --outdir "/home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/BINDetect/" --cores 30 --split 15 > BINDetect_Database_CORE_CD8_Poor3.log 2>&1 &

#TOBIAS BINDetect --signals ./Footprints/G08CD4_S145927_footprints.bw ./Footprints/G09CD4_S145929_footprints.bw ./Footprints/G48CD4_S145936_footprints.bw ./Footprints/G58CD4_S145925_footprints.bw ./Footprints/G70CD4_S145923_footprints.bw --peaks Peaks/merged_peaks.bed --motifs PITX3_motif.jaspar --genome ../../Homo_sapiens.GRCh38.dna.primary_assembly.fa --skip-excel --cores 30 --outdir ../../../BINDetect_Results/