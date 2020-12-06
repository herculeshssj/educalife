/* Script para corrigir o problema com o upload dos anexos */

--- Após a criação das tabelas na base, rode o comando abaixo logado com o usuário educalife:
alter table OXFILES alter column [data] varbinary(max);