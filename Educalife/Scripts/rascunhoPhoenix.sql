/* Phoenix Educacional */

select * from pessoa_fisica pf ;

select 'Phoenix - Campus ' || temp.uf from (select distinct uf from pessoa_fisica pf) as temp;

select distinct uf from pessoa_fisica pf order by 1 asc;


select * from unidade u ;

select * from departamento d where id_unidade = '2c9fd08176b933300176b94df3410091';

select gen_random_uuid();

select replace(gen_random_uuid()::varchar, '-', '');

insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Finanças', '2c9fd08176b933300176b94df3410091');

insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Coordenação', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Pessoal', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Ensino', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Extensão', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Pesquisa e Desenvolvimento', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'TI', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Diretoria', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Conselho', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Imprensa', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'RI - Relação com Investidores', '2c9fd08176b933300176b94df3410091');
insert into departamento values (replace(gen_random_uuid()::varchar, '-', ''), 'Planejamento', '2c9fd08176b933300176b94df3410091');


select
select * from localidade l2 where id_unidade = '2c9fd08176b933300176b94df3410091';

insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E02', 'Escritório 02 - Finanças', '', '2c9fd08176b933300176b94df3410091');

insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E03', 'Escritório 03 - Coordenação-Geral', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E04', 'Escritório 04 - Pessoal', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E05', 'Escritório 05 - Ensino', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E06', 'Escritório 06 - Extensão', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E07', 'Escritório 07 - Pesquisa e Desenvolvimento', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E08', 'Escritório 08 - TI', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E09', 'Escritório 09 - Diretoria', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E10', 'Escritório 10 - Conselho', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E11', 'Escritório 11 - Imprensa', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E12', 'Escritório 12 - RI', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E13', 'Escritório 13 - Planejamento', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E14', 'Escritório 14 - Jurídico', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E15', 'Escritório 15 - Política e Sociedade', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'E16', 'Escritório 16 - Meio Ambiente', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'A01', 'Auditório 01', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'A02', 'Auditório 02', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'A03', 'Auditório 03', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'A04', 'Auditório 04', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'A05', 'Auditório 05', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S01', 'Sala 01', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S02', 'Sala 02', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S03', 'Sala 03', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S04', 'Sala 04', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S05', 'Sala 05', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S06', 'Sala 06', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S07', 'Sala 07', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S08', 'Sala 08', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S09', 'Sala 09', '', '2c9fd08176b933300176b94df3410091');
insert into localidade values (replace(gen_random_uuid()::varchar, '-', ''), true, 'S10', 'Sala 10', '', '2c9fd08176b933300176b94df3410091');
