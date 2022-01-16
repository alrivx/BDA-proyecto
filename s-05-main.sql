alter tablespace tbs_usuarios nologging;
alter tablespace tbs_contenido_datos nologging;
alter tablespace tbs_contenido_blobs nologging;
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

