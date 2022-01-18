#!/bin/bash
# Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
# Fecha creación:  9 de enero de 2022
# Descripción:     Archivo principal para simular un media recovery.

echo "===================="
echo "Eliminando datafile sysaux01..."
./s-08-media-recovery.sh
echo "===================="
echo "Realizando Complete Media Recovery..."
./s-08-rman-media-recovery.sh
