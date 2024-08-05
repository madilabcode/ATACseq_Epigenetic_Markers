#!/bin/bash

# Define base directories
BASE_DIR="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/Groups/"
TOBIAS_DIR="./TOBIAS/"

# Loop through each group and run TOBIAS Footprint
for GROUP in CD4/CD4_Good CD4/CD4_Poor CD8/CD8_Good CD8/CD8_Poor; do
    BAM_DIR="${BASE_DIR}${GROUP}"
    OUTPUT_DIR="${BAM_DIR}/Footprints"
    mkdir -p "${OUTPUT_DIR}"

    for BAM_FILE in "${BAM_DIR}"/*.bam; do
        SAMPLE=$(basename "${BAM_FILE}" _NoMT_subset.blacklist-filtered.shifted.sorted.bam)
        PEAK_FILE="${BAM_DIR}/Peaks/${SAMPLE}_peak_peaks.narrowPeak"

        # Run TOBIAS Footprint
        TOBIAS ScoreBigwig --signal "${BAM_DIR}/${TOBIAS_DIR}/${SAMPLE}_NoMT_subset.blacklist-filtered.shifted.sorted_corrected.bw" --regions "${PEAK_FILE}" --output "${OUTPUT_DIR}/${SAMPLE}_footprints.bw" --cores 30 --split 10
    done
done
