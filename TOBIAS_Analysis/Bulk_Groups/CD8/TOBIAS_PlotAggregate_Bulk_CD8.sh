#!/bin/bash
#ALL ACCESSIBLE SITES

TFDIR_POU4F3="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F3_MA0791.2/beds/POU4F3_MA0791.2_all.bed"
TFDIR_VEZF1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/VEZF1_MA1578.2/beds/VEZF1_MA1578.2_all.bed"
TFDIR_MEOX1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/MEOX1_MA0661.2/beds/MEOX1_MA0661.2_all.bed"
TFDIR_HES1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/HES1_MA1099.3/beds/HES1_MA1099.3_all.bed"

bw_Good="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Good/ATACorrect/CD8_Good_merged_corrected.bw"
bw_Poor="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Poor/ATACorrect/CD8_Poor_merged_corrected.bw"

TOBIAS PlotAggregate --TFBS ${TFDIR_POU4F3} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD8_POU4F3_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_VEZF1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD8_VEZF1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x

TOBIAS PlotAggregate --TFBS ${TFDIR_MEOX1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD8_MEOX1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_HES1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD8_HES1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x

