#!/bin/bash
CD4_Good="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/Groups/CD4/CD4_Good/"
CD4_Poor="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/Groups/CD4/CD4_Poor/"

CD8_Good="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/Groups/CD8/CD8_Good/"
CD8_Poor="/home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/bwa_mem_Output_Trimmed_Try2/MT_removed/Removed_BlkLst_/Sieved/Groups/CD8/CD8_Poor/"
#CD4 GOOD
mv G08CD4_S145927_*.bam ${CD4_Good}
mv G09CD4_S145929_*.bam ${CD4_Good}
mv G48CD4_S145936_*.bam ${CD4_Good}
mv G58CD4_S145925_*.bam ${CD4_Good}
mv G70CD4_S145923_*.bam ${CD4_Good}

mv G08CD4_S145927_*.bai ${CD4_Good}
mv G09CD4_S145929_*.bai ${CD4_Good}
mv G48CD4_S145936_*.bai ${CD4_Good}
mv G58CD4_S145925_*.bai ${CD4_Good}
mv G70CD4_S145923_*.bai ${CD4_Good}

mv ./peak_files/G08CD4_S145927_*.* ${CD4_Good}/Peaks
mv ./peak_files/G09CD4_S145929_*.* ${CD4_Good}/Peaks
mv ./peak_files/G48CD4_S145936_*.* ${CD4_Good}/Peaks
mv ./peak_files/G58CD4_S145925_*.* ${CD4_Good}/Peaks
mv ./peak_files/G70CD4_S145923_*.* ${CD4_Good}/Peaks

mv ./TOBIAS_FootPrint_Permitted/G08CD4_S145927_*.* ${CD4_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G09CD4_S145929_*.* ${CD4_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G48CD4_S145936_*.* ${CD4_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G58CD4_S145925_*.* ${CD4_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G70CD4_S145923_*.* ${CD4_Good}/TOBIAS



#CD4 POOR
mv G44CD4_S145919_*.bam ${CD4_Poor}
mv G50CD4_S145934_*.bam ${CD4_Poor}
mv G52CD4_S145933_*.bam ${CD4_Poor}
mv G81CD4_S145921_*.bam ${CD4_Poor}

mv G44CD4_S145919_*.bai ${CD4_Poor}
mv G50CD4_S145934_*.bai ${CD4_Poor}
mv G52CD4_S145933_*.bai ${CD4_Poor}
mv G81CD4_S145921_*.bai ${CD4_Poor}

mv ./peak_files/G44CD4_S145919_*.* ${CD4_Poor}/Peaks
mv ./peak_files/G50CD4_S145934_*.* ${CD4_Poor}/Peaks
mv ./peak_files/G52CD4_S145933_*.* ${CD4_Poor}/Peaks
mv ./peak_files/G81CD4_S145921_*.* ${CD4_Poor}/Peaks

mv ./TOBIAS_FootPrint_Permitted/G44CD4_S145919_*.* ${CD4_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G50CD4_S145934_*.* ${CD4_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G52CD4_S145933_*.* ${CD4_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G81CD4_S145921_*.* ${CD4_Poor}/TOBIAS
#CD8 GOOD
mv G08CD8_S145930_*.bam ${CD8_Good}
mv G09CD8_S145931_*.bam ${CD8_Good}
mv G48CD8_S145920_*.bam ${CD8_Good}
mv G58CD8_S145928_*.bam ${CD8_Good}
mv G70CD8_S145926_*.bam ${CD8_Good}

mv G08CD8_S145930_*.bai ${CD8_Good}
mv G09CD8_S145931_*.bai ${CD8_Good}
mv G48CD8_S145920_*.bai ${CD8_Good}
mv G58CD8_S145928_*.bai ${CD8_Good}
mv G70CD8_S145926_*.bai ${CD8_Good}

mv ./peak_files/G08CD8_S145930_*.* ${CD8_Good}/Peaks
mv ./peak_files/G09CD8_S145931_*.* ${CD8_Good}/Peaks
mv ./peak_files/G48CD8_S145920_*.* ${CD8_Good}/Peaks
mv ./peak_files/G58CD8_S145928_*.* ${CD8_Good}/Peaks
mv ./peak_files/G70CD8_S145926_*.* ${CD8_Good}/Peaks

mv ./TOBIAS_FootPrint_Permitted/G08CD8_S145930_*.* ${CD8_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G09CD8_S145931_*.* ${CD8_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G48CD8_S145920_*.* ${CD8_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G58CD8_S145928_*.* ${CD8_Good}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G70CD8_S145926_*.* ${CD8_Good}/TOBIAS


#CD8 POOR
mv G27CD8_S145935_*.bam ${CD8_Poor}
mv G44CD8_S145922_*.bam ${CD8_Poor}
mv G50CD8_S145937_*.bam ${CD8_Poor}
mv G52CD8_S145932_*.bam ${CD8_Poor}
mv G81CD8_S145924_*.bam ${CD8_Poor}

mv G27CD8_S145935_*.bai ${CD8_Poor}
mv G44CD8_S145922_*.bai ${CD8_Poor}
mv G50CD8_S145937_*.bai ${CD8_Poor}
mv G52CD8_S145932_*.bai ${CD8_Poor}
mv G81CD8_S145924_*.bai ${CD8_Poor}

mv ./peak_files/G27CD8_S145935_*.* ${CD8_Poor}/Peaks
mv ./peak_files/G44CD8_S145922_*.* ${CD8_Poor}/Peaks
mv ./peak_files/G50CD8_S145937_*.* ${CD8_Poor}/Peaks
mv ./peak_files/G52CD8_S145932_*.* ${CD8_Poor}/Peaks
mv ./peak_files/G81CD8_S145924_*.* ${CD8_Poor}/Peaks

mv ./TOBIAS_FootPrint_Permitted/G27CD8_S145935_*.* ${CD8_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G44CD8_S145922_*.* ${CD8_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G50CD8_S145937_*.* ${CD8_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G52CD8_S145932_*.* ${CD8_Poor}/TOBIAS
mv ./TOBIAS_FootPrint_Permitted/G81CD8_S145924_*.* ${CD8_Poor}/TOBIAS
