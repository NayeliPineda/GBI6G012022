#!/bin/bash

echo "Nombre del archivo:"
echo $1
echo "Numero de filas:"
cat $1 | wc -l
echo "Numero de columnas:"
head -n 1 $1 | tr -d " " | tr -d "\n" | wc -c

