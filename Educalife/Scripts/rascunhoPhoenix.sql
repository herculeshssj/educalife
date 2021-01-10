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






select 'Phoenix - Campus ' || temp.uf from (select distinct uf from pessoa_fisica pf) as temp;
select * from empresa e inner join pessoa_juridica pj on pj.id = e.id_pessoa_juridica ;


select * from unidade u where u.id_empresa = '2c9fd08176b933300176b94cb2f70082';


select 'Phoenix - Campus ' || temp.uf, u.* from (select distinct uf from pessoa_fisica pf) as temp, unidade u where u.id_empresa = '2c9fd08176b933300176b94cb2f70082';


insert into unidade (id, bairro, cep, cidade, logradouro, numero, uf, horario_funcionamento, nome_unidade, id_empresa, id_tipo_logradouro)
	select
		replace(gen_random_uuid()::varchar, '-', ''),
		u.bairro,
		u.cep,
		u.cidade,
		u.logradouro,
		u.numero,
		u.uf,
		u.horario_funcionamento,
		'Phoenix - Campus ' || temp.uf,
		u.id_empresa,
		u.id_tipo_logradouro 
	from (
		select distinct uf from pessoa_fisica pf
	) as temp, unidade u 
	where 
		u.id_empresa = '2c9fd08176b933300176b94cb2f70082';
	

select * from departamento d inner join unidade u on u.id = d.id_unidade where u.id_empresa = '2c9fd08176b933300176b94cb2f70082' order by d.nome_departamento asc;
	
select * from departamento d ;


select * from departamento d, unidade u where u.id_empresa = '2c9fd08176b933300176b94cb2f70082' and u.id <> '2c9fd08176b933300176b94df3410091' and d.id_unidade not in (
	select id from unidade u2 where u2.id_empresa = '2c964081742167b80174216845730001'
) and d.id in (
'2c9fd08176b933300176b954305400ad',
'3d91fe20208a4b71a82bd6fdacbab096',
'f322d1e6d3d7491fab1603b3944b3293',
'ec71deea845e4d3d9c237e3f80b9d6e5',
'744c438d497b440a930edf6656d20296',
'4743a16470fa4414ad3ca8a8a92119c6',
'7597e19ec27249eb891cfd2444fce97e',
'60c1a75719af41ddab593929c6d4eaf4'
)
;


insert into departamento (id, nome_departamento, id_unidade)
	select
	replace(gen_random_uuid()::varchar, '-', ''),
	d.nome_departamento,
	u.id 
	from
	departamento d, unidade u where u.id_empresa = '2c9fd08176b933300176b94cb2f70082' and u.id <> '2c9fd08176b933300176b94df3410091' and d.id_unidade not in (
	select id from unidade u2 where u2.id_empresa = '2c964081742167b80174216845730001'
	) and d.id in (
	'2c9fd08176b933300176b954305400ad',
	'3d91fe20208a4b71a82bd6fdacbab096',
	'f322d1e6d3d7491fab1603b3944b3293',
	'ec71deea845e4d3d9c237e3f80b9d6e5',
	'744c438d497b440a930edf6656d20296',
	'4743a16470fa4414ad3ca8a8a92119c6',
	'7597e19ec27249eb891cfd2444fce97e',
	'60c1a75719af41ddab593929c6d4eaf4'
	);


select * from unidade u

select * from localidade l 

insert into localidade
select replace(gen_random_uuid()::varchar, '-', ''), l.ativo, l.codigo, l.descricao, l.observacao, u.id as id_unidade, l.ministra_aula from localidade l, unidade u
where u.id_empresa = '2c9fd08176b933300176b94cb2f70082'
and
u.id <> '2c9fd08176b933300176b94df3410091'
and
l.id in (
'2c9fd08176b933300176b95d8e8100e7',
'b84d8110b8a0471d982fd277b70e06e4',
'13b47f63ee4440769d5affbd5c5e1da0',
'ec95551c0e544df9bfd607aad28a9a6e',
'b76b0511c9a6426487a5435b02fa320b',
'529cb2c2e63c4a1d8d0d3ea9dd3cf3bc',
'e20a1b71b1ff4bcba6175490ebbcb4c5',
'8c0b000365d24ed1819ed446fdea2e90',
'ebdda6b522264ed3859349fe5299d79a',
'cece2939c91b401f8a87798ddd042e91',
'5d335822269e4800909ac7d8441117cf',
'719188a6c9e042a284c77db37a1cbd9e',
'7fee24cc65574d6fabc439e53021e900',
'3189a2221e9c4b2fbc11a919bee2b8a1',
'0959c9f8957e4764ad2ac6c9c89c14f2',
'f43d1882fa3d4772bdf07794fe27a203',
'44c83f1cd3ed44de9f509cfc59681172',
'7ab3d6a451f949ea816f65adb8e5eee4',
'4b5e98e5f1d5480cbf3fe49c2d047ddc',
'b37aa5aaf1094ce4a33b0c656255264c'
);