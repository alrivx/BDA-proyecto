--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Configuración de la Fast Recovery Area.

connect sys/system as sysdba
-- Parámetros FRA
alter system set db_recovery_file_dest_size=6g scope=both;
alter system set db_recovery_file_dest='/u01/app/oracle/oradata/CARIPROY/disk_5/fra' scope=both;
-- Configuración de archive redo logs
alter system set log_archive_dest_2='location=use_db_recovery_file_dest' scope=both;
alter system set log_archive_min_succeed_dest=2;
alter system set db_flashback_retention_target = 2880;
-- Grupo de online redo logs
alter database add logfile group 4 size 64m blocksize 512;

