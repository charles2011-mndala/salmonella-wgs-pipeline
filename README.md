# 🧬 Salmonella *enterica* Whole-Genome Sequencing (WGS) Pipeline

A reproducible bioinformatics workflow for analyzing Illumina whole-genome sequencing (WGS) data from *Salmonella enterica*. This pipeline performs quality assessment, read trimming, genome assembly, assembly quality evaluation, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection.

---

## 📖 Project Overview

This repository demonstrates an end-to-end bacterial genome analysis workflow developed using open-source bioinformatics tools on Ubuntu Linux.

The pipeline was designed to provide a reproducible framework for analyzing *Salmonella enterica* whole-genome sequencing data from raw sequencing reads to biologically meaningful results.

---

## 🎯 Objectives

- Perform quality assessment of raw Illumina sequencing reads.
- Improve read quality through trimming and filtering.
- Assemble the bacterial genome.
- Evaluate assembly quality.
- Annotate genomic features.
- Determine the Multilocus Sequence Type (MLST).
- Identify antimicrobial resistance genes using the CARD database.

---

## 🔬 Workflow

```text
Raw FASTQ Reads
        │
        ▼
     FastQC
        │
        ▼
      fastp
        │
        ▼
     SPAdes
        │
        ▼
      QUAST
        │
        ▼
     Prokka
        │
        ▼
       MLST
        │
        ▼
 ABRicate (CARD)
```
---

## 📂 Repository Structure

```text
salmonella-wgs-pipeline/
├── data/
│   ├── raw/
│   └── trimmed/
├── docs/
│   └── analysis.md
├── results/
│   ├── fastqc/
│   ├── fastp/
│   ├── assembly/
│   ├── quast/
│   ├── prokka/
│   ├── mlst/
│   └── abricate/
├── scripts/
│   ├── 01_fastqc.sh
│   ├── 02_fastp.sh
│   ├── 03_spades.sh
│   ├── 04_quast.sh
│   ├── 05_prokka.sh
│   ├── 06_mlst.sh
│   └── 07_abricate.sh
├── README.md
├── LICENSE
├── CITATION.cff
└── .gitignore
```
