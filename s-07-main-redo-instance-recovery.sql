--@Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha creación:  9 de enero de 2022
--@Descripción:     Archivo principal para simular un instance recovery.

Prompt =============================
Prompt Generando datos REDO para hacer un instance recovery...
@s-07-generacion-redo.sql
connect sys/system as sysdba
Prompt =============================
Prompt Realizando instance recovery...
!./s-07-instance-recovery.sh
exit
