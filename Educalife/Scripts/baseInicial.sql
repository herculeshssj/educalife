use master;

-- Exclui a base
-- alter database Educalife set single_user with rollback immediate;
-- drop database Educalife;

-- Cria a base
CREATE database Educalife;

-- Cria o login
CREATE login educalife WITH password = 'Ed7c4l1f3*', default_database=[Educalife];

-- Seleciona a base
use Educalife;

-- Cria o usuário
CREATE USER educalife FOR login educalife;

-- Atribui ao usuário acesso de owner a base
EXEC sp_addrolemember N'db_owner',[educalife];
