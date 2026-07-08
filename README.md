Salmonella enterica Whole-Genome Sequencing (WGS) Pipeline

A reproducible bioinformatics workflow for analyzing Illumina whole-genome sequencing (WGS) data from Salmonella enterica. This pipeline performs quality assessment, read trimming, genome assembly, assembly quality evaluation, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection.

Project Overview

This repository demonstrates an end-to-end bacterial genome analysis workflow developed using open-source bioinformatics tools on Ubuntu Linux.

The pipeline was designed to provide a reproducible framework for analyzing Salmonella enterica whole-genome sequencing data from raw sequencing reads to biologically meaningful results.

Objectives
Perform quality assessment of raw Illumina sequencing reads.
Improve read quality through trimming and filtering.
Assemble the bacterial genome.
Evaluate assembly quality.
Annotate genomic features.
Determine the Multilocus Sequence Type (MLST).
Identify antimicrobial resistance genes using the CARD database.

Workflow
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

Repository Structure
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
└── .gitignore

Software Used
Tool	Purpose
FastQC	Quality assessment of raw reads
fastp	Read trimming and filtering
SPAdes	Genome assembly
QUAST	Assembly quality assessment
Prokka	Genome annotation
MLST	Sequence typing
ABRicate	Detection of antimicrobial resistance genes

Input
Paired-end Illumina FASTQ files

Output

The pipeline generates:

FastQC quality reports
Trimmed sequencing reads
Genome assembly (contigs and scaffolds)
Assembly quality reports
Genome annotation files
MLST sequence type
Antimicrobial resistance gene report

Example Results

The example analysis in this repository produced:

Species: Salmonella enterica
Sequence Type (MLST): ST377
Genome annotation: Generated using Prokka
AMR gene detection: Performed using ABRicate with the CARD database
Running the Pipeline

Run each script sequentially:

./scripts/01_fastqc.sh
./scripts/02_fastp.sh
./scripts/03_spades.sh
./scripts/04_quast.sh
./scripts/05_prokka.sh
./scripts/06_mlst.sh
./scripts/07_abricate.sh

Requirements
Ubuntu Linux
Conda / Miniconda
FastQC
fastp
SPAdes
QUAST
Prokka
MLST
ABRicate
Documentation

Detailed descriptions of each analysis step are available in:

docs/analysis.md

Future Improvements

Potential extensions of this workflow include:

Genome completeness assessment with BUSCO
Plasmid identification
Virulence factor detection
Comparative genomics
Phylogenetic analysis
Workflow automation using Snakemake or Nextflow

Author

Charles George Mndala

Bioinformatics | Microbial & Pathogen Genomics | Whole-Genome Sequencing (WGS) | Antimicrobial Resistance (AMR) | Comparative Genomics

GitHub: https://github.com/charles2011-mndala

License

This project is distributed under the MIT License.

Citation

If you use this workflow in your research or teaching, please cite this repository appropriately.
