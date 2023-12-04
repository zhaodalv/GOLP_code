#!/bin/bash


#sample_file=$1
#WORKDIR=$1
#REF=$2     #Path of folder containing 10x-compatible transcriptome reference
#Fq_dir=$4
#Sample=$5 Sample is Samplename and out_put name
#T
#MEM
cd ${WORKDIR}
read Sample Fq_dir < ${sample_file}

echo "cellranger count begins...."
cellranger count --id=${Sample} --transcriptome=${REF} --fastqs=${Fq_dir} --sample=${Sample} --localcores=${T} --localmem=${MEM}

if [ $? -eq 0 ]; then
echo "cell ranger count S"
else
echo "F"
fi

echo "cellranger count --id=${Sample} --transcriptome=${REF} --fastqs=${Fq_dir} --sample=${Sample} --localcores=${T} --localmem=${MEM}" >${WORKDIR}/${Sample}/temp
