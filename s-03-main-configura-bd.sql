--@Autor:         Héctor E. Cabrera Beltrán & Alejandor Rivera Nagano
--@Fecha:         08 de enero de 2022
--@Descripción:   Archivo principal con la configuración de la FRA, modo archivelog,
--                y RMAN.

connect sys/system as sysdba
Prompt =============================
Prompt Configurando listener... revisar tnsnames y listener.ora
!./s-03-configura-listener.sh
Prompt =============================
Prompt Configurando modo ARCHIVELOG
@s-03-config-modo-archivelog.sql
Prompt =============================
Prompt Configurando servidores compartidos...
@s-03-config-modo-compartido.sql
Prompt =============================
Prompt Configurando Fast Recovery Area...
@s-03-configura-fra.sql
Prompt =============================
Prompt Configurando parámetros iniciales de RMAN...
!./s-03-rman-config.sh
Prompt =============================
Prompt Creando Tablespaces de la BD...
@s-03-crea-tbs.sql

