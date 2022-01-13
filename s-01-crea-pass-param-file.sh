#!/bin/bash
# Autor: Alejandor Rivera Nagano
# Fecha: 26 de septiembre de 2021
# Descripción: creación de archivo de passwords y archivo de parametros

export ORACLE_SID=cariproy

# archivo de passwords
if [ -f $ORACLE_HOME/dbs/orapwcariproy ]; then
  mv -f $ORACLE_HOME/dbs/orapwcariproy /home/oracle/backups
fi
echo "ingresar contraseña hola1234*"
orapwd FILE='$ORACLE_HOME/dbs/orapwcariproy' format=12.2 SYS=password 

# archivo de parametros
cd $ORACLE_HOME/dbs
#pwd
touch initcariproy.ora
echo "db_name=cariproy
control_files=(/u01/app/oracle/oradata/CARIPROY/disk_1/control01.ctl,
               /u01/app/oracle/oradata/CARIPROY/disk_2/control02.ctl,
               /u01/app/oracle/oradata/CARIPROY/disk_3/control03.ctl)
memory_target=768M" > initcariproy.ora

