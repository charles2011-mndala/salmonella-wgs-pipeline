#!/bin/bash

# ==========================================
# Script: 06_abricate.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Identify antimicrobial resistance genes
# in Salmonella enterica genome assemblies
# using ABRicate with the CARD database.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

ASSEMBLY="$PROJECT_DIR/results/assembly/contigs.fasta"

OUTPUT_DIR="$PROJECT_DIR/results/abricate"

# Create output directory
mkdir -p "$OUTPUT_DIR"

# Run ABRicate using CARD database
abricate \
--db card \
--threads 3 \
"$ASSEMBLY" \
> "$OUTPUT_DIR/abricate_card_results.tsv"

echo "ABRicate AMR analysis completed successfully."
echo "Results saved in: $OUTPUT_DIR"
