#!/bin/bash
# Autor:       Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
# Fecha:       07 de enero de 2022
# Descripción: Archivo principal con la creación de objetos iniciales.

echo "======================================"
echo "Creando directorios que usará la BD"
./s-01-crea-directorios.sh
echo "======================================"
echo "Desempacando BLOBS"
./s-01-unzip-blobs.sh
echo "======================================"
echo "Creando archivo de parámetros y archivo de passwords"
./s-01-crea-pass-param-file.sh
