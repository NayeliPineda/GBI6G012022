#! /bin/bash


for i in $files
do 
	filas= ´cat $i | wc -l´
	columnas= ´head -n 1 $f | tr -d ' ' | tr -d '\n' | wc -c´
	echo $f $filas $columnas
done 
