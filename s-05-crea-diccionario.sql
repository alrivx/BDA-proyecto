-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripcion: Ejecuta los scripts encargados de crear todas las tablas
--               y vistas que integran al diccionario de datos.

Prompt Conectando como usuario SYS
connect sys/system as sysdba

Prompt Ejecutando scripts como usuario SYS
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql

Prompt Conectando como usuario SYSTEM
connect system/system 

Prompt Ejecutando script como usuario SYSTEM
@?/sqlplus/admin/pupbld.sql

