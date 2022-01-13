-- Se especifica NOLOGGING para evitar generar datos REDO durante la
-- carga inicial de datos y creacion de indices
--drop tablespace usuarios_tbs including contents and datafiles;
--drop tablespace datos_contenido_tbs including contents and datafiles;
--drop tablespace blobs_contenido_tbs including contents and datafiles;
--drop tablespace indexes_tbs including contents and datafiles;
create tablespace tbs_usuarios
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_2/tbs_usuarios.dbf' size 20m
  autoextend on next 10m maxsize unlimited
  online
  nologging;

create tablespace tbs_contenido_datos
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_2/tbs_contenido_datos.dbf' size 20m
  autoextend on next 10m maxsize unlimited
  online
  nologging;

create tablespace tbs_contenido_blobs
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_3/tbs_contenido_blobs.dbf' size 500m
  autoextend on next 500m maxsize unlimited
  online
  nologging;

create tablespace tbs_indexes
  datafile '/u01/app/oracle/oradata/CARIPROY/disk_1/tbs_indexes.dbf' size 10m
  autoextend on next 5m maxsize unlimited
  online
  nologging;

