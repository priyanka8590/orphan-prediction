#!/bin/bash

module load trinityrnaseq

THREADS=16
MEM=98G

Trinity \
   --seqType fq \
   --max_memory ${MEM} \
   --left ${1} \
   --right ${2} \
   --CPU ${THREADS} \
   --trimmomatic \
   --normalize_reads \
   --output trinity_run

