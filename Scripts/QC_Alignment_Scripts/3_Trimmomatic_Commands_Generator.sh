while read sample; do
    echo trimmomatic PE -threads 20 \
    /home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/fastqsgzs/BSF_1580_HTNFCDMXY_1${sample}.fastq.gz /home/kfirinbal/ATAC-seq_CovVac/BSF_1580_HTNFCDMXY__ACO28_POOL01_L6243/fastqsgzs/BSF_1580_HTNFCDMXY_2${sample}.fastq.gz\
        BSF_1580_HTNFCDMXY_1${sample}_tr_1P.fastq.gz ./Us_Files/BSF_1580_HTNFCDMXY_1${sample}_tr_1U.fastq.gz \
        BSF_1580_HTNFCDMXY_2${sample}_tr_2P.fastq.gz ./Us_Files/BSF_1580_HTNFCDMXY_2${sample}_tr_2U.fastq.gz \
        ILLUMINACLIP:/home/kfirinbal/ATAC-seq_CovVac/NexteraPE-PE.fa:2:30:10 \
        HEADCROP:15 \
        MINLEN:30
done < ../../sample_ids_noReadNumbers.txt

