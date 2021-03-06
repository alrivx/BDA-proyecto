-- @Autor:        Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha:        9 de enero de 2022
-- @Descripción:  Creación de las tablas del módulo 1 (Usuarios).

--Modulo 1: Usuarios
connect admin_usuarios/admin_usuarios
-- Tabla: plan 
create table plan(
  plan_id        number(10, 0)    not null,
  clave          number(10, 0)    not null,
  nombre         varchar2(40)     not null,
  costo          number(10, 0)    not null,
  descripcion    varchar2(40)     not null,
  constraint plan_pk primary key (plan_id)
  using index(
    create unique index plan_pk on plan(plan_id)
    tablespace tbs_indexes
  )
)tablespace tbs_usuarios;


-- Tabla: usuario 
create table usuario(
  usuario_id         number(10, 0)    not null,
  username           varchar2(40)     not null,
  email              varchar2(40)     not null,
  password           varchar2(40)     not null,
  nombre             varchar2(40)     not null,
  apellidos          varchar2(40)     not null,
  rfc                varchar2(40),
  plan_id            number(10, 0)    not null,
  dueño_cuenta_id    number(10, 0),
  constraint usuario_pk primary key (usuario_id) 
  using index(
    create unique index usuario_pk on usuario(usuario_id)
    tablespace tbs_indexes
  ),
  constraint usuario_plan_fk foreign key (plan_id)
    references plan(plan_id),
  constraint usuario_usuario_fk foreign key (dueño_cuenta_id)
    references usuario(usuario_id)
)tablespace tbs_usuarios;

create index usuario_plan_id_ix on usuario(plan_id)
  tablespace tbs_indexes;
 
create index usuario_dueño_cuenta_id_ix on usuario(dueño_cuenta_id)
  tablespace tbs_indexes;


-- Tabla: tarjeta 
create table tarjeta(
  tarjeta_id       number(10, 0)    not null,
  tipo             varchar2(40)     not null,
  numero           number(12, 0)    not null,
  num_seguridad    number(3, 0)     not null,
  vigencia         date             not null,
  usuario_id       number(10, 0)    not null,
  constraint tarjeta_pk primary key (tarjeta_id) 
  using index(
    create unique index tarjeta_pk on tarjeta(tarjeta_id)
    tablespace tbs_indexes
  ),
  constraint tarjeta_usuario_fk foreign key (usuario_id)
    references usuario(usuario_id)
)tablespace tbs_usuarios;
 
create index tarjeta_usuario_id_ix on tarjeta(usuario_id)
  tablespace tbs_indexes;

-- Tabla: cargo 
create table cargo(
  cargo_id      number(10, 0)    not null,
  fecha         date             not null,
  importe       number(10, 2)    not null,
  folio         varchar2(40)     not null,
  tarjeta_id    number(10, 0)    not null,
  constraint cargo_pk primary key (cargo_id) 
  using index(
    create unique index cargo_pk on cargo(cargo_id)
    tablespace tbs_indexes
  ),
  constraint cargo_tarjeta_fk foreign key (tarjeta_id)
    references tarjeta(tarjeta_id)
)tablespace tbs_usuarios;
 
create index cargo_tarjeta_id_ix on cargo(tarjeta_id)
  tablespace tbs_indexes;


-- Tabla: comentario 
create table comentario(
  comentario_id           number(10, 0)    not null,
  texto                   varchar2(500)    not null,
  comentario_origen_id    number(10, 0),
  usuario_id              number(10, 0)    not null,
  contenido_id            number(10, 0)    not null,
  constraint comentario_pk primary key (comentario_id) 
  using index(
    create unique index comentario_pk on comentario(comentario_id)
    tablespace tbs_indexes
  ),
  constraint comentario_comentario_fk foreign key (comentario_origen_id)
    references comentario(comentario_id),
  constraint comentario_usuario_fk foreign key (usuario_id)
    references usuario(usuario_id)
)tablespace tbs_usuarios;
  
create index comentario_usuario_id_ix on comentario(usuario_id)
  tablespace tbs_indexes;

create index comentario_comentario_origen_id_ix on comentario(comentario_origen_id)
  tablespace tbs_indexes;

-- Tabla: dispositivo 
create table dispositivo(
  dispositivo_id       number(10, 0)    not null,
  tipo                 varchar2(40)     not null,
  ip                   varchar2(15),
  sistema_operativo    varchar2(40)     not null,
  nombre               varchar2(40)     not null,
  marca                varchar2(40)     not null,
  usuario_id           number(10, 0)    not null,
  constraint dispositivo_pk primary key (dispositivo_id)
  using index(
    create unique index dispositivo_pk on dispositivo(dispositivo_id)
    tablespace tbs_indexes
  ),
  constraint dispositivo_usuario_fk foreign key (usuario_id)
    references usuario(usuario_id)
)tablespace tbs_usuarios;
 
create index dispositivo_usuario_id_ix on dispositivo(usuario_id)
  tablespace tbs_indexes;

-- Tabla: historico_plan 
create table historico_plan(
  plan_id         number(10, 0)    not null,
  fecha_inicio    date             not null,
  fecha_fin       date,
  costo           number(5, 2)     not null,
  descripcion     varchar2(40),
  constraint historico_plan_pk primary key (plan_id, fecha_inicio)
  using index(
    create unique index historico_plan_pk 
      on historico_plan(plan_id,fecha_inicio)
    tablespace tbs_indexes
  ),
  constraint historico_plan_plan_fk foreign key (plan_id)
    references plan(plan_id)
)tablespace tbs_usuarios;
 
create index historico_plan_plan_id_ix on historico_plan(plan_id)
  tablespace tbs_indexes;

-- Tabla: playlist 
create table playlist(
  playlist_id    number(10, 0)    not null,
  nombre         varchar2(40)     not null,
  usuario_id     number(10, 0)    not null,
  constraint playlist_pk primary key (playlist_id) 
  using index(
    create unique index playlist_pk on playlist(playlist_id)
    tablespace tbs_indexes
  ),
  constraint playlist_usuario_fk foreign key (usuario_id)
    references usuario(usuario_id)
)tablespace tbs_usuarios;
 
create index playlist_usuario_id_ix on playlist(usuario_id)
  tablespace tbs_indexes;

-- Tabla: usuario_playlist 
create table usuario_playlist(
  usuario_playlist_id    number(10, 0)    not null,
  playlist_id            number(10, 0)    not null,
  usuario_id             number(10, 0)    not null,
  constraint usuario_playlist_pk primary key (usuario_playlist_id)
  using index(
    create unique index usuario_playlist_pk on usuario_playlist(usuario_playlist_id)
    tablespace tbs_indexes
  ),
 constraint usuario_playlist_usuario_fk foreign key (usuario_id)
    references usuario(usuario_id),
  constraint usuario_playlist_playlist_fk foreign key (playlist_id)
    references playlist(playlist_id)
)tablespace tbs_usuarios;
  
create index usuario_playlist_usuario_id_ix on usuario_playlist(usuario_id)
  tablespace tbs_indexes;

create index usuario_playlist_playlist_id_ix on usuario_playlist(playlist_id)
  tablespace tbs_indexes;


