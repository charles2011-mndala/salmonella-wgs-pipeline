#!/bin/bash

# ==========================================
# Script: 03_spades.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Assemble the Salmonella enterica genome
# using SPAdes.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

TRIM_DIR="$PROJECT_DIR/data/trimmed"
OUT_DIR="$PROJECT_DIR/results/assembly"

mkdir -p "$OUT_DIR"

echo "====================================="
echo "Starting SPAdes Genome Assembly"
echo "====================================="

spades.py \
    --careful \
    -1 "$TRIM_DIR/SRR29047031_R1_trimmed.fastq.gz" \
    -2 "$TRIM_DIR/SRR29047031_R2_trimmed.fastq.gz" \
    -o "$OUT_DIR" \
    -t 3 \
    -m 4

echo "====================================="
echo "Genome assembly completed successfully!"
echo "====================================="
