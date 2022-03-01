--liquibase formatted sql

--changeset lamnd:02
--comment create table customer

create table customer
(
    id              serial                not null
        constraint customer_pk
        primary key,
    name            varchar(50)           not null,
    status          varchar(10),
    created_date    date,
    last_modified_date date
);

create unique index customer_id_uindex
    on customer (id);

--rollback drop table customer;