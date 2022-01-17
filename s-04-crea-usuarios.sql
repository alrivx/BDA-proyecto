connect sys/system as sysdba
--drop user admin_usuarios cascade;
--drop user admin_contenido cascade;
--drop user admin_backups cascade;
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

