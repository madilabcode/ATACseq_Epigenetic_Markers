#!/bin/bash
#ALL ACCESSIBLE SITES
TFDIR_KLF7="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/KLF7_MA1959.2/beds/KLF7_MA1959.2_all.bed"
TFDIR_POU4F1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F1_MA0790.2/beds/POU4F1_MA0790.2_all.bed"
TFDIR_SPT15="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/SPT15_MA0386.2/beds/SPT15_MA0386.2_all.bed"
TFDIR_l3neo38="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/l3neo38_MA2316.1/beds/l3neo38_MA2316.1_all.bed"
TFDIR_POU1F1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU1F1_MA0784.3/beds/POU1F1_MA0784.3_all.bed"
TFDIR_GLIS1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/GLIS1_MA0735.2/beds/GLIS1_MA0735.2_all.bed"
TFDIR_POU4F3="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F3_MA0791.2/beds/POU4F3_MA0791.2_all.bed"
TFDIR_VEZF1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/VEZF1_MA1578.2/beds/VEZF1_MA1578.2_all.bed"
bw_Good="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Good/ATACorrect/CD4_Good_merged_corrected.bw"
bw_Poor="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Poor/ATACorrect/CD4_Poor_merged_corrected.bw"

TOBIAS PlotAggregate --TFBS ${TFDIR_KLF7} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_KLF7_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_POU4F1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_POU4F1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_SPT15} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_SPT15_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_l3neo38} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_l3neo38_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_POU1F1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_POU1F1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_GLIS1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_GLIS1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_POU4F3} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_POU4F3_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x
TOBIAS PlotAggregate --TFBS ${TFDIR_VEZF1} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_VEZF1_footprint_comparison_all_accessible_sites.png --share_y both --plot_boundaries --signal-on-x

#BOUND SITES

TFDIR_KLF7_CD4_Good_Bound="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/KLF7_MA1959.2/beds/KLF7_MA1959.2_CD4_Good_bound.bed"
TFDIR_KLF7_CD4_Poor_Bound="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/KLF7_MA1959.2/beds/KLF7_MA1959.2_CD4_Poor_bound.bed"

TFDIR_POU4F1_CD4_Good_Bound="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F1_MA0790.2/beds/POU4F1_MA0790.2_CD4_Good_bound.bed"
TFDIR_POU4F1_CD4_Poor_Bound="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F1_MA0790.2/beds/POU4F1_MA0790.2_CD4_Poor_bound.bed"



TOBIAS PlotAggregate --TFBS ${TFDIR_KLF7_CD4_Good_Bound} ${TFDIR_KLF7_CD4_Poor_Bound} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_KLF7_footprint_comparison_bound_sites.png --share_y both --plot_boundaries
TOBIAS PlotAggregate --TFBS ${TFDIR_POU4F1_CD4_Good_Bound} ${TFDIR_POU4F1_CD4_Poor_Bound} --signals ${bw_Good} ${bw_Poor} --output ./PlotAggregate/CD4_POU4F1_footprint_comparison_bound_sites.png --share_y both --plot_boundaries

