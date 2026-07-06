#!/bin/bash

# ==========================================
# Script: 01_fastqc.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Performs quality control of paired-end
# Illumina FASTQ files using FastQC.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

RAW_DIR="$PROJECT_DIR/data/raw"
OUTPUT_DIR="$PROJECT_DIR/results/fastqc"

mkdir -p "$OUTPUT_DIR"

echo "Running FastQC..."

fastqc \
    "$RAW_DIR/SRR29047031_1.fastq.gz" \
    "$RAW_DIR/SRR29047031_2.fastq.gz" \
    --outdir "$OUTPUT_DIR"

echo "FastQC completed successfully."
