#!/bin/bash

# Ruta al archivo con la lista de números de acceso SRA
SRA_LIST="samples.txt"

# Número de nucleos a usar
NUM_THREADS=$(nproc)

# Directorio donde se guardarán los archivos descargados
OUTPUT_DIR="fastq"

# Crear el directorio de salida si no existe
mkdir -p "$OUTPUT_DIR"

# Variable para el contador de archivos
count=1

# Variable para el total de archivos
total_files=$(wc -l < "$SRA_LIST")

# Recorrer la lista de números de acceso SRA
while read accession; do
  # Mostrar el contador
  echo "Descargando archivo $count de $total_files: $accession"

  ((count++))

  # Descargar los reads pareados
  fasterq-dump "$accession" -t "$NUM_THREADS" --split-files

  # Opcional: Convertir los archivos a FASTQ comprimido
  gzip $accession_1.fastq"
  gzip $accession_2.fastq"

done < "$SRA_LIST"
