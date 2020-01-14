#!bin/bash
FASTQ=$1
OUTDIR=$2

if [ ! -d "$OUTDIR" ]
then
	mkdir $OUTDIR
fi

gunzip -c $FASTQ | head -n 1 >> $OUTDIR/first_line.txt
