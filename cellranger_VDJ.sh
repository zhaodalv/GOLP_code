#!/bin/bash

#WORKDIR=$1
#REF=$2     #Path of folder containing 10x-compatible transcriptome reference
#OFN=$3 #out folder name
#Fq_dir=$4
#Sample=$5
#T
#MEM
cd ${WORKDIR}
read Sample Fq_dir < ${sample_file}

echo "cellranger vdj begins...."
cellranger vdj --id=${Sample} --reference=${REF} --fastqs=${Fq_dir} --sample=${Sample} --localcores=${T} --localmem=${MEM}

if [ $? -eq 0 ]; then
echo "cell ranger vdj S"
else
echo "F"
fi

echo "cellranger vdj --id=${Sample} --reference=${REF} --fastqs=${Fq_dir} --sample=${Sample} --localcores=${T} --localmem=${MEM}" >${WORKDIR}/${Sample}/temp
