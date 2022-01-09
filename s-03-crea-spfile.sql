-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: creación de un spfile a partir de un pfile

connect sys/hola1234* as sysdba
startup nomount
create spfile='/u01/app/oracle/product/19.3.0/dbhome_1/dbs/spfilecbrnproy.ora'
from pfile='/u01/app/oracle/product/19.3.0/dbhome_1/dbs/initcbrnproy.ora';

!echo validando creación:
!ls $ORACLE_HOME/dbs/spfilecbrnproy.ora



