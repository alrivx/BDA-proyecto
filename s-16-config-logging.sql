-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 6 de enero de 2022
-- @Descripción: Configurar tablespaces para que generen REDO logs terminada la 
-- carga inicial
alter tablespace contenido_tbs logging;
alter tablespace indexes_tbs logging;
alter tablespace usuarios_tbs logging;
