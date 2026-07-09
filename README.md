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
## 🛠 Software Used

| Software | Purpose |
|----------|---------|
| FastQC | Raw read quality assessment |
| fastp | Read trimming and filtering |
| SPAdes | Genome assembly |
| QUAST | Assembly quality assessment |
| Prokka | Genome annotation |
| MLST | Multilocus Sequence Typing |
| ABRicate | Antimicrobial resistance gene detection |

---

## ⚙️ Installation

### 1. Clone the repository

```bash
git clone https://github.com/charles2011-mndala/salmonella-wgs-pipeline.git
cd salmonella-wgs-pipeline
```

### 2. Create the Conda environment

```bash
conda create -n assembly -c conda-forge -c bioconda \
fastqc fastp spades quast prokka mlst abricate
```

### 3. Activate the environment

```bash
conda activate assembly
```

---

## 🚀 Usage

Run each script sequentially.

```bash
./scripts/01_fastqc.sh
./scripts/02_fastp.sh
./scripts/03_spades.sh
./scripts/04_quast.sh
./scripts/05_prokka.sh
./scripts/06_mlst.sh
./scripts/07_abricate.sh
```

---

## 📥 Input

The pipeline accepts paired-end Illumina FASTQ files.

Example:

```text
SRR29047031_1.fastq.gz
SRR29047031_2.fastq.gz
```

---
## 📤 Output

The pipeline produces:

- FastQC HTML reports
- Trimmed FASTQ files
- Genome assembly (`contigs.fasta`)
- QUAST reports
- Genome annotation files
- MLST results
- ABRicate antimicrobial resistance report

---

## 📊 Example Results

| Analysis | Result |
|----------|--------|
| Species | *Salmonella enterica* |
| MLST | **ST377** |
| Genome Annotation | Prokka |
| AMR Detection | ABRicate (CARD) |

---

## 📚 Documentation

Additional documentation is available in:

```text
docs/analysis.md
```

---

## 🔮 Future Improvements

Potential future enhancements include:

- BUSCO genome completeness assessment
- Virulence gene detection
- Plasmid identification
- Comparative genomics
- Pan-genome analysis
- SNP phylogenetics
- Snakemake workflow
- Nextflow workflow
- Docker container
- Singularity container

---

## 📖 References

- Andrews S. **FastQC**
- Chen S. *et al.* **fastp**
- Prjibelski A. *et al.* **SPAdes**
- Gurevich A. *et al.* **QUAST**
- Seemann T. **Prokka**
- Seemann T. **MLST**
- Seemann T. **ABRicate**
- Comprehensive Antibiotic Resistance Database (CARD)

---

## 👨‍💻 Author

**Charles George Mndala**

Bioinformatics | Microbial Genomics | Pathogen Genomics | Whole-Genome Sequencing | Antimicrobial Resistance | Comparative Genomics

- GitHub: https://github.com/charles2011-mndala

- LinkedIn: *(www.linkedin.com/in/charles-mndala-97b094377)*

---

## 📜 License

This project is licensed under the **MIT License**.

See the `LICENSE` file for details.

---

## 📖 Citation

If you use this repository in your research or teaching, please cite it using the metadata provided in `CITATION.cff`.

---

⭐ If you find this repository useful, consider giving it a **Star** on GitHub.
