--@Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha creación:  9 de enero de 2022
--@Descripción:     Activa la creación de datos redo para los tablespaces.

connect sys/system as sysdba
alter tablespace tbs_usuarios logging;
alter tablespace tbs_contenido_datos logging;
alter tablespace tbs_contenido_blobs logging;
alter tablespace tbs_indexes logging;
