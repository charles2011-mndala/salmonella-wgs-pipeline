Salmonella enterica Whole-Genome Sequencing Pipeline

A reproducible bioinformatics workflow for analysing Illumina whole-genome sequencing (WGS) data from Salmonella enterica. The pipeline performs quality control, read trimming, genome assembly, assembly quality assessment, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection.

Features
FastQC quality assessment
fastp read trimming
SPAdes genome assembly
QUAST assembly evaluation
Prokka genome annotation
MLST sequence typing
ABRicate AMR gene detection using the CARD database

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
├── results/
│   ├── assembly/
│   ├── fastp/
│   ├── fastqc/
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
└── .gitignore

Software
Tool	Purpose
FastQC	Read quality assessment
fastp	Read trimming
SPAdes	Genome assembly
QUAST	Assembly quality assessment
Prokka	Genome annotation
MLST	Sequence typing
ABRicate	Antimicrobial resistance gene detection

Outputs
Assembly (contigs.fasta, scaffolds.fasta)
QUAST quality reports
Genome annotation files (.gff, .gbk, .faa, .ffn)
MLST sequence type
ABRicate antimicrobial resistance report

Author

Charles George Mndala

Bioinformatics | Microbial & Pathogen Genomics | Whole-Genome Sequencing | Antimicrobial Resistance | Comparative Genomics
