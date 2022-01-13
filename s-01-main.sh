#!/bin/bash
echo "======================================"
echo "Creando directorios que usará la BD"
./s-01-crea-directorios.sh
echo "======================================"
echo "Desempacando BLOBS"
./s-01-unzip-blobs.sh
echo "======================================"
echo "Creando archivo de parámetros y archivo de passwords"
./s-01-crea-pass-param-file.sh
