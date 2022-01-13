# Autor: Alejandro Rivera Nagano
# Fecha: 28 de Septiembre de 2021
# Descripcion: Creacion de directorios donde se guardarán data files, 
#  archivos de control y redo logs de la BD que será creada posteriormente
mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_1
chown oracle:oinstall /u01/app/oracle/oradata/CARIPROY/disk_1
chmod 750 /u01/app/oracle/oradata/CARIPROY/disk_1

mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_2
chown -R oracle:oinstall /u01/app/oracle/oradata/CARIPROY/disk_2
chmod -R 750 /u01/app/oracle/oradata/CARIPROY/disk_2

mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_3
chown -R oracle:oinstall /u01/app/oracle/oradata/CARIPROY/disk_3
chmod -R 750 /u01/app/oracle/oradata/CARIPROY/disk_3

mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_4/control
mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_4/backup
mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_4/onlineredo
chown -R oracle:oinstall /u01/app/oracle/oradata/CARIPROY/disk_4
chmod -R 750 /u01/app/oracle/oradata/CARIPROY/disk_4

mkdir -p /u01/app/oracle/oradata/CARIPROY/disk_5/fra
chown -R oracle:oinstall /u01/app/oracle/oradata/CARIPROY/disk_5
chmod -R 750 /u01/app/oracle/oradata/CARIPROY/disk_5/

