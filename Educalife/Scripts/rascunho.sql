select * from tipo_logradouro tl;
select * from pessoa_fisica pf ;
select * from pessoa_fisica_contatos pfc; 
select * from curso;

drop table curso;
drop table yourfirstentity ;

select * from inscricao_turma ;
drop table inscricao_turma ;

select * from banco where febraban = true;
truncate banco;
drop table banco;

select * from cargo;
truncate cargo;

select codigo_cbo ,length(denominacao) from cargo order by 2 desc;
select * from cargo where codigo_cbo = '811820';
select * from cargo where codigo_cbo = '953115';



select curso0_.id as col_0_0_, curso0_.nome_curso as col_1_0_, pessoafisi1_.nome as col_2_0_, curso0_.carga_horaria as col_3_0_, curso0_.status_curso as col_4_0_ from Educalife.curso curso0_ cross join Educalife.pessoa_fisica pessoafisi1_ cross join Educalife.colaborador colaborado2_ where curso0_.id_coordenador=colaborado2_.id and colaborado2_.id_pessoa_fisica=pessoafisi1_.id limit 10;



