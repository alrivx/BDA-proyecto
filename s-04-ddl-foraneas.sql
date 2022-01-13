-- @Autor: Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha: 9 de enero de 2022
-- @Descripción: Otorgamiento de permisos necesarios para referenciar 
--    y hacer selecciones sobre tablas en otros esquemas 

connect sys/system as sysdba
Prompt Otorgando permisos de selección a ambos usuarios sobre todas las tablas
-- permisos de seleccion a ambos usuarios en ambos esquemas
grant select on admin_usuarios.plan to admin_contenido;
grant select on admin_usuarios.usuario to admin_contenido;
grant select on admin_usuarios.tarjeta to admin_contenido;
grant select on admin_usuarios.cargo to admin_contenido;
grant select on admin_usuarios.comentario to admin_contenido;
grant select on admin_usuarios.dispositivo to admin_contenido;
grant select on admin_usuarios.historico_plan to admin_contenido;
grant select on admin_usuarios.playlist to admin_contenido;
grant select on admin_usuarios.usuario_playlist to admin_contenido;

grant select on admin_contenido.genero to admin_usuarios;
grant select on admin_contenido.contenido to admin_usuarios;
grant select on admin_contenido.audio to admin_usuarios;
grant select on admin_contenido.autor to admin_usuarios;
grant select on admin_contenido.autor_contenido to admin_usuarios;
grant select on admin_contenido.playlist_contenido to admin_usuarios;
grant select on admin_contenido.reproduccion to admin_usuarios;
grant select on admin_contenido.seccion to admin_usuarios;
grant select on admin_contenido.video to admin_usuarios;

-- permisos de referencia en tablas cuya tabla padre está en otro esquema
grant references on admin_usuarios.playlist to admin_contenido;
grant references on admin_usuarios.usuario to admin_contenido;
grant references on admin_contenido.contenido to admin_usuarios;

-- Añadiendo referencias a las tablas cuya tabla padre está en otro esquema
connect admin_contenido/admin_contenido
alter table playlist_contenido
  add constraint playlist_contenido_playlist_fk
  foreign key(playlist_id)
  references admin_usuarios.playlist(playlist_id);

create index playlist_contenido_playlist_id_ix on playlist_contenido(playlist_id)
tablespace tbs_indexes;

alter table reproduccion
  add constraint reproduccion_usuario_fk
  foreign key(usuario_id)
  references admin_usuarios.usuario(usuario_id);

create index reproduccion_usuario_id_ix on reproduccion(usuario_id)
tablespace tbs_indexes;


-- Tabla CONTENIDO(contenido) es padre de COMENTARIO(usuarios)
connect admin_usuarios/admin_usuarios
alter table comentario
  add constraint comentario_contenido_fk
  foreign key(contenido_id)
  references admin_contenido.contenido(contenido_id);

create index comentario_contenido_id_ix on comentario(contenido_id)
tablespace tbs_indexes;

