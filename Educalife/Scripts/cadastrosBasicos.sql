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
VALUES('2c9640817425a439017425a681b705f8', true, '234120', 'Professor de computação (no ensino superior)');


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


/* Equipe */
INSERT INTO educalife.equipe
(id, metas_equipe, ministra_aula, nome_equipe, id_departamento)
VALUES('2c9640817425dfa9017425e366d20000', 'Lorem Ipsum', true, 'Instrutores - Curso Java', '2c964081742176a3017421774b760002');


/* Coordenador de curso */
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_equipe, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0007', '2020-01-01', NULL, '12345', '2c9640817425a439017425a681b705f8', '2c9640817425dfa9017425e366d20000', '2c9640817425dfa9017425e604e20003');
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_equipe, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0008', '2020-01-01', NULL, '23456', '2c9640817425a439017425a681b705f8', '2c9640817425dfa9017425e366d20000', '2c9640817425dfa9017425e604e20004');
INSERT INTO educalife.colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_equipe, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0009', '2020-01-01', NULL, '34567', '2c9640817425a439017425a681b705f8', '2c9640817425dfa9017425e366d20000', '2c9640817425dfa9017425e604e20005');

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
VALUES('2c9c8081742c131401742c15f6920001', true, 'C01', 'Administrativo', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920002', true, 'C02', 'Ensino', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920003', true, 'C03', 'Diretoria', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920004', true, 'C04', 'Recursos Humanos', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920005', true, 'C05', 'Finanças', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920006', true, 'C06', 'Sala 01', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920007', true, 'C07', 'Sala 02', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920008', true, 'C08', 'Sala 03', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920009', true, 'C09', 'Auditório', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f692000a', true, 'C10', 'Reunião', '', '2c96408174216d0d0174216eccf50001');



INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90004', true, 'B01', 'Administrativo', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90005', true, 'B02', 'Ensino', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90006', true, 'B03', 'Pesquisa e Desenvolvimento', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90007', true, 'B04', 'Sala 01', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90008', true, 'B05', 'Sala 02', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90009', true, 'B06', 'Sala 03', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000a', true, 'B07', 'Sala 04', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000b', true, 'B08', 'Sala 05', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000c', true, 'B09', 'Reunião', '', '2c96408174216d0d01742170090b0005');
INSERT INTO educalife.localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000d', true, 'B10', 'Auditório', '', '2c96408174216d0d01742170090b0005');



