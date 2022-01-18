--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         9 de enero de 2022
--@Descripción:   Archivo principal con la cración de usuarios, tablas,
--                restricciones y preparación para la carga de BLOBs.

connect sys/system as sysdba
Prompt ==========================
Prompt Creando usuarios de la BD...
@s-04-crea-usuarios.sql
Prompt ==========================
Prompt Creando esquema del modulo Usuarios...
@s-04-ddl-modulo-1.sql
Prompt ==========================
Prompt Creando esquema del modulo Contenido...
@s-04-ddl-modulo-2.sql
connect sys/system as sysdba
Prompt ==========================
Prompt Creando restricciones de FK entre tablas de diferente tablespace...
@s-04-ddl-foraneas.sql
Prompt ==========================
Prompt Creando procedimiento para carga de BLOBS...
@s-04-soporte-blobs.sql
