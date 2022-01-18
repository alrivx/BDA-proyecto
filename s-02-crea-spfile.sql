--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Creación de un spfile a partir de un pfile.

connect sys/hola1234* as sysdba
startup nomount
create spfile='/u01/app/oracle/product/19.3.0/dbhome_1/dbs/spfilecariproy.ora'
from pfile='/u01/app/oracle/product/19.3.0/dbhome_1/dbs/initcariproy.ora';

!echo validando creación:
!ls $ORACLE_HOME/dbs/spfilecariproy.ora


