-- @Autor:        Héctor Eduardo Cabrera Beltrán & Alejandro Rivera Nagano
-- @Fecha:        9 de enero de 2022
-- @Descripción:  Creación de las tablas del módulo 2 (Contenido).

-- Modulo 2: Contenido
connect admin_contenido/admin_contenido
-- Tabla: genero 
create table genero(
  genero_id      varchar2(40)     not null,
  nombre         varchar2(40)     not null,
  descripcion    varchar2(500)    not null,
  constraint genero_pk primary key (genero_id)
  using index(
    create unique index genero_pk on genero(genero_id)
    tablespace tbs_indexes
  )
)tablespace tbs_contenido_datos;

-- Tabla: contenido 
create table contenido(
  contenido_id              number(10, 0)    not null,
  calificacion_estrellas    number(1, 0)     not null,
  clave                     varchar2(16)     not null,
  nombre                    varchar2(40)     not null,
  num_reproducciones        number(20, 0)    not null,
  duracion_segs             number(10, 0)    not null,
  genero_id                 varchar2(40)     not null,
  constraint contenido_pk primary key (contenido_id)
  using index(
    create unique index contenido_pk on contenido(contenido_id)
    tablespace tbs_indexes
  ),
 constraint contenido_genero_fk foreign key (genero_id)
    references genero(genero_id)
)tablespace tbs_contenido_datos;

create index contenido_genero_id_ix on contenido(genero_id)
  tablespace tbs_indexes;

-- Tabla: audio 
create table audio(
  contenido_id    number(10, 0)     not null,
  letra           varchar2(1000)    not null,
  formato         varchar2(4)       not null,
  kbps            number(4, 0)      not null,
  constraint audio_pk primary key (contenido_id) 
  using index(
    create unique index audio_pk on audio(contenido_id)
    tablespace tbs_indexes
  ),
 constraint audio_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;


-- Tabla: autor 
create table autor(
  autor_id            number(10, 0)    not null,
  nombre              varchar2(40)     not null,
  apellidos           varchar2(40)     not null,
  email               varchar2(40)     not null,
  nombre_artistico    varchar2(40)     not null,
  constraint autor_pk primary key (autor_id)
  using index(
    create unique index autor_pk on autor(autor_id)
    tablespace tbs_indexes
  )
)tablespace tbs_contenido_datos;

-- Tabla: autor_contenido 
create table autor_contenido(
  autor_contenido_id          number(10, 0)    not null,
  porcentaje_participacion    number(3, 0)     not null,
  autor_id                    number(10, 0)    not null,
  contenido_id                number(10, 0)    not null,
  constraint autor_contenido_pk primary key (autor_contenido_id)
  using index(
    create unique index autor_contenido_pk on autor_contenido(autor_contenido_id)
    tablespace tbs_indexes
  ),
  constraint autor_contenido_autor_fk foreign key (autor_id)
    references autor(autor_id),
  constraint autor_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;

create index autor_contenido_autor_id_ix on autor_contenido(autor_id)
  tablespace tbs_indexes;

create index autor_contenido_contenido_id_ix on autor_contenido(contenido_id)
  tablespace tbs_indexes;

-- Tabla: playlist_contenido 
create table playlist_contenido(
  playlist_contenido_id    number(10, 0)    not null,
  contenido_id             number(10, 0)    not null,
  playlist_id              number(10, 0)    not null,
  constraint playlist_contenido_pk primary key (playlist_contenido_id)
  using index(
    create unique index playlist_contenido_pk 
      on playlist_contenido(playlist_contenido_id)
    tablespace tbs_indexes
  ),
  constraint playlist_contenido_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;

create index playlist_contenido_contenido_id_ix on playlist_contenido(contenido_id)
  tablespace tbs_indexes;

-- Tabla: reproduccion 
create table reproduccion(
  reproduccion_id       number(10, 0)    not null,
  usuario_id            number(10, 0)    not null,
  fecha_inicio          date             not null,
  velocidad_carga       number(10, 0)    not null,
  velocidad_descarga    number(10, 0)    not null,
  latitud               number(8, 6),
  longitud              number(9, 6),
  segundo_inicial       number(5, 0)     not null,
  segundo_final         number(5, 0)     not null,
  contenido_id          number(10, 0)    not null,
  constraint reproduccion_pk primary key (reproduccion_id)
  using index(
    create unique index reproduccion_pk on reproduccion(reproduccion_id)
    tablespace tbs_indexes
  ),
  constraint reproduccion_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;

create index reproduccion_contenido_id_ix on reproduccion(contenido_id)
  tablespace tbs_indexes;

-- Tabla: seccion 
create table seccion(
  seccion_id      number(10, 0)    not null,
  contenido       blob             not null,
  contenido_id    number(10, 0)    not null,
  constraint seccion_pk primary key (seccion_id)
  using index(
    create unique index seccion_pk on seccion(seccion_id)
    tablespace tbs_indexes
  ),
  constraint seccion_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;

create index seccion_contenido_id_ix on seccion(contenido_id)
  tablespace tbs_indexes;

alter table seccion 
  move lob(contenido) store as
    (tablespace tbs_contenido_blobs);


-- Tabla: video 
create table video(
  contenido_id     number(10, 0)    not null,
  tipo             varchar2(20)     not null,
  clasificacion    varchar2(3)      not null,
  transporte       varchar2(5)      not null,
  codificacion     varchar2(4)      not null,
  constraint video_pk primary key (contenido_id) 
  using index(
    create unique index video_pk on video(contenido_id)
    tablespace tbs_indexes
  ),
  constraint video_contenido_fk foreign key (contenido_id)
    references contenido(contenido_id)
)tablespace tbs_contenido_datos;



