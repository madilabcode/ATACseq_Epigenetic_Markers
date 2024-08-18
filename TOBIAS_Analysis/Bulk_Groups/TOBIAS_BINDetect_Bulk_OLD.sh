#!/bin/bash

# Define base directories
BASE_DIR="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/"
genomefa="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
MOTIFS="/home/kfirinbal/ATAC-seq_CovVac/Groups/JASPAR2024_CORE_non-redundant_pfms_jaspar.txt"

Footprints_DIR_CD4_Good="${BASE_DIR}CD4/CD4_Good/ScoreBigWig/"
Footprints_DIR_CD4_Poor="${BASE_DIR}CD4/CD4_Poor/ScoreBigWig/"

Footprints_DIR_CD8_Good="${BASE_DIR}CD8/CD8_Good/ScoreBigWig/"
Footprints_DIR_CD8_Poor="${BASE_DIR}CD8/CD8_Poor/ScoreBigWig/"

OUTPUT_DIR_CD4="${BASE_DIR}/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/"
mkdir -p "${OUTPUT_DIR_CD4}"

OUTPUT_DIR_CD8="${BASE_DIR}/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/"
mkdir -p "${OUTPUT_DIR_CD8}"




mkdir -p /home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/Combined_Peaks_Bulk/
cat "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Good/Peaks/CD4_Good_peak_peaks.narrowPeak" "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Poor/Peaks/CD4_Poor_peak_peaks.narrowPeak" > /home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/Combined_Peaks_Bulk/Bulk_Combined_CD4_Good_Poor_peaks.narrowPeak

TOBIAS BINDetect --signals ${Footprints_DIR_CD4_Good}/CD4_Good_footprints.bw ${Footprints_DIR_CD4_Poor}/CD4_Poor_footprints.bw --cond-names "CD4_Good" "CD4_Poor" --peaks "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/Combined_Peaks_Bulk/Bulk_Combined_CD4_Good_Poor_peaks.narrowPeak" --motifs ${MOTIFS} --genome ${genomefa} --outdir ${OUTPUT_DIR} --time-series --cores 30 --split 15




mkdir -p /home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/Combined_Peaks_Bulk/
cat "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Good/Peaks/CD8_Good_peak_peaks.narrowPeak" "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Poor/Peaks/CD8_Poor_peak_peaks.narrowPeak" > /home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/Combined_Peaks_Bulk/Bulk_Combined_CD8_Good_Poor_peaks.narrowPeak

TOBIAS BINDetect --signals ${Footprints_DIR_CD8_Good}/CD8_Good_footprints.bw ${Footprints_DIR_CD8_Poor}/CD8_Poor_footprints.bw --cond-names "CD8_Good" "CD8_Poor" --peaks "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/Combined_Peaks_Bulk/Bulk_Combined_CD8_Good_Poor_peaks.narrowPeak" --motifs ${MOTIFS} --genome ${genomefa} --outdir ${OUTPUT_DIR} --time-series --cores 30 --split 15




#nohup bash TOBIAS_BINDetect_Bulk_CD4_GoodvsPoor.sh > TOBIAS_BINDetect_Bulk_CD4_GoodvsPoor.log 2>&1 &