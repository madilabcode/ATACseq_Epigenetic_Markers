samtools merge /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Good/merged_CD8_Good.bam /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Good/*.bam
samtools index /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Good/merged_CD8_Good.bam

samtools merge /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/merged_CD8_Poor.bam /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/*.bam
samtools index /home/kfirinbal/ATAC-seq_CovVac/Groups/CD8/CD8_Poor/merged_CD8_Poor.bam




#nohup bash merge_Bam_Files_CD8.sh > merge_Bam_Files_CD8.log 2>&1 &
