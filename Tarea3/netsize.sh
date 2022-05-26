echo "Nayeli, Pineda, Análisis de datos simple:"

echo "Tarea 1.10.3"
echo "Data de Saavedra and Stouffer 2013"


echo "De la carpeta Saavedra, tome el n25.txt"
cd ../../../
cd Documents/CSB/unix/data/Saavedra2013

echo "Obtengo el numero de filas"
cat ../Saavedra2013/n25.txt |wc -l
echo "Del mismo archivo verifico la primera fila, para comprobar que tipo de caracter tengo, en este caso es un espacio"
head -n 1 ../Saavedra2013/n25.txt
echo "Obtengo el numero de colunmas"
head -n 1 ../Saavedra2013/n25.txt | tr -d " " | tr -d "\n" | wc -c
