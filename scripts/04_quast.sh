#!/bin/bash

# ==========================================
# Script: 04_quast.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Evaluates genome assembly quality using QUAST.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

ASSEMBLY="$PROJECT_DIR/results/assembly/contigs.fasta"
OUTPUT="$PROJECT_DIR/results/quast"

mkdir -p "$OUTPUT"

echo "Running QUAST..."

quast.py \
    "$ASSEMBLY" \
    -o "$OUTPUT"

echo "QUAST completed successfully."
