--@Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha creación:  9 de enero de 2022
--@Descripción:     Archivo principal con la generación de datos REDO y
--                  generación de backups diferenciales.

Prompt =========================
Prompt Generando datos REDO...
@s-06-generacion-redo-1.sql
commit;
connect sys/system as sysdba
Prompt =========================
Prompt Realizando backup diferencial...
!./s-06-rman-backup-diferencial.sh
Prompt =========================
Prompt Generando más datos REDO...
@s-06-generacion-redo-2.sql
commit;
connect sys/system as sysdba
Prompt =========================
Prompt Realizando otro backup diferencial...
!./s-06-rman-backup-diferencial.sh
exit
