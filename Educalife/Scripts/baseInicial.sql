-- Exclui a base de dados caso exista
-- drop database educalife;

-- Cria o usuário
create user educalife with encrypted password 'Ed7c4l1f3*';

-- Cria a base de dados
create database educalife with owner educalife encoding 'UTF-8';

/* Altere a conexão para utilizar a base 'educalife' */
-- Altera as permissões do esquema public
alter schema public owner to educalife;