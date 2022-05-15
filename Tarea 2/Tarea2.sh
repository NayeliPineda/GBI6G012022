echo "Tarea2"
echo "contador de secuencias"
cd ../
cd Documents/CSB-master/unix/data/miRNA

echo "inserto apellido y nombre en el archivo.csv"
echo "Pineda, Nayeli" > ../Contadorsecuencias.csv
echo "verifico el numero de lineas usando cat y luego encuentro el numero de secuencias"
cat ../miRNA/ggo_miR.fasta |grep -w ">ggo" ggo_miR.fasta >> secuencias.csv
echo "ggo_miRfasta" >> ../Contadorsecuencia.csv |grep -w "ggo" ggo_miR.fasta | wc -l >> ../Contadorsecuencias.csv
cat ../miRNA/hsa_miR.fasta |grep -w ">hsa" hsa_miR.fasta >> secuencias.csv
echo "hsa_miRfasta" >> ../Contadorsecuencia.csv |grep -w "hsa" hsa_miR.fasta | wc -l >> ../Contadorsecuencias.csv
cat ../miRNA/ppa_miR.fasta |grep -w ">ppa" ppa_miR.fasta >> secuencias.csv
echo "ppa_miRfasta" >> ../Contadorsecuencia.csv |grep -w "ppa" ppa_miR.fasta | wc -l >> ../Contadorsecuencias.csv
cat ../miRNA/ppy_miR.fasta |grep -w ">ppy" ppy_miR.fasta >> secuencias.csv
echo "ppy_miRfasta" >> ../Contadorsecuencia.csv |grep -w "ppy" ppy_miR.fasta | wc -l >> ../Contadorsecuencias.csv
cat ../miRNA/ptr_miR.fasta |grep -w ">ptr" ptr_miR.fasta >> secuencias.csv
echo "ptr_miRfasta" >> ../Contadorsecuencia.csv |grep -w "ptr" ptr_miR.fasta | wc -l >> ../Contadorsecuencias.csv
cat ../miRNA/ssy_miR.fasta |grep -w ">ssy" ssy_miR.fasta >> secuencias.csv
echo "ssy_miRfasta" >> ../Contadorsecuencia.csv |grep -w "ssy" ssy_miR.fasta | wc -l >> ../Contadorsecuencias.csv












