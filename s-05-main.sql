--@Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha creación:  9 de enero de 2022
--@Descripción:     Archivo principal para la carga inicial y backup inicial.

Prompt =======================
Prompt Cargando registros iniciales...
@s-05-carga-inicial.sql
Prompt =======================
Prompt Realizando backup inicial...
!./s-05-rman-backup-inicial-fra.sh
!./s-05-rman-backup-inicial.sh
Prompt =======================
Prompt Activando logging para los tablespaces...
@s-05-activa-logging.sql

