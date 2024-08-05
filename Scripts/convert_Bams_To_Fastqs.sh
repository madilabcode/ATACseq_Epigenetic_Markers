#!/usr/bin/env bash

# Loop through each BAM file and convert to FASTQ
for bamfile in *.bam; do
  fastqfile="fastqgz/$(basename ${bamfile} .bam).fastq"
  echo $fastqfile
  bedtools bamtofastq -i $bamfile -fq $fastqfile
done