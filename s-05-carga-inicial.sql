--@Autor:           Héctor E. Cabrera Beltrán & Alejandro Rivera Nagano
--@Fecha creación:  9 de enero de 2022
--@Descripción:     Carga inicial de registros.

-- insertando en orden de dependencia	
connect admin_contenido/admin_contenido
@xx-carga-m2-genero.sql
@xx-carga-m2-contenido.sql
@xx-carga-m2-audio.sql
@xx-carga-m2-autor.sql
@xx-carga-m2-autor_contenido.sql

connect admin_usuarios/admin_usuarios
@xx-carga-m1-plan.sql
@xx-carga-m1-usuario.sql
@xx-carga-m1-tarjeta.sql
@xx-carga-m1-cargo.sql
@xx-carga-m1-comentario.sql
@xx-carga-m1-dispositivo.sql
@xx-carga-m1-historico_plan.sql
@xx-carga-m1-playlist.sql
@xx-carga-m1-usuario_playlist.sql
commit;

connect admin_contenido/admin_contenido
@xx-carga-m2-playlist_contenido.sql
@xx-carga-m2-reproduccion.sql
@xx-carga-m2-seccion.sql
@xx-carga-m2-video.sql
commit;
