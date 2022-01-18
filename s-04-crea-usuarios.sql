--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Creación de usuarios y otorgamiento de privilegios.

connect sys/system as sysdba

-- Usuario admin del modulo 1 (usuarios)
create user admin_usuarios identified by admin_usuarios
  default tablespace tbs_usuarios
  quota unlimited on tbs_usuarios
  quota unlimited on tbs_indexes
  quota unlimited on tbs_contenido_datos
  quota unlimited on tbs_contenido_blobs;

grant create session, create table, create sequence to admin_usuarios;

-- Usuario admin del modulo 2 (contenido)
create user admin_contenido identified by admin_contenido
  default tablespace tbs_contenido_datos
  quota unlimited on tbs_contenido_datos
  quota unlimited on tbs_contenido_blobs
  quota unlimited on tbs_indexes
  quota unlimited on tbs_usuarios;

grant create session, create table, create any directory, create procedure,
  create sequence to admin_contenido;

create user admin_backups identified by admin_backups;
grant create session, sysbackup to admin_backups;

