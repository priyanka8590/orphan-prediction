#!/bin/bash
daname="${1%.*}"
infile="$2"
outfile="$(basename "${infile%.*}")_${daname}.out"
database="/ptmp/LAS/arnstrm/arabidopsis/phylostrata/PEP/new_spp/${daname}"
module load blast-plus
blastp \
 -query "${infile}" \
 -db "${database}" \
 -out "${outfile}" \
 -num_threads 8 \
 -outfmt "6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore score salltitles qcovs"

