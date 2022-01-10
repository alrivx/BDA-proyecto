#!/bin/bash
# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Creación de archivos de passwords y parámetros previo a la creación
# de la BD

echo "Cambiando el valor de ORACLE_SID a cariproy"
export ORACLE_SID=cariproy

# Archivo de passwords
if [ -f $ORACLE_HOME/dbs/orapwcariproy ]; then
  mv -f $ORACLE_HOME/dbs/orapwcariproy /home/oracle/backups
fi

echo "Creando archivo de passwords"
# Ingresar contraseña hola1234*
orapwd FILE='$ORACLE_HOME/dbs/orapwcariproy' format=12.2 SYS=password 

# Archivo de parametros
cd $ORACLE_HOME/dbs
echo "Creando archivo de parámetros"
touch initcariproy.ora
echo "db_name=cariproy
control_files=(/u01/app/oracle/oradata/CARIPROY/disk_1/control01.ctl,
               /u01/app/oracle/oradata/CARIPROY/disk_2/control02.ctl,
               /u01/app/oracle/oradata/CARIPROY/disk_3/control03.ctl)
memory_target=768M" > initcariproy.ora

