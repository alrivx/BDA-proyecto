--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Configuración del modo archivelog.

-- Respaldo spfile antes de configurar archivelog
create pfile='$ORACLE_BASE/oradata/CARIPROY/respaldo-pfile.txt' from spfile;
!mkdir -p $ORACLE_BASE/oradata/CARIPROY/disk_4/archive
alter system set log_archive_max_processes=6 scope=both;
alter system set log_archive_format = 'arch_cariproy_%t_%s_%r_%d.arc' scope=spfile;
alter system set log_archive_trace=10 scope=both;
alter system set log_archive_dest_1='LOCATION=/u01/app/oracle/oradata/CARIPROY/disk_4/archive MANDATORY' scope=both;
alter system set log_archive_min_succeed_dest=1 scope=both;
shutdown
startup mount
alter database archivelog;
alter database open;
archive log list;
