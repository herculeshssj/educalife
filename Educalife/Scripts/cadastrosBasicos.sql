/* Tipo de logradouro */
INSERT INTO educalife.tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817418b7f6017418b8a4ee001e', 'AV', 'Avenida');

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
