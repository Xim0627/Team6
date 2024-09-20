# Aquí se describe el paso a paso del pre-procesamiento de las muestras descargadas de NCBI

1. Se comienza con una selección de las muestras que estaremos procesando para posteriormente correr en el juego del caos.
   Los ID's de las muestras se encuentran en el archivo [samples.txt](https://github.com/Xim0627/Team6/blob/main/pre-processing_samples/samples.txt).
2. Se realiza la descarga de los archivos con formato .fastq que contienen las muestras secuenciadas pareadas con sus calidades asignadas a cada base en cada read. El script para realizar este paso se encuentra con el nombre [download.sh](https://github.com/Xim0627/Team6/blob/main/pre-processing_samples/download.sh).
3. Se procede a evaluar la calidad de las muestras descargadas utilizando el programa fastqc por medio del comando ```fastqc *.fastq```.
4. Una vez obtenidos los resultados de calidad se realiza una inspeccion visual de los archivos.
5. Se procede a correr el programa trimomatic utilizando el script [trimming.sh](https://github.com/Xim0627/Team6/blob/main/pre-processing_samples/trimming.sh) el cual realiza una limpieza y filtrado de las muestras para tener secuencias de mejor calidad.
6. Se concatenan los reads de las muestras, tal procedimiento no representa un inconveninente, ya que el juego del caos representa frecuencias de k-meros.
7. Se colocan en un dataset que cuenta con el resto de la información de las muestras recopilada de NCBI.
