--liquibase formatted sql

--changeset lamnd:05 context:dev
--comment alter insert data

insert into demo (id, name) values (1, 'Liquibase');

--rollback delete table demo where id = 1;

--changeset lamnd:05 context:prod
--comment alter insert data

insert into demo (id, name) values (1, 'Liquibase prod');

--rollback delete table demo where id = 1;