connect sys/system as sysdba
alter system set db_recovery_file_dest_size=6g scope=both;
alter system set db_recovery_file_dest='/u01/app/oracle/oradata/CARIPROY/disk_5/fra' scope=both;
alter system set log_archive_dest_2='location=use_db_recovery_file_dest' scope=both;
alter system set log_archive_min_succeed_dest=2;
alter system set db_flashback_retention_target = 2880;
