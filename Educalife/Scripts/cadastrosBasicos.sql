-- Inicia uma transação
begin transaction;

/* Tipo de logradouro */
INSERT INTO educalife.tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817418b7f6017418b8a4ee001e', 'AV', 'Avenida');
INSERT INTO educalife.tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817425a439017425a955dd1996', 'R', 'Rua');


/* Cargo */
INSERT INTO educalife.cargo
(id, ativo, codigo_cbo, denominacao)
VALUES('2c9640817425a439017425a681b705f8', 1, '234120', 'Professor de computação (no ensino superior)');


/* Deficiencia */
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7360c164c', 'Sem deficiência');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7361d164e', 'Cegueira');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7362c1650', 'Surdocegueira');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736341652', 'Baixa visão');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7363b1654', 'Deficiência física');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736421656', 'Surdez');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736491658', 'Deficiência intelectual');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7364f165a', 'Deficiência auditiva');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a73656165c', 'Deficiência multipla');
INSERT INTO educalife.deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7365d165e', 'Não declarado');


/* Escolaridade */
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793661660', 'Analfabeto');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793761662', 'Alfabetizado sem cursos regulares');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793831664', 'Ensino fundamental');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793911666', 'Ensino médio');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a7939f1668', 'Ensino superior');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793ab166a', 'Aperfeiçoamento');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793ba166c', 'Especializacao');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793c7166e', 'Mestrado');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793d41670', 'Doutorado');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793e11672', 'Pós-doutorado');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793f01674', 'Livre docência');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a794011676', '4a. Série do primeiro grau completa');
INSERT INTO educalife.escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a794101678', 'Não Informada');


/* EstadoCivil */
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db61167a', 'SOLTEIRO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db72167c', 'CASADO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db80167e', 'SEPARADO JUDICIALMENTE');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db8d1680', 'VIUVO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db9a1682', 'DESQUITADO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dba91684', 'OUTROS');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbb61686', 'SEPARADO CONSENSUALMENTE');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbc41688', 'DIVORCIADO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbd1168a', 'DESCONHECIDO');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbe0168c', 'UNIÃO ESTÁVEL');
INSERT INTO educalife.estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbe8168e', 'HOMOAFETIVA');


/* Etnia */
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821541690', 'Branca');
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821641692', 'Preta');
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821741694', 'Parda');
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821841696', 'Amarela');
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821951698', 'Indígena');
INSERT INTO educalife.etnia
(id, descricao)
VALUES('2c9640817425a439017425a821a5169a', 'Não declarado');


/* Genero */
INSERT INTO educalife.genero
(id, descricao)
VALUES('2c9640817425a439017425a85dd1169c', 'Masculino');
INSERT INTO educalife.genero
(id, descricao)
VALUES('2c9640817425a439017425a85de1169e', 'Feminino');


/* Pais */
INSERT INTO educalife.pais
(id, codigo, denominacao)
VALUES('2c9640817425a439017425a8aee71718', '24', 'BRASIL');


/* PessoaFisica */
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20003', '111.111.111-11', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'A', '10', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 1', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20004', '222.222.222-22', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'B', '20', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 2', 'Mãe', 'Pai', 'A_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20005', '333.333.333-33', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'C', '30', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 3', 'Mãe', 'Pai', 'B_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

/* Pessoa jurídica */
INSERT INTO educalife.pessoa_juridica
(id, cnpj, data_criacao, bairro, cep, cidade, complemento, logradouro, numero, uf, nome_fantasia, razao_social, id_tipo_logradouro)
VALUES('2c9640817421617901742162f7240001', '55.723.390/0001-10', '2011-08-11', 'Centro', '26000-000', 'Rio de Janeiro', '8º Andar Sala 815', 'Rio Branco', '185', 'RJ', 'Educalife', 'Educalife Serviços Educacionais Ltda.', '2c9640817418b7f6017418b8a4ee001e');

INSERT INTO educalife.pessoa_juridica_contatos
(pessoa_juridica_id, descricao, observacao, tipo_contato)
VALUES('2c9640817421617901742162f7240001', 'contato@educalife.com.br', 'Atendimento', 'EMAIL');
INSERT INTO educalife.pessoa_juridica_contatos
(pessoa_juridica_id, descricao, observacao, tipo_contato)
VALUES('2c9640817421617901742162f7240001', 'https://educalife.com.br', 'Site', 'SITE');


/* Empresa */
INSERT INTO educalife.empresa
(id, contrato_social, id_pessoa_juridica)
VALUES('2c964081742167b80174216845730001', '<p>Lorem Ipsum</p>
', '2c9640817421617901742162f7240001');


/* Unidade */
INSERT INTO educalife.unidade
(id, bairro, cep, cidade, complemento, logradouro, numero, uf, horario_funcionamento, nome_unidade, id_empresa, id_tipo_logradouro)
VALUES('2c96408174216d0d0174216eccf50001', 'Centro', '26000-000', 'Rio de Janeiro', '8º Andar - Sala 815', 'Rio Branco', '185', 'RJ', 'Seg. à Sex. das 9h às 17h', 'Unidade - Centro', '2c964081742167b80174216845730001', '2c9640817418b7f6017418b8a4ee001e');
INSERT INTO educalife.unidade
(id, bairro, cep, cidade, complemento, logradouro, numero, uf, horario_funcionamento, nome_unidade, id_empresa, id_tipo_logradouro)
VALUES('2c96408174216d0d01742170090b0005', 'Barra da Tijuca', '26000-000', 'Rio de Janeiro', '5º Andar', 'Das Américas', '5000', 'RJ', 'Seg. à Sáb. das 9h às 17h', 'Unidade - Barra', '2c964081742167b80174216845730001', '2c9640817418b7f6017418b8a4ee001e');

INSERT INTO educalife.unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d0174216eccf50001', 'centro@educalife.com.br', 'Atendimento', 'EMAIL');
INSERT INTO educalife.unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d0174216eccf50001', '(21) 2384-4983', 'Secretaria', 'TELEFONE');
INSERT INTO educalife.unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d01742170090b0005', 'barra@educalife.com.br', 'Atendimento', 'EMAIL');


/* Departamento */
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a30174217730ff0000', 'Administrativo', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421774b760002', 'Ensino', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177630e0004', 'Diretoria', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a30174217783980006', 'Recursos Humanos', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421779bb60008', 'Finanças', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177b563000a', 'Administrativo', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177ca1e000c', 'Ensino', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421780934000e', 'Pesquisa e Desenvolvimento', '2c96408174216d0d01742170090b0005');



/* Coordenador de curso */
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0007', '2020-01-01', NULL, '12345', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20003');
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0008', '2020-01-01', NULL, '23456', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20004');
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0009', '2020-01-01', NULL, '34567', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20005');

/* Cursos */
INSERT INTO educalife.curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426ec05017426ed300d0004', 40, 'Conceitos basico da versao mais recente da linguagem Java', 'Java basico', 'ATIVO', '2c9640817425dfa9017425e641ad0007');
INSERT INTO educalife.curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426fa81017426fe36a40004', 40, 'Conceitos avancados da versao atual do Java.', 'Java Avancado', 'ATIVO', '2c9640817425dfa9017425e641ad0008');
INSERT INTO educalife.curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426ec05017426eca1ab0001', 40, 'Lorem Ipsum', 'Java 5 Basico', 'INATIVO', '2c9640817425dfa9017425e641ad0007');
INSERT INTO educalife.curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426fa81017426fdc06a0001', 40, 'Lorem Ipsum', 'Java 5 Avancado', 'INATIVO', '2c9640817425dfa9017425e641ad0008');


/* Localidades */
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920001', 1, 'C01', 'Administrativo', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920002', 1, 'C02', 'Ensino', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920003', 1, 'C03', 'Diretoria', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920004', 1, 'C04', 'Recursos Humanos', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920005', 1, 'C05', 'Finanças', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920006', 1, 'C06', 'Sala 01', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920007', 1, 'C07', 'Sala 02', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920008', 1, 'C08', 'Sala 03', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920009', 1, 'C09', 'Auditório', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f692000a', 1, 'C10', 'Reunião', '', '2c96408174216d0d0174216eccf50001');



INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90004', 1, 'B01', 'Administrativo', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90005', 1, 'B02', 'Ensino', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90006', 1, 'B03', 'Pesquisa e Desenvolvimento', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90007', 1, 'B04', 'Sala 01', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90008', 1, 'B05', 'Sala 02', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90009', 1, 'B06', 'Sala 03', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000a', 1, 'B07', 'Sala 04', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000b', 1, 'B08', 'Sala 05', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000c', 1, 'B09', 'Reunião', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000d', 1, 'B10', 'Auditório', '', '2c96408174216d0d01742170090b0005');


/* Turmas */

INSERT INTO educalife.turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c8081743156470174315d94ae0012', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Básico - Turma A', 'ATIVO', 'ff8081817426ec05017426ed300d0004', '2c9c8081742c131401742c15f6920006');
INSERT INTO educalife.turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c8081743156470174315f9e1a0017', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Básico - Turma B', 'ATIVO', 'ff8081817426ec05017426ed300d0004', '2c9c8081742c131401742c15f6920007');
INSERT INTO educalife.turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c808174315647017431618823001d', '2020-10-31', '2020-05-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Avançado - Turma A', 'ATIVO', 'ff8081817426fa81017426fe36a40004', '2c9c8081742c131401742c164cb90007');
INSERT INTO educalife.turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c808174315647017431638cc40025', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Avançado - Turma B', 'ATIVO', 'ff8081817426fa81017426fe36a40004', '2c9c8081742c131401742c164cb90008');


INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'COORDENADOR', 1, '2c9640817425dfa9017425e604e20003');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'INSTRUTOR', 1, '2c9640817425dfa9017425e604e20005');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'COORDENADOR', 1, '2c9640817425dfa9017425e604e20003');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'INSTRUTOR', 1, '2c9640817425dfa9017425e604e20005');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'COORDENADOR', 1, '2c9640817425dfa9017425e604e20004');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'TUTOR', 0, '2c9640817425dfa9017425e604e20005');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'COORDENADOR', 0, '2c9640817425dfa9017425e604e20004');
INSERT INTO educalife.turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'INSTRUTOR', 1, '2c9640817425dfa9017425e604e20005');



INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c8081743156470174315d94ae0012', 40, 'GERAL');
INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c8081743156470174315f9e1a0017', 40, 'GERAL');
INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431618823001d', 10, 'INTERNO');
INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431618823001d', 15, 'EXTERNO');
INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431638cc40025', 5, 'INTERNO');
INSERT INTO educalife.turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431638cc40025', 10, 'EXTERNO');


/* Aulas */
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50468ab0001', '2020-10-07', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505be630007', '2020-10-14', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505dda0000a', '2020-10-21', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505fb6b000d', '2020-10-28', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50722fc0014', '2020-10-07', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50749fa0017', '2020-10-14', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5076528001a', '2020-10-21', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507804d001d', '2020-10-28', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507c3880021', '2020-10-01', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507ebd40024', '2020-10-08', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5080c920027', '2020-10-15', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5082fe2002a', '2020-10-22', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5085378002d', '2020-10-31', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5089e020031', '2020-10-07', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508b9e80034', '2020-10-14', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508daa10037', '2020-10-21', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508eeb8003a', '2020-10-28', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d509054f003d', '2020-10-31', '13:00', '09:00', '2c9c808174315647017431638cc40025');


/* Avaliações */
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df8303c20002', '2020-10-28', 'Avaliação final', 100.00, '- Lorem ipsum dolor sit amet, consectetur adipiscing elit.
- Nullam efficitur orci et varius condimentum.', '2c9c8081743156470174315d94ae0012');
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df83dfab0007', '2020-10-28', 'Avaliação final', 100.00, '- Praesent et arcu gravida, malesuada tortor maximus, placerat lectus.
- Sed quis nibh a sem fringilla varius.
- Praesent pulvinar dui hendrerit metus placerat, eu aliquam lorem tincidunt.', '2c9c8081743156470174315f9e1a0017');
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df84c55d000b', '2020-10-15', 'Avaliação - principais tópicos', 40.00, '- Duis ultrices felis eu tellus congue, elementum finibus lorem maximus.
- Sed ullamcorper magna eu semper rutrum.', '2c9c808174315647017431618823001d');
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df85c2a20010', '2020-10-31', 'Prova final (simulado certificação)', 60.00, '- Curabitur pellentesque tortor ullamcorper eros porta, eget finibus enim dictum.
- Aenean sagittis libero id pretium lobortis.
- Sed quis diam ac ante aliquam rhoncus.
- Sed sit amet elit blandit, consequat dui in, ultrices odio.
- Integer eu nisl nec nibh eleifend rutrum at vel neque.', '2c9c808174315647017431618823001d');
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df86a33b0014', '2020-10-21', 'Avaliação - recaptular tópicos vistos', 30.00, '- Suspendisse sit amet dui pharetra massa scelerisque tincidunt.
- Vestibulum quis ante consequat, sodales orci sed, rutrum odio.
- Morbi in erat at nulla faucibus congue vel ut erat.
- Nullam at elit eget augue faucibus auctor.', '2c9c808174315647017431638cc40025');
INSERT INTO Educalife.Educalife.avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df87125d0017', '2020-10-31', 'Prova final (simulado certificação)', 70.00, '- Pellentesque feugiat purus in molestie auctor.
- Suspendisse vestibulum risus at semper efficitur.
- In sed mauris eleifend, sodales lorem vel, auctor ante.
- Curabitur eget ante mattis, laoreet augue quis, placerat felis.', '2c9c808174315647017431638cc40025');




/*** Alunos ***/
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60003', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 001', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60004', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 002', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60005', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 003', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60006', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 004', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60007', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 005', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60008', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 006', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60009', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 007', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000a', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 008', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000b', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 009', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000c', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 010', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000d', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 011', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO educalife.pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000e', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 012', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

/*** Fim do Cadastro ***/


/* Inscrições nas turmas */
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb876de0013', '2020-10-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 555555, 'PENDENTE', '4028b88174cb9e230174cba1e5e60007', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '2020-10-06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 666666, 'PENDENTE', '4028b88174cb9e230174cba1e5e60008', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2020-10-02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 111111, 'PENDENTE', '4028b88174cb9e230174cba1e5e60003', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '2020-10-02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 222222, 'PENDENTE', '4028b88174cb9e230174cba1e5e60004', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb7b363000b', '2020-10-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 333333, 'PENDENTE', '4028b88174cb9e230174cba1e5e60005', '2c9c8081743156470174315d94ae0012');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb801e5000f', '2020-10-04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 444444, 'PENDENTE', '4028b88174cb9e230174cba1e5e60006', '2c9c8081743156470174315f9e1a0017');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '2020-10-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 777777, 'PENDENTE', '4028b88174cb9e230174cba1e5e60009', '2c9c808174315647017431618823001d');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '2020-10-08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 888888, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000a', '2c9c808174315647017431618823001d');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', '2020-10-09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 999999, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000b', '2c9c808174315647017431618823001d');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '2020-10-10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 101010, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000c', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '2020-10-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 111110, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000d', '2c9c808174315647017431638cc40025');
INSERT INTO educalife.inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '2020-10-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 121212, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000e', '2c9c808174315647017431638cc40025');

/* Frequência */
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb35e060002', 0, '4028b88174d504040174d505fb6b000d', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', 1, '4028b88174d504040174d505fb6b000d', 0, 'Problemas de saúde');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 0, '4028b88174d504040174d505fb6b000d', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb35e060002', 0, '4028b88174d504040174d505dda0000a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb35e060002', 0, '4028b88174d504040174d505be630007', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb35e060002', 0, '4028b88174d504040174d50468ab0001', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', 0, '4028b88174d504040174d505dda0000a', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', 0, '4028b88174d504040174d505be630007', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', 0, '4028b88174d504040174d50468ab0001', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 0, '4028b88174d504040174d505dda0000a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 0, '4028b88174d504040174d505be630007', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 0, '4028b88174d504040174d50468ab0001', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 0, '4028b88174d504040174d50722fc0014', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 0, '4028b88174d504040174d50749fa0017', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 1, '4028b88174d504040174d5076528001a', 0, 'Impossibilitado de chegar no curso');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 0, '4028b88174d504040174d507804d001d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb876de0013', 1, '4028b88174d504040174d50722fc0014', 0, 'Obteve bom desempenho na avaliação');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb876de0013', 0, '4028b88174d504040174d50749fa0017', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb876de0013', 0, '4028b88174d504040174d5076528001a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb876de0013', 0, '4028b88174d504040174d507804d001d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb8c9180017', 0, '4028b88174d504040174d50722fc0014', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb8c9180017', 0, '4028b88174d504040174d50749fa0017', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb8c9180017', 0, '4028b88174d504040174d5076528001a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb8c9180017', 0, '4028b88174d504040174d507804d001d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 0, '4028b88174d504040174d507c3880021', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 0, '4028b88174d504040174d507ebd40024', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 0, '4028b88174d504040174d5080c920027', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 0, '4028b88174d504040174d5082fe2002a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 0, '4028b88174d504040174d5085378002d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 0, '4028b88174d504040174d507c3880021', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 0, '4028b88174d504040174d507ebd40024', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 0, '4028b88174d504040174d5080c920027', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 1, '4028b88174d504040174d5082fe2002a', 0, 'Teve bom desempenho na avaliação');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 0, '4028b88174d504040174d5085378002d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 0, '4028b88174d504040174d507c3880021', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 0, '4028b88174d504040174d507ebd40024', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 0, '4028b88174d504040174d5080c920027', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 0, '4028b88174d504040174d5082fe2002a', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 0, '4028b88174d504040174d5085378002d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 0, '4028b88174d504040174d5089e020031', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 0, '4028b88174d504040174d508b9e80034', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 0, '4028b88174d504040174d508daa10037', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 0, '4028b88174d504040174d508eeb8003a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 1, '4028b88174d504040174d509054f003d', 0, 'Vez prova em outro dia e obteve a média');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 0, '4028b88174d504040174d5089e020031', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 0, '4028b88174d504040174d508b9e80034', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 0, '4028b88174d504040174d508daa10037', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 0, '4028b88174d504040174d508eeb8003a', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 0, '4028b88174d504040174d509054f003d', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', 0, '4028b88174d504040174d5089e020031', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', 0, '4028b88174d504040174d508b9e80034', 1, '');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', 0, '4028b88174d504040174d508daa10037', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', 0, '4028b88174d504040174d508eeb8003a', 0, 'Não justificou');
INSERT INTO Educalife.Educalife.inscricao_turma_frequencia
(inscricao_turma_id, abonado, id_aula, compareceu, justificativa)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', 0, '4028b88174d504040174d509054f003d', 0, 'Fez prova em outro dia e não obteve média.');



/* Histórico do Aluno */
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da158f0174da166d500001', 70.00, 7.00, 'APROVADO', '4028b88174cbb2ab0174cbb35e060002');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da158f0174da16d4c60007', 60.00, 6.00, 'APROVADO', '4028b88174cbb2ab0174cbb74fcb0007');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da17b00174da1832f30002', 50.00, 5.00, 'REPROVADO', '4028b88174cbb2ab0174cbb7b363000b');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da193d0174da19cd3c0001', 88.00, 8.00, 'APROVADO', '4028b88174cbb2ab0174cbb801e5000f');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da1fdb0174da2058420002', 90.00, 9.00, 'APROVADO', '4028b88174cbb2ab0174cbb876de0013');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da21270174da2262a50002', 100.00, 10.00, 'APROVADO', '4028b88174cbb2ab0174cbb8c9180017');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2e9a610002', 100.00, 10.00, 'APROVADO', '4028b88174cbb2ab0174cbb91b9a001b');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2eba230005', 90.00, 9.00, 'APROVADO', '4028b88174cbb2ab0174cbb96c96001f');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2ed9d90008', 80.00, 8.00, 'APROVADO', '4028b88174cbb2ab0174cbb9cb1d0023');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2effe6000b', 70.00, 7.00, 'APROVADO', '4028b88174cbb2ab0174cbbbd1c80037');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2f2526000e', 60.00, 6.00, 'APROVADO', '4028b88174cbb2ab0174cbbc354e003b');
INSERT INTO Educalife.Educalife.historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2f4ab30011', 50.00, 5.00, 'REPROVADO', '4028b88174cbb2ab0174cbbc8c89003f');

-- Commita os dados da transação
commit;