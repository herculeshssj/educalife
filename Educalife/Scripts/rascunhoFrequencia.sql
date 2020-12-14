select * from frequencia f ;

select * from inscricao_turma_frequencia itf ;

select * from inscricao_turma it ;

alter table frequencia add id_inscricao_turma varchar(255);
alter table frequencia drop column id_inscricao_turma;


select id, id_inscricao_turma from frequencia f where f.id_inscricao_turma not in (select distinct inscricao_turma_id from inscricao_turma_frequencia);
select distinct inscricao_turma_id from inscricao_turma_frequencia;

insert into inscricao_turma_frequencia (inscricao_turma_id, frequencia_id)
	select  
		f.id_inscricao_turma,
		f.id 
	from 
		frequencia f 
	where 
		f.id_inscricao_turma not in (
			select distinct inscricao_turma_id from inscricao_turma_frequencia
		); 
	
	
	
select * from inscricao_turma_frequencia itf ;
select * from frequencia f 

select * from frequencia f where id in (select distinct frequencia_id from dbo.inscricao_turma_frequencia itf);