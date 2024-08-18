#!/bin/bash

BASE_DIR="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/"
genomefa="/home/kfirinbal/ATAC-seq_CovVac/Reference_Annotations/Homo_sapiens.GRCh38.dna.primary_assembly.fa"
MOTIFS="/home/kfirinbal/ATAC-seq_CovVac/Groups/JASPAR2024_CORE_non-redundant_pfms_jaspar.txt"

declare -A Footprints_DIRS=( 
    ["CD4_Good"]="${BASE_DIR}CD4/CD4_Good/ScoreBigWig/"
    ["CD4_Poor"]="${BASE_DIR}CD4/CD4_Poor/ScoreBigWig/"
    ["CD8_Good"]="${BASE_DIR}CD8/CD8_Good/ScoreBigWig/"
    ["CD8_Poor"]="${BASE_DIR}CD8/CD8_Poor/ScoreBigWig/"
)

declare -A OUTPUT_DIRS=(
    ["CD4"]="${BASE_DIR}/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/"
    ["CD8"]="${BASE_DIR}/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/"
)
#CD4
for type in CD8; do
    mkdir -p "${OUTPUT_DIRS[$type]}"

    mkdir -p "${BASE_DIR}${type}/Combined_Peaks_Bulk/"
    
    cat "${BASE_DIR}${type}/${type}_Good/Peaks/${type}_Good_peak_peaks.narrowPeak" \
        "${BASE_DIR}${type}/${type}_Poor/Peaks/${type}_Poor_peak_peaks.narrowPeak" > \
        "${BASE_DIR}${type}/Combined_Peaks_Bulk/Bulk_Combined_${type}_Good_Poor_peaks.narrowPeak"

    TOBIAS BINDetect --signals \
        ${Footprints_DIRS[${type}_Good]}/${type}_Good_footprints.bw \
        ${Footprints_DIRS[${type}_Poor]}/${type}_Poor_footprints.bw \
        --cond-names "${type}_Good" "${type}_Poor" \
        --peaks "${BASE_DIR}${type}/Combined_Peaks_Bulk/Bulk_Combined_${type}_Good_Poor_peaks.narrowPeak" \
        --motifs ${MOTIFS} --genome ${genomefa} --outdir ${OUTPUT_DIRS[$type]} --time-series --cores 30 --split 15
done



#nohup bash TOBIAS_BINDetect_Bulk.sh > TOBIAS_BINDetect_Bulk_CD8_GoodvsPoor.log 2>&1 &