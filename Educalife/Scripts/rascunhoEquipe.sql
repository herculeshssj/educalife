select * from turma t;

select * from turma_equipe te;

select * from equipe e ;


INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20003');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20003');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20004');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'TUTOR', false, '2c9640817425dfa9017425e604e20005');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'COORDENADOR', false, '2c9640817425dfa9017425e604e20004');
INSERT INTO public.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');

select * from turma where id = '2c9c8081743156470174315d94ae0012';
select * from pessoa_fisica pf where pf.id = '2c9640817425dfa9017425e604e20003';


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


select * from funcao_membro_equipe fme;
-- update funcao_membro_equipe set lideranca = false;


select * from membro_equipe me ;

select * from equipe;


-- alter table equipe_membro_equipe drop constraint uk_ryaktok6p9myr21u8ymwk0kgm;

-- ALTER TABLE public.equipe_membro_equipe ADD CONSTRAINT uk_ryaktok6p9myr21u8ymwk0kgm UNIQUE (membrosequipe_id, equipe_id);