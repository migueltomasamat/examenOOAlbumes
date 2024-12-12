DELIMITER //
drop table if exists album cascade;
drop table if exists fotografia cascade;
//

create table album(
    uuid varchar(36),
    nombre varchar(100),
    fecha_lanzamiento date,
    id_fotografia varchar(10)
);
//
create table fotografia(
    uuid varchar(36),
    nombre varchar(255),
    ruta varchar(255),
    contenido varchar(1000)
);
//

alter table album add constraint pk_album primary key (uuid);
alter table fotografia add constraint pk_fotografia primary key (uuid);
//
alter table album add constraint fk_album_fotografia foreign key (id_fotografia) references fotografia(uuid);