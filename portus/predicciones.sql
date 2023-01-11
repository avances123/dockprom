create table portus.predicciones
(
    fecha_pasada timestamp not null,
    id           integer
        constraint predicciones_estaciones_id_fk
            references portus.estaciones,
    var          text,
    pred         real[]
);

alter table portus.predicciones
    owner to fabio;

