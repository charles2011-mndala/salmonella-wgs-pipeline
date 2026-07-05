# End-to-End Whole-Genome Sequencing Analysis Pipeline for Salmonella enterica

## Overview

This project demonstrates a complete bacterial whole-genome sequencing (WGS) analysis workflow using Illumina paired-end sequencing data. The pipeline performs quality control, read trimming, genome assembly, assembly quality assessment, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection.

The project is designed to be reproducible and serves as a portfolio project for bioinformatics, microbial genomics, and pathogen genomics.

---

## Objectives

- Assess raw sequencing read quality
- Trim low-quality reads and adapters
- Assemble the bacterial genome
- Evaluate assembly quality
- Annotate the assembled genome
- Determine MLST sequence type
- Detect antimicrobial resistance genes
- Generate a reproducible workflow

---

## Pipeline Workflow

Raw Reads
↓
FastQC
↓
fastp
↓
SPAdes
↓
QUAST
↓
Prokka
↓
MLST
↓
AMRFinderPlus
↓
Final Report

---

## Software

- FastQC
- fastp
- SPAdes
- QUAST
- Prokka
- MLST
- AMRFinderPlus
- Git
- Ubuntu Linux

---

## Project Structure

```
salmonella-wgs-pipeline/
├── data/
├── scripts/
├── results/
├── docs/
├── figures/
└── README.md
```

---

## Author

Charles George Mndala

Bioinformatics | Microbial Genomics | Pathogen Genomics
