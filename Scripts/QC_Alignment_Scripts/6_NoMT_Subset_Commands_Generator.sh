while read sample; do
    echo "samtools view -bh BSF_1580_HTNFCDMXY${sample}.bam 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y > ./MT_removed/${sample}_NoMT_subset.bam" \
   	 "&& samtools index ./MT_removed/${sample}_NoMT_subset.bam"    \
   	 "&& samtools flagstat ./MT_removed/${sample}_NoMT_subset.bam > ./MT_removed/${sample}_NoMT_subset_map_stats.txt"
done</home/kfirinbal/ATAC-seq_CovVac/sample_ids_NoHashtag.txt