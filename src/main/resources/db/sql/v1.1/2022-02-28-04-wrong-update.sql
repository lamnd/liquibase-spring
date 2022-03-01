--liquibase formatted sql

--changeset lamnd:04
--comment alter table customer

alter table customer_new add address varchar(100);

--rollback alter table customer_new drop column address;