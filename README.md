# Stage0_HackBio_Shreya_Project
Submission of Project 1 and 2 for stage0 of HackBio
## Bioinformatics Project Submission

## Author
#Shreya

## Project Overview
This repository contains the solution for the Stage 0 project 1 and project 2 tasks. 

The project consists of **two parts**:

1. **Project 1: Bash Basics**
2. **Project 2: Installing Bioinformatics Software on the Terminal**

---

## Project 1: Bash Basics

The Bash script performs the following tasks:

1. Prints my name 'Shreya'.
2. Creates a folder titled `Shreya`.
3. Creates another directory `biocomputing` and changes into it.
4. Downloads three files (`.fna` and `.gbk`) from the provided links.
5. Moves the `.fna` file to the folder `Shreya`.
6. Deletes the duplicate `.gbk` file.
7. Checks whether the `.fna` file is mutant (`tatatata`) or wild type (`tata`).
8. If mutant, prints all matching lines into a new file `mutant_sequences.txt`.
9. Counts the number of lines (excluding header) in the `.gbk` file.
10. Prints sequence length using the `LOCUS` tag.
11. Prints source organism using the `SOURCE` tag.
12. Lists all gene names in the `.gbk` file.
13. Clears the terminal and prints all commands used today.
14. Lists the files in the two folders.

---

## Project 2: Installing Bioinformatics Software

The script also sets up a conda environment and installs essential bioinformatics tools:

1. Activates the base conda environment.
2. Creates a conda environment named `funtools`.
3. Activates the `funtools` environment.
4. Installs Figlet to display my name in ASCII art.
5. Installs the following bioinformatics tools via Bioconda:
   - BWA
   - BLAST
   - Samtools
   - Bedtools
   - Spades
   - Bcftools
   - Fastp
   - MultiQC

---
