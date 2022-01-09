-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- Descripción: Ejecución de scripts Oracle que crean el diccionario de datos de la BD
connect sys/system as sysdba
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql
connect system/system 
@?/sqlplus/admin/pupbld.sql

