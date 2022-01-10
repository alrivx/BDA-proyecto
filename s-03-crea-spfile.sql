-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: creación de un spfile a partir de un pfile

Prompt Conectando como usuario SYS
connect sys/hola1234* as sysdba

Prompt Iniciando instancia en modo nomount
startup nomount

Prompt Creando archivo binario SPFILE a partir del PFILE
create spfile from pfile;

!echo Validando creación del SPFILE
!ls $ORACLE_HOME/dbs/spfilecariproy.ora
