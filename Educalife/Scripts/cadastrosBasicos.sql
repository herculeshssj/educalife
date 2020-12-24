/* Papel do Usuário */
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b8817567abae017567ac1bb50000', 'Administrador do sistema. Concede acesso a todas as funcionalidades do sistema.', 'ADMIN');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b8817567abae017567ac1bf90004', 'Permite ao coordenador acessar os dados referentes os cursos e turmas que gerencia.', 'COORDENADOR_CURSO');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b8817567abae017567ac1bfd0006', 'Acesso às tarefas pertinentes a secretaria para gestão dos alunos na instituição.', 'SECRETARIA');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b881757e9ad501757ed939280014', 'Permite gerenciar detalhes gerais da estrutura da organização.', 'ADMINISTRACAO');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b881757e9ad501757ed976670016', 'Gestão da área financeira (contabilidade, tesouraria) da empresa.', 'FINANCEIRO');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('4028b881757e9ad501757ed9cd4e0018', 'Acesso a gestão de pessoal da empresa e finanças relacionadas a pessoal.', 'PESSOAL');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903e52940013', 'Permite o acesso às informações dos cursos e turma a qual está matriculado/inscrito.', 'ALUNO');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903e91d30015', 'Permite o acesso às turmas que ministra aula.', 'PROFESSOR');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903eca8f0017', 'Acesso aos menus e opções relacionados ao cadastro básico do sistema.', 'CADASTRADOR');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903f17450019', 'Acesso somente consulta às opções do sistema.', 'CONSULTA');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903f4dab001b', 'Acesso aos menus e opções relacionadas a geração de relatórios do sistema.', 'RELATORIO');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903f82e8001d', 'Permite o acesso às informações pessoais e profissionais do colaborador.', 'COLABORADOR');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903fb28e0020', 'Acesso a opções do sistema específicias para membros da diretoria.', 'DIRETORIA');
INSERT INTO papel_usuario
(id, descricao, nome)
VALUES('402820817690146b0176903fe3d80022', 'Acesso a opções do sistema específicas para líderes de equipes e departamentos.', 'LIDER');



/* Usuário */
INSERT INTO usuario (id, ativo, login, senha, id_pessoa_fisica)
VALUES('4028b881757e7d9101757e7e3d990001', true, 'admin', 'admin', null);


/* Vínculo do papel com o usuário */
INSERT INTO public.usuario_papel_usuario
(usuario_id, permissao_id)
VALUES('4028b881757e7d9101757e7e3d990001', '4028b8817567abae017567ac1bb50000');


/* Permissões dos papéis dos usuários */




/* Tipo de logradouro */
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817418b7f6017418b8a4ee001e', 'AV', 'Avenida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817425a439017425a955dd1996', 'R', 'Rua');


/* EstadoCivil */
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db61167a', 'SOLTEIRO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db72167c', 'CASADO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db80167e', 'SEPARADO JUDICIALMENTE');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db8d1680', 'VIUVO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7db9a1682', 'DESQUITADO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dba91684', 'OUTROS');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbb61686', 'SEPARADO CONSENSUALMENTE');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbc41688', 'DIVORCIADO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbd1168a', 'DESCONHECIDO');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbe0168c', 'UNIÃO ESTÁVEL');
INSERT INTO estado_civil
(id, descricao)
VALUES('2c9640817425a439017425a7dbe8168e', 'HOMOAFETIVA');