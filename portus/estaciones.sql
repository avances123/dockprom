create table portus.estaciones
(
    nombre text,
    id     integer not null
        constraint estaciones_pk
            primary key
);

alter table portus.estaciones
    owner to fabio;

