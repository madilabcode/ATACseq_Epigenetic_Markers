TFDIR_POU1F1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU1F1_MA0784.3/beds/POU1F1_MA0784.3_all.bed"
TFDIR_GLIS1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/BINDetect_CD4_GoodvsPoor_JASPAR2024_CORE_non-redundant/GLIS1_MA0735.2/beds/GLIS1_MA0735.2_all.bed"

bw_Good="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Good/ATACorrect/CD4_Good_merged_corrected.bw"
bw_Poor="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/CD4_Poor/ATACorrect/CD4_Poor_merged_corrected.bw"

TOBIAS PlotHeatmap --TFBS ${TFDIR_POU1F1} --signals ${bw_Good} ${bw_Poor} --signal_labels CD8_Good CD8_Poor --share_colorbar --sort_by -1 --output "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/PlotHeatmap/CD4_POU1F1_heatmap.png"

TOBIAS PlotHeatmap --TFBS ${TFDIR_GLIS1} --signals ${bw_Good} ${bw_Poor} --signal_labels CD8_Good CD8_Poor --share_colorbar --sort_by -2 --output "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD4/PlotHeatmap/CD4_GLIS1_heatmap.png"