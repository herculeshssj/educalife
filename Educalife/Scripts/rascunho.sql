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

