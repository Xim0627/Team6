#script para copiar contenido de fastq a formato txt

#Uso: bash fastq_to_txt.sh

cat ~/BEDU/scripts/samples.txt | while read line
do
cat ~/BEDU/data/trimmed_fastq/${line}_1.trim.fastq > ~/BEDU/data/single_strings/${line}_1_fastq.txt
cat ~/BEDU/data/trimmed_fastq/${line}_2.trim.fastq > ~/BEDU/data/single_strings/${line}_2_fastq.txt
done
