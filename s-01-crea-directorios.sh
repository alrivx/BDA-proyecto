#!/bin/bash
# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Creación de directorios donde se guardarán los archivos de la BD

#  Directorios para archivos de control y redo logs de la BD que será creada posteriormente
echo "Creando directorio para la BD CARIPROY"
mkdir -p /u01/app/oracle/oradata/CARIPROY
cd /u01/app/oracle/oradata/CARIPROY

echo "Creando directorios para los puntos de montaje"
mkdir disk_1
mkdir disk_2
mkdir disk_3
mkdir -p disk_4/backup

echo "Cambiando dueño y permisos a los directorios creados"
cd ..
chown -R oracle:oinstall CARIPROY
chmod -R 750 CARIPROY

cd /
