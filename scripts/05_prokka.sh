#!/bin/bash

# ==========================================
# Script: 05_prokka.sh
# Project: Salmonella WGS Pipeline
# Author: Charles George Mndala
# Description:
# Annotate the assembled Salmonella enterica
# genome using Prokka.
# ==========================================

set -e

PROJECT_DIR="$HOME/Bioinformatics/Projects/salmonella-wgs-pipeline"

ASSEMBLY="$PROJECT_DIR/results/assembly/contigs.fasta"
OUTPUT="$PROJECT_DIR/results/prokka"

mkdir -p "$OUTPUT"

echo "====================================="
echo "Starting genome annotation with Prokka"
echo "====================================="

prokka \
    --force \
    --outdir "$OUTPUT" \
    --prefix SRR29047031 \
    --genus Salmonella \
    --species enterica \
    --strain SRR29047031 \
    --cpus 2 \
    "$ASSEMBLY"

echo "====================================="
echo "Genome annotation completed!"
echo "====================================="
