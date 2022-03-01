--liquibase formatted sql

--changeset lamnd:01
--comment create table demo

create table demo
(
    id              serial                not null
        constraint demo_pk
        primary key,
    name            varchar(50)           not null,
    token           varchar(20),
    type            varchar(10),
    status          varchar(10),
    created_date    date,
    last_modified_date date
);

create unique index demo_id_uindex
    on demo (id);

--rollback drop table demo;