-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: Configuración de parámetros de la FRA

connect sys/system as sysdba
alter system set db_recovery_file_dest_size=4g scope=both;
alter system set db_recovery_file_dest='/u01/app/oracle/oradata/CARIPROY/disk_4' scope=both;
alter system set log_archive_dest_2='location=use_db_recovery_file_dest' scope=both;
alter system set db_flashback_retention_target = 2880;

