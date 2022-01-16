-- Autor: Alejandro Rivera Nagano
-- Fecha: 28 de Septiembre de 2021
-- Descripcion:
connect sys/hola1234* as sysdba
startup nomount
whenever sqlerror exit rollback;
create database CARIPROY
  user sys identified by system
  user system identified by system
  logfile group 1(
    '/u01/app/oracle/oradata/CARIPROY/disk_1/redo01a.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_4/onlineredo/redo01b.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_5/redo01c.log'
  ) size 64m blocksize 512,
  group 2(
    '/u01/app/oracle/oradata/CARIPROY/disk_1/redo02a.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_4/onlineredo/redo02b.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_5/redo02c.log'
  ) size 64m blocksize 512,
  group 3(
    '/u01/app/oracle/oradata/CARIPROY/disk_1/redo03a.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_4/onlineredo/redo03b.log',
    '/u01/app/oracle/oradata/CARIPROY/disk_5/redo03c.log'
  ) size 64m blocksize 512
  maxloghistory 1
  maxlogfiles 16
  maxlogmembers 3
  maxdatafiles 1024
  character set AL32UTF8
  national character set AL16UTF16
  extent management local
  -- tablespace SYSTEM
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_1/system01.dbf'
    size 700m reuse autoextend on next 10240k maxsize unlimited
  -- tablespace SYSAUX
  sysaux datafile '/u01/app/oracle/oradata/CARIPROY/disk_1/sysaux01.dbf'
    size 550m reuse autoextend on next 10240k maxsize unlimited
  -- tablespace USERS
  default tablespace users
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_1/users01.dbf'
    size 500m reuse autoextend on maxsize unlimited
  -- tablespace TEMPTS
  default temporary tablespace tempts1
  tempfile '/u01/app/oracle/oradata/CARIPROY/disk_1/temp01.dbf'
    size 20m reuse autoextend on next 640k maxsize unlimited
  -- tablespace UNDO
  undo tablespace undotbs1
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_1/undotbs01.dbf'
    size 200m reuse autoextend on next 5120k maxsize unlimited;
alter user sys identified by system;
alter user system identified by system;

