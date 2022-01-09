-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: Creación de los tablespaces específicos

-- Se especifica NOLOGGING para evitar generar datos REDO durante la
-- carga inicial de datos y creacion de indices
--drop tablespace usuarios_tbs including contents and datafiles;
--drop tablespace contenido_tbs including contents and datafiles;
--drop tablespace indexes_tbs including contents and datafiles;
create tablespace usuarios_tbs
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_2/usuarios_tbs.dbf' size 20m
  autoextend on next 20m maxsize unlimited
  online
  nologging;

create tablespace contenido_tbs
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_3/contenido_tbs.dbf' size 500m
  autoextend on next 500m maxsize unlimited
  online
  nologging;


create tablespace indexes_tbs
  datafile '/u01/app/oracle/oradata/CBRNPROY/disk_1/indexes_tbs.dbf' size 10m
  autoextend on next 5m maxsize unlimited
  online
  nologging;


