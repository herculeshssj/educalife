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
