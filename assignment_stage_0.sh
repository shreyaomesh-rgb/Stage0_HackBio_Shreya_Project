#!/bin/bash

#Project 1 BASh Basic

#1.Print your name
echo "Shreya"

#2. Create a folder titled your name
mkdir Shreya

#3.Create another new directory titled biocomputing and change to that directory with one line of command
mkdir biocomputing && cd biocomputing

#4. Download these 3 files:
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

#5. Move the .fna file to the folder titled your name
mv wildtype.fna Shreya/

#6. Delete the duplicate gbk file
rm wildtype.gbk.1

#7.Confirm if the .fna file is mutant or wild type (tatatata vs tata)
if grep -qi "tatatata" Shreya/wildtype.fna; then
  echo "This is mutant"
else
  echo "This is wild type"
fi


#8. If mutant, print all matching lines into a new file
grep -i "tatatata" Shreya/wildtype.fna > mutant_sequences.txt

#9. Count number of lines (excluding header) in the .gbk file\
tail -n +2 wildtype.gbk | wc -l

#10. Print the sequence length of the .gbk file. (Use the LOCUS tag in the first line)
head -n 1 wildtype.gbk | awk '{print $3}'

#11. Print the source organism of the .gbk file. (Use the SOURCE tag in the first line)
grep "^SOURCE" wildtype.gbk | awk '{$1=""; print $0}'

#12List all the gene names of the .gbk file. Hint
grep '/gene=' wildtype.gbk

#13. Clear your terminal space and print all commands used today
clear
history

#14. List the files in the two folders
ls Shreya/
ls biocomputing/

#Project 2: Installing Bioinformatics Software on the Terminal

#1. Activate your base conda environment

conda --version

#2. Create a conda environment named funtools

conda create -n funtools python=3.10

#3. Activate the funtools environment

conda activate funtools

#4. Install Figlet using conda or apt-get
conda install conda-forge::pyfiglet

#5. Run figlet <your name>
pyfiglet Shreya


#6. Install bwa through the bioconda channel
conda install -c bioconda bwa 


#7.Install blast through the bioconda channel
conda install -c bioconda blast


#8. Install samtools through the bioconda channel
conda install -c bioconda samtools

#9. Install bedtools through the bioconda channel
conda install -c bioconda bedtools

#10. Install spades.py through the bioconda channel
conda install -c bioconda spades

#11. Install bcftools through the bioconda channel
conda install -c bioconda bcftools

#12. Install fastp through the bioconda channel
conda install -c bioconda fastp

#13. Install multiqc through the bioconda channel
conda install -c bioconda multiqc


