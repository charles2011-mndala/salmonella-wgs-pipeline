# 🧬 Project Summary

## Project Title

**Salmonella *enterica* Whole-Genome Sequencing Analysis Pipeline**

---

## Objective

To develop a reproducible bioinformatics workflow for quality control, genome assembly, genome annotation, sequence typing, and antimicrobial resistance (AMR) gene detection from Illumina whole-genome sequencing data.

---

## Workflow

The pipeline consisted of the following steps:

1. Download raw sequencing reads.
2. Perform quality assessment using FastQC.
3. Trim and filter sequencing reads using fastp.
4. Assemble the genome using SPAdes.
5. Evaluate assembly quality using QUAST.
6. Annotate the assembled genome using Prokka.
7. Determine the sequence type using MLST.
8. Detect antimicrobial resistance genes using ABRicate with the CARD database.

---

## Software Used

| Software | Purpose |
|----------|---------|
| FastQC | Read quality assessment |
| fastp | Read trimming and filtering |
| SPAdes | Genome assembly |
| QUAST | Assembly quality assessment |
| Prokka | Genome annotation |
| MLST | Sequence typing |
| ABRicate | Antimicrobial resistance gene detection |

---

## Repository Structure

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

---

#  FastQC Analysis

## Objective

To evaluate the quality of raw paired-end Illumina sequencing reads before preprocessing.

## Tool

**FastQC**

## Input

```text
data/raw/SRR29047031_1.fastq.gz
data/raw/SRR29047031_2.fastq.gz
```

## Output

```text
results/fastqc/
├── SRR29047031_1_fastqc.html
├── SRR29047031_1_fastqc.zip
├── SRR29047031_2_fastqc.html
└── SRR29047031_2_fastqc.zip
```

## Command Used

```bash
./scripts/01_fastqc.sh
```

## Description

FastQC was used to assess sequencing read quality, including per-base quality scores, GC content, adapter contamination, sequence duplication levels, and other quality metrics.

## Results

FastQC successfully generated quality reports for both forward and reverse reads.

## Interpretation

The reports confirmed that quality trimming was required before genome assembly.

---

#  fastp Analysis

## Objective

To improve sequencing read quality by trimming adapters, removing low-quality bases, and filtering poor-quality reads.

## Tool

**fastp**

## Input

```text
data/raw/SRR29047031_1.fastq.gz
data/raw/SRR29047031_2.fastq.gz
```

## Output

```text
results/fastp/
```

## Command Used

```bash
./scripts/02_fastp.sh
```

## Description

fastp was used to remove sequencing adapters, trim low-quality bases, and generate high-quality paired-end reads suitable for genome assembly.

## Results

High-quality trimmed paired-end reads were successfully generated.

## Interpretation

The cleaned reads were suitable for de novo genome assembly using SPAdes.

---
#  SPAdes Genome Assembly

## Objective

To assemble the high-quality paired-end Illumina reads into contiguous genome sequences (*contigs*) using the SPAdes genome assembler.

## Tool

**SPAdes v4.3.0**

## Input

```text
results/fastp/
```

## Output

```text
results/assembly/
├── contigs.fasta
├── scaffolds.fasta
├── assembly_graph.gfa
├── spades.log
└── ...
```

## Command Used

```bash
./scripts/03_spades.sh
```

## Description

SPAdes was used to perform de novo genome assembly of the trimmed sequencing reads. During the project, an initial assembly failed because the virtual machine did not have enough available RAM. After increasing the allocated memory and reinstalling SPAdes, the assembly completed successfully.

## Results

SPAdes successfully assembled the *Salmonella enterica* genome and generated the assembled contigs used in downstream analyses.

## Interpretation

The assembled genome served as the reference for quality assessment, annotation, sequence typing, and antimicrobial resistance gene detection.

---

#  QUAST Assembly Quality Assessment

## Objective

To evaluate the quality of the assembled genome.

## Tool

**QUAST**

## Input

```text
results/assembly/contigs.fasta
```

## Output

```text
results/quast/
```

## Command Used

```bash
./scripts/04_quast.sh
```

## Description

QUAST was used to calculate assembly statistics including the number of contigs, total assembly length, GC content, N50, L50, and other quality metrics.

## Results

Assembly quality statistics were successfully generated and saved in the QUAST results directory.

## Interpretation

The assembly metrics confirmed that the assembled genome was suitable for downstream genome annotation and comparative analyses.

---

#  Prokka Genome Annotation

## Objective

To identify and annotate genes and genomic features in the assembled *Salmonella enterica* genome.

## Tool

**Prokka**

## Input

```text
results/assembly/contigs.fasta
```

## Output

```text
results/prokka/
├── *.gff
├── *.gbk
├── *.faa
├── *.ffn
├── *.fna
└── *.txt
```

## Command Used

```bash
./scripts/05_prokka.sh
```

## Description

Prokka was used to annotate the assembled bacterial genome by identifying coding sequences (CDSs), rRNA genes, tRNA genes, and other genomic features.

## Results

Genome annotation completed successfully, producing multiple annotation files compatible with downstream bioinformatics analyses.

## Interpretation

The annotated genome provides valuable biological information that can be used for comparative genomics, functional analysis, and genome visualization.

---

#  MLST Analysis

## Objective

To determine the Multilocus Sequence Type (MLST) of the assembled *Salmonella enterica* genome.

## Tool

**MLST**

## Input

```text
results/assembly/contigs.fasta
```

## Output

```text
results/mlst/mlst_results.tsv
```

## Command Used

```bash
./scripts/06_mlst.sh
```

## Results

The assembled genome was assigned to:

**Sequence Type (ST): ST377**

### Allelic Profile

| Gene | Allele |
|------|-------:|
| aroC | 2 |
| dnaN | 59 |
| hemD | 23 |
| hisD | 64 |
| purE | 38 |
| sucA | 61 |
| thrA | 122 |

## Interpretation

The MLST analysis classified the isolate as **ST377**, providing a standardized sequence type that can be used for epidemiological surveillance, population genetics, and comparison with publicly available *Salmonella enterica* genomes.

---

#  Antimicrobial Resistance Gene Detection

## Objective

To identify antimicrobial resistance genes in the assembled genome using ABRicate with the CARD database.

## Tool

**ABRicate**

## Database

**CARD (Comprehensive Antibiotic Resistance Database)**

## Input

```text
results/assembly/contigs.fasta
```

## Output

```text
results/abricate/abricate_card_results.tsv
```

## Command Used

```bash
./scripts/07_abricate.sh
```

## Description

ABRicate was used to screen the assembled genome against the CARD database to identify known antimicrobial resistance genes.

## Results

The identified antimicrobial resistance genes were written to:

```text
results/abricate/abricate_card_results.tsv
```

The output includes:

- Sequence identifier
- Gene name
- Resistance class
- Percentage identity
- Percentage coverage
- Genomic coordinates
- Database source

## Interpretation

The detected genes represent acquired antimicrobial resistance determinants present in the assembled *Salmonella enterica* genome and can be compared with phenotypic antimicrobial susceptibility data or published resistance profiles.

---

#  Overall Project Conclusion

This project successfully developed and implemented a reproducible bioinformatics workflow for the analysis of *Salmonella enterica* whole-genome sequencing data.

The workflow included:

- Quality assessment using FastQC
- Read trimming using fastp
- Genome assembly using SPAdes
- Assembly quality assessment using QUAST
- Genome annotation using Prokka
- Sequence typing using MLST
- Antimicrobial resistance gene detection using ABRicate

The final analysis identified the isolate as **Sequence Type ST377** and generated a comprehensive set of genome assembly, annotation, and antimicrobial resistance results. The pipeline provides a reproducible framework for bacterial whole-genome sequencing analysis and can be adapted for future microbial genomics studies involving *Salmonella* and other bacterial pathogens.
