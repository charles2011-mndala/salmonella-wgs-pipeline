🧬 Salmonella enterica Whole-Genome Sequencing (WGS) Pipeline








A reproducible bioinformatics workflow for analyzing Illumina Whole-Genome Sequencing (WGS) data from Salmonella enterica. This pipeline performs quality assessment, read trimming, genome assembly, assembly quality evaluation, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection.

📖 Table of Contents
Project Overview
Objectives
Workflow
Repository Structure
Software Used
Installation
Usage
Input Data
Output Files
Example Results
Documentation
Future Improvements
References
Author
License
Citation
📌 Project Overview

This repository demonstrates an end-to-end bacterial whole-genome sequencing workflow developed using open-source bioinformatics software on Ubuntu Linux.

The workflow follows commonly used microbial genomics practices and provides a reproducible pipeline from raw Illumina sequencing reads to genome annotation, sequence typing, and antimicrobial resistance gene identification.

🎯 Objectives
Perform quality assessment of raw Illumina sequencing reads.
Trim and filter low-quality reads.
Assemble the bacterial genome.
Assess genome assembly quality.
Annotate genomic features.
Determine the Multilocus Sequence Type (MLST).
Detect antimicrobial resistance genes using ABRicate and the CARD database.
🔬 Workflow
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
📂 Repository Structure
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
├── docs/
├── LICENSE
├── CITATION.cff
├── CHANGELOG.md
└── README.md
🛠 Software Used
Software	Purpose
FastQC	Raw read quality assessment
fastp	Read trimming and filtering
SPAdes	Genome assembly
QUAST	Assembly quality assessment
Prokka	Genome annotation
MLST	Sequence typing
ABRicate	AMR gene detection
⚙️ Installation

Clone the repository:

git clone https://github.com/charles2011-mndala/salmonella-wgs-pipeline.git

cd salmonella-wgs-pipeline

Install the required software using Conda (example):

conda create -n assembly -c conda-forge -c bioconda \
fastqc fastp spades quast prokka mlst abricate

conda activate assembly
🚀 Usage

Run each step sequentially:

./scripts/01_fastqc.sh
./scripts/02_fastp.sh
./scripts/03_spades.sh
./scripts/04_quast.sh
./scripts/05_prokka.sh
./scripts/06_mlst.sh
./scripts/07_abricate.sh
📥 Input Data

The pipeline accepts paired-end Illumina FASTQ files.

Example:

sample_R1.fastq.gz
sample_R2.fastq.gz
📤 Output Files

The pipeline generates:

FastQC HTML reports
Trimmed FASTQ files
Genome assembly
QUAST quality reports
Genome annotation files
MLST sequence type
Antimicrobial resistance gene report
📊 Example Results

Example isolate analyzed in this repository:

Analysis	Result
Species	Salmonella enterica
Sequence Type	ST377
Annotation	Prokka
AMR Detection	ABRicate (CARD)
📚 Documentation

Detailed documentation is available in:

docs/analysis.md
🔮 Future Improvements

Potential future extensions include:

BUSCO genome completeness assessment
Plasmid identification
Virulence factor detection
Comparative genomics
Core genome analysis
Pan-genome analysis
SNP-based phylogenetics
Snakemake workflow
Nextflow workflow
Docker and Singularity containers
📖 References
FastQC
fastp
SPAdes
QUAST
Prokka
MLST
ABRicate
CARD (Comprehensive Antibiotic Resistance Database)
👨‍💻 Author

Charles George Mndala

Bioinformatics | Microbial & Pathogen Genomics | Whole-Genome Sequencing (WGS) | Antimicrobial Resistance (AMR) | Comparative Genomics

GitHub: https://github.com/charles2011-mndala

LinkedIn: (Add your LinkedIn profile URL here)

📜 License

This project is licensed under the MIT License.

See the LICENSE file for details.

📖 Citation

If you use this repository in your research or teaching, please cite it using the metadata provided in CITATION.cff.

⭐ If you find this project useful, consider starring the repository.
