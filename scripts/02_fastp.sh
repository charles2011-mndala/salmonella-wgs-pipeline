#!/bin/bash

# ==========================================
# Script: 02_fastp.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Trims paired-end Illumina reads using fastp.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

RAW_DIR="$PROJECT_DIR/data/raw"
TRIM_DIR="$PROJECT_DIR/data/trimmed"
REPORT_DIR="$PROJECT_DIR/results/fastp"

mkdir -p "$TRIM_DIR"
mkdir -p "$REPORT_DIR"

echo "Starting read trimming with fastp..."

fastp \
    -i "$RAW_DIR/SRR29047031_1.fastq.gz" \
    -I "$RAW_DIR/SRR29047031_2.fastq.gz" \
    -o "$TRIM_DIR/SRR29047031_R1_trimmed.fastq.gz" \
    -O "$TRIM_DIR/SRR29047031_R2_trimmed.fastq.gz" \
    --html "$REPORT_DIR/fastp_report.html" \
    --json "$REPORT_DIR/fastp_report.json" \
    --thread 4

echo "Read trimming completed successfully."
