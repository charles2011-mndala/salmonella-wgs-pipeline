PROJECT SUMMARY
Project Title

Salmonella enterica Whole-Genome Sequencing Analysis Pipeline

Objective

To develop a reproducible bioinformatics workflow for quality control, genome assembly, annotation, sequence typing, and antimicrobial resistance gene detection from Illumina whole-genome sequencing data.

Workflow
Download raw sequencing reads
Quality assessment using FastQC
Read trimming using fastp
Genome assembly using SPAdes
Assembly quality assessment using QUAST
Genome annotation using Prokka
Sequence typing using MLST
Antimicrobial resistance gene detection using ABRicate (CARD database)

Software Used
Software	Purpose
FastQC	Read quality assessment
fastp	Read trimming and filtering
SPAdes	Genome assembly
QUAST	Assembly quality assessment
Prokka	Genome annotation
MLST	Sequence typing
ABRicate	AMR gene detection

Repository Structure
salmonella-wgs-pipeline/
├── data/
├── docs/
├── results/
│   ├── fastqc/
│   ├── fastp/
│   ├── assembly/
│   ├── quast/
│   ├── prokka/
│   ├── mlst/
│   └── abricate/
├── scripts/
├── README.md
└── .gitignore


MLST analysis

The assembled Salmonella enterica genome was typed using the MLST tool. The isolate was assigned to Sequence Type 377 (ST377) based on the allele profile:

aroC: 2
dnaN: 59
hemD: 23
hisD: 64
purE: 38
sucA: 61
thrA: 122

This sequence type provides a standardized identifier for comparing the isolate with other Salmonella enterica genomes in epidemiological and population genomics studies.

ABRicate Analysis
Objective

To identify antimicrobial resistance (AMR) genes present in the assembled Salmonella enterica genome using ABRicate with the Comprehensive Antibiotic Resistance Database (CARD).

Tool
ABRicate
Database
CARD (Comprehensive Antibiotic Resistance Database)
Input
results/assembly/contigs.fasta
Output
results/abricate/abricate_card_results.tsv
Command Used
./scripts/07_abricate.sh
Description

ABRicate screens assembled bacterial genomes against curated antimicrobial resistance databases. In this project, the assembled Salmonella enterica genome was compared against the CARD database to identify known resistance genes.

Results

The detected antimicrobial resistance genes were written to:

results/abricate/abricate_card_results.tsv

The output includes:

Sequence identifier
Gene name
Antimicrobial resistance class
Percentage identity
Percentage coverage
Genomic coordinates
Database source
Interpretation

The identified resistance genes represent acquired antimicrobial resistance determinants present in the assembled genome. These findings can be compared with phenotypic antimicrobial susceptibility data or with resistance profiles reported in other Salmonella enterica isolates.

Conclusion

ABRicate successfully identified antimicrobial resistance genes in the assembled genome using the CARD database. This analysis completes the antimicrobial resistance characterization stage of the pipeline.
