#!/bin/bash

# ==========================================
# Script: 06_mlst.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Performs MLST typing on the assembled genome.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

ASSEMBLY="$PROJECT_DIR/results/assembly/contigs.fasta"
OUTPUT="$PROJECT_DIR/results/mlst"

mkdir -p "$OUTPUT"

echo "====================================="
echo "Running MLST..."
echo "====================================="

mlst "$ASSEMBLY" | tee "$OUTPUT/mlst_results.txt"

echo "====================================="
echo "MLST completed successfully!"
echo "====================================="
