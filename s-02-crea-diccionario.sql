-- Autor: Alejandro Rivera Nagano
-- Fecha: 28 de Septiembre de 2021
-- Descripcion:
-- cambiar manual passwords de sys y system
connect sys/system as sysdba
@?/rdbms/admin/catalog.sql
@?/rdbms/admin/catproc.sql
@?/rdbms/admin/utlrp.sql
connect system/system 
@?/sqlplus/admin/pupbld.sql

