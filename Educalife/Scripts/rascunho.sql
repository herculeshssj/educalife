select * from tipo_logradouro tl;
select * from pessoa_fisica pf ;
select * from pessoa_fisica_contatos pfc; 
select * from curso;

drop table curso;
--drop table yourfirstentity ;

select * from inscricao_turma ;
drop table inscricao_turma ;

--select * from banco where febraban = true;
--truncate banco;
drop table banco;

select * from cargo;
--truncate cargo;

--select codigo_cbo ,length(denominacao) from cargo order by 2 desc;
select * from cargo where codigo_cbo = '811820';
select * from cargo where codigo_cbo = '953115';



--select curso0_.id as col_0_0_, curso0_.nome_curso as col_1_0_, pessoafisi1_.nome as col_2_0_, curso0_.carga_horaria as col_3_0_, curso0_.status_curso as col_4_0_ from Educalife.curso curso0_ cross join Educalife.pessoa_fisica pessoafisi1_ cross join Educalife.colaborador colaborado2_ where curso0_.id_coordenador=colaborado2_.id and colaborado2_.id_pessoa_fisica=pessoafisi1_.id limit 10;


-- Lançamento em massa
/*
INSERT INTO lancamento
(id, acao_lancamento, anexo, [data], historico, numero, observacao, status_lancamento, valor, id_conta)
VALUES(replace(newid(), '-', ''), 'PAGAMENTO', 'F83B5B55C0A8380100000000CA11D8A8', '2020-10-06', 'Lançamento 0,99', '', '', 'CONFIRMADO', 0.99, '4028b88174f824ba0174f82612de0002');


select * from Educalife.lancamento where id_forma_pagamento is not null;
update Educalife.lancamento set id_forma_pagamento = '4028b881751ad46a01751ad78e950019' where id_forma_pagamento is null;


select * from Educalife.Educalife.conta_pagar cp ;
update Educalife.Educalife.conta_pagar set pago = 0;

select * from Educalife.Educalife.conta_receber cr ;
update Educalife.Educalife.conta_receber set pago = 0;

select * from Educalife.Educalife.rubrica r ;
update Educalife.Educalife.rubrica set ativo = 1;


select * from Educalife.Educalife.pais p ;

update Educalife.Educalife.pais set denominacao = rtrim(ltrim(denominacao));

select * from rubrica r ;
update rubrica set tipo_rubrica = 'RENDIMENTO' where tipo_rubrica is null;
*/

alter table pessoa_fisica alter column foto varbinary(max);
alter table audit.pessoa_fisica_AUD alter column foto varbinary(max);
alter table OXFILES alter column [data] varbinary(max);

select * from OXFILES;
select * from cargo;

alter table audit.empresa_AUD alter column contrato_social nvarchar(max) null;
alter table empresa alter column contrato_social nvarchar(max) null;



select gen_random_uuid();
f413fa75e3e54113975920768712de02

select random() * 10 + 1;
SELECT floor(random() * 10 + 1)::int;

select floor(random()* (100000-10000 + 1) + 10000);

