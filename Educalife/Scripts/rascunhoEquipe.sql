select * from turma t;

select * from turma_equipe te;

select * from equipe e ;


/*
Equipe
- nome
- codigo
- descricao
- ativo
- membrosEquipe

MembroEquipe
- funcaoMembroEquipe
- pessoaFisica
- afastado

FuncaoMembroEquipe
- descricao


Turma
- equipe

Departamento
- equipe
*/

select * from funcao_membro_equipe fme;
-- update funcao_membro_equipe set lideranca = false;


select * from membro_equipe me 
inner join pessoa_fisica pf on pf.id = me.id_pessoa_fisica ;

select * from equipe;
select * from membro_equipe;

-- alter table equipe_membro_equipe drop constraint uk_ryaktok6p9myr21u8ymwk0kgm;

-- ALTER TABLE public.equipe_membro_equipe ADD CONSTRAINT uk_ryaktok6p9myr21u8ymwk0kgm UNIQUE (membrosequipe_id, equipe_id);



