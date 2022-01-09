-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: Creacion de usuarios con sus permisos y tablespaces

connect sys/system as sysdba
--drop user admin_usuarios cascade;
--drop user admin_contenido cascade;

-- Usuario admin del modulo 1 (usuarios)
create user admin_usuarios identified by admin_usuarios
  default tablespace usuarios_tbs
  quota unlimited on usuarios_tbs
  quota unlimited on indexes_tbs
  quota unlimited on contenido_tbs;

grant create session, create table, create sequence to admin_usuarios;

-- Usuario admin del modulo 2 (contenido)
create user admin_contenido identified by admin_contenido
  default tablespace contenido_tbs
  quota unlimited on contenido_tbs
  quota unlimited on indexes_tbs
  quota unlimited on usuarios_tbs;

grant create session, create table, create sequence to admin_contenido;

create user admin_backup identified by admin_backup;
grant sysbackup to admin_backup;


