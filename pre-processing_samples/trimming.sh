# Script para realizar el filtrado y limpieza de las muestras pareadas
# Uso: bash trimmingsamples.sh

for infile in *_1.fastq
do
  echo "Limpiando la muestra ${infile%_1.fastq}"
  trimmomatic PE ${infile} ${infile%_1.fastq}_2.fastq \
  ${infile%_1.fastq}_1.trim.fastq ${infile%_1.fastq}_1un.trim.fastq \
  ${infile%_1.fastq}_2.trim.fastq ${infile%_1.fastq}_2un.trim.fastq \
  SLIDINGWINDOW:4:20 MINLEN:35 ILLUMINACLIP:TruSeq3-PE.fa:2:40:15
done
