# @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
# @Fecha: 6 de enero de 2022
# @Descripción: Creación de directorios donde se crearán los archivos de la BD

#  archivos de control y redo logs de la BD que será creada posteriormente
mkdir -p /u01/app/oracle/oradata/CBRNPROY/disk_1
chown oracle:oinstall /u01/app/oracle/oradata/CBRNPROY/disk_1
chmod 750 /u01/app/oracle/oradata/CBRNPROY/disk_1

mkdir -p /u01/app/oracle/oradata/CBRNPROY/disk_2
chown -R oracle:oinstall /u01/app/oracle/oradata/CBRNPROY/disk_2
chmod -R 750 /u01/app/oracle/oradata/CBRNPROY/disk_2

mkdir -p /u01/app/oracle/oradata/CBRNPROY/disk_3
chown -R oracle:oinstall /u01/app/oracle/oradata/CBRNPROY/disk_3
chmod -R 750 /u01/app/oracle/oradata/CBRNPROY/disk_3

mkdir -p /u01/app/oracle/oradata/CBRNPROY/disk_4/backup
chown -R oracle:oinstall /u01/app/oracle/oradata/CBRNPROY/disk_4
chmod -R 750 /u01/app/oracle/oradata/CBRNPROY/disk_4


