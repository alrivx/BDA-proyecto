-- Respaldo spfile antes de configurar archivelog
create pfile='$ORACLE_BASE/oradata/CARIPROY/respaldo-pfile.txt' from spfile;
!mkdir -p $ORACLE_BASE/oradata/CARIPROY/disk_4/archive
alter system set log_archive_max_processes=6;
alter system set log_archive_format = 'arch_cariproy_%t_%s_%r_%d.arc' scope=spfile;
alter system set log_archive_trace=10;
alter system set log_archive_dest_1='LOCATION=/u01/app/oracle/oradata/CARIPROY/disk_4/archive MANDATORY';
alter system set log_archive_min_succeed_dest=1;
shutdown
startup mount
alter database archivelog;
alter database open;
