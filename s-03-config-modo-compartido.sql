--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Configuración del modo compartido.

connect sys/system as sysdba
alter system set db_domain="fi.unam" scope=spfile;
shutdown
startup
alter system set dispatchers='(dispatchers=2)(protocol=tcp)';
alter system set shared_servers=4;

show parameter dispatchers;
show parameter shared_servers;

alter system register;

prompt Ejecutar 'lsnrctl services' como oracle

