--@Autor:       Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha:       08 de enero de 2022
--@Descripción: Ejecuta los scripts encargados de crear todas las tablas
--              y vistas que integran al diccionario de datos.

connect sys/system as sysdba
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql
connect system/system 
@?/sqlplus/admin/pupbld.sql

