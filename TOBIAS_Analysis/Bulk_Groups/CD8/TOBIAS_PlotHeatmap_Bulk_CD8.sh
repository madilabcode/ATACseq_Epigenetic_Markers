TFDIR_POU4F3="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/POU4F3_MA0791.2/beds/POU4F3_MA0791.2_all.bed"
TFDIR_VEZF1="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/BINDetect_CD8_GoodvsPoor_JASPAR2024_CORE_non-redundant/VEZF1_MA1578.2/beds/VEZF1_MA1578.2_all.bed"

bw_Good="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Good/ATACorrect/CD8_Good_merged_corrected.bw"
bw_Poor="/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/CD8_Poor/ATACorrect/CD8_Poor_merged_corrected.bw"

TOBIAS PlotHeatmap --TFBS ${TFDIR_POU4F3} --signals ${bw_Good} ${bw_Poor} --signal_labels CD8_Good CD8_Poor --share_colorbar --sort_by -1 --output "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/PlotHeatmap/CD8_POU4F3_heatmap.png"

TOBIAS PlotHeatmap --TFBS ${TFDIR_VEZF1} --signals ${bw_Good} ${bw_Poor} --signal_labels CD8_Good CD8_Poor --share_colorbar --sort_by -2 --output "/home/kfirinbal/ATAC-seq_CovVac/Bulk_Groups/CD8/PlotHeatmap/CD8_VEZF1_heatmap.png"