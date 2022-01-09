-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: Creación de la BD con configuraciones de redologs y tablespaces
connect sys/hola1234* as sysdba
startup nomount
whenever sqlerror exit rollback;
create database CBRNPROY
  user sys identified by system2
  user system identified by system2
  logfile group 1(
    '/u01/app/oracle/oradata/CBRNPROY/disk_1/redo01a.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_2/redo01b.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_3/redo01c.log'
  ) size 50m blocksize 512,
  group 2(
    '/u01/app/oracle/oradata/CBRNPROY/disk_1/redo02a.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_2/redo02b.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_3/redo02c.log'
  ) size 50m blocksize 512,
  group 3(
    '/u01/app/oracle/oradata/CBRNPROY/disk_1/redo03a.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_2/redo03b.log',
    '/u01/app/oracle/oradata/CBRNPROY/disk_3/redo03c.log'
  ) size 50m blocksize 512
  maxloghistory 1
  maxlogfiles 16
  maxlogmembers 3
  maxdatafiles 1024
  character set AL32UTF8
  national character set AL16UTF16
  extent management local
  -- tablespace SYSTEM
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_1/system01.dbf'
    size 700m reuse autoextend on next 10240k maxsize unlimited
  -- tablespace SYSAUX
  sysaux datafile '/u01/app/oracle/oradata/CBRNPROY/disk_1/sysaux01.dbf'
    size 550m reuse autoextend on next 10240k maxsize unlimited
  -- tablespace USERS
  default tablespace users
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_1/users01.dbf'
    size 500m reuse autoextend on maxsize unlimited
  -- tablespace TEMPTS
  default temporary tablespace tempts1
  tempfile '/u01/app/oracle/oradata/CBRNPROY/disk_1/temp01.dbf'
    size 20m reuse autoextend on next 640k maxsize unlimited
  -- tablespace UNDO
  undo tablespace undotbs1
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_1/undotbs01.dbf'
    size 200m reuse autoextend on next 5120k maxsize unlimited;
alter user sys identified by system;
alter user system identified by system;


