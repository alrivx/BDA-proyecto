#!/bin/bash
# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Creación de archivos de passwords y parámetros previo a la creación
# de la BD

export ORACLE_SID=cbrnproy

# archivo de passwords
if [ -f $ORACLE_HOME/dbs/orapwcbrnproy ]; then
  mv -f $ORACLE_HOME/dbs/orapwcbrnproy /home/oracle/backups
fi
echo "ingresar contraseña hola1234*"
orapwd FILE='$ORACLE_HOME/dbs/orapwcbrnproy' format=12.2 SYS=password 

# archivo de parametros
cd $ORACLE_HOME/dbs
#pwd
touch initcbrnproy.ora
echo "db_name=cbrnproy
control_files=(/u01/app/oracle/oradata/CBRNPROY/disk_1/control01.ctl,
               /u01/app/oracle/oradata/CBRNPROY/disk_2/control02.ctl,
               /u01/app/oracle/oradata/CBRNPROY/disk_3/control03.ctl)
memory_target=768M" > initcbrnproy.ora


