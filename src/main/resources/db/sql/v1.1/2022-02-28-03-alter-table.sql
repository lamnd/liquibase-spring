--liquibase formatted sql

--changeset lamnd:03
--comment alter table customer

alter table public.customer add address varchar(100);

--rollback alter table public.customer drop column address;