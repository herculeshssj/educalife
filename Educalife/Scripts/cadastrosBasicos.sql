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



/* Usuário */
INSERT INTO usuario (id, ativo, login, senha)
VALUES('4028b881757e7d9101757e7e3d990001', true, 'admin', 'admin');


/* Permissão do Usuário */
INSERT INTO permissao_usuario (id, id_papel_usuario, id_usuario)
VALUES('2c9e808176352eea01763531bb390006', '4028b8817567abae017567ac1bb50000', '4028b881757e7d9101757e7e3d990001');


/* Tipo de logradouro */
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817418b7f6017418b8a4ee001e', 'AV', 'Avenida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('2c9640817425a439017425a955dd1996', 'R', 'Rua');


/* Cargo */
INSERT INTO cargo
(id, ativo, codigo_cbo, denominacao)
VALUES('2c9640817425a439017425a681b705f8', true, '234120', 'Professor de computação (no ensino superior)');


/* Deficiencia */
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7360c164c', 'Sem deficiência');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7361d164e', 'Cegueira');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7362c1650', 'Surdocegueira');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736341652', 'Baixa visão');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7363b1654', 'Deficiência física');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736421656', 'Surdez');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a736491658', 'Deficiência intelectual');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7364f165a', 'Deficiência auditiva');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a73656165c', 'Deficiência multipla');
INSERT INTO deficiencia
(id, descricao)
VALUES('2c9640817425a439017425a7365d165e', 'Não declarado');


/* Escolaridade */
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793661660', 'Analfabeto');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793761662', 'Alfabetizado sem cursos regulares');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793831664', 'Ensino fundamental');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793911666', 'Ensino médio');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a7939f1668', 'Ensino superior');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793ab166a', 'Aperfeiçoamento');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793ba166c', 'Especializacao');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793c7166e', 'Mestrado');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793d41670', 'Doutorado');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793e11672', 'Pós-doutorado');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a793f01674', 'Livre docência');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a794011676', '4a. Série do primeiro grau completa');
INSERT INTO escolaridade
(id, descricao)
VALUES('2c9640817425a439017425a794101678', 'Não Informada');


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


/* Etnia */
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821541690', 'Branca');
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821641692', 'Preta');
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821741694', 'Parda');
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821841696', 'Amarela');
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821951698', 'Indígena');
INSERT INTO etnia
(id, descricao)
VALUES('2c9640817425a439017425a821a5169a', 'Não declarado');


/* Genero */
INSERT INTO genero
(id, descricao)
VALUES('2c9640817425a439017425a85dd1169c', 'Masculino');
INSERT INTO genero
(id, descricao)
VALUES('2c9640817425a439017425a85de1169e', 'Feminino');


/* Pais */
INSERT INTO pais
(id, codigo, denominacao)
VALUES('2c9640817425a439017425a8aee71718', '24', 'BRASIL');


/* PessoaFisica */
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20003', '111.111.111-11', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'A', '10', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 1', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20004', '222.222.222-22', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'B', '20', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 2', 'Mãe', 'Pai', 'A_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('2c9640817425dfa9017425e604e20005', '333.333.333-33', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'C', '30', 'RJ', NULL, 'Rio de Janeiro', 'Coordenador 3', 'Mãe', 'Pai', 'B_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db72167c', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

/* Pessoa jurídica */
INSERT INTO pessoa_juridica
(id, cnpj, bairro, cep, cidade, complemento, logradouro, numero, uf, nome_fantasia, razao_social, id_tipo_logradouro)
VALUES('2c9640817421617901742162f7240001', '55.723.390/0001-10', 'Centro', '26000-000', 'Rio de Janeiro', '8º Andar Sala 815', 'Rio Branco', '185', 'RJ', 'Educalife', 'Educalife Serviços Educacionais Ltda.', '2c9640817418b7f6017418b8a4ee001e');

INSERT INTO pessoa_juridica_contatos
(pessoa_juridica_id, descricao, observacao, tipo_contato)
VALUES('2c9640817421617901742162f7240001', 'contato@educalife.com.br', 'Atendimento', 'EMAIL');
INSERT INTO pessoa_juridica_contatos
(pessoa_juridica_id, descricao, observacao, tipo_contato)
VALUES('2c9640817421617901742162f7240001', 'https://educalife.com.br', 'Site', 'SITE');


/* Empresa */
INSERT INTO empresa
(id, data_criacao, contrato_social, id_pessoa_juridica)
VALUES('2c964081742167b80174216845730001', '2011-08-11', '<p><strong>CONTRATO SOCIAL DA ..............................</strong>&nbsp;</p>

<p>(nome) ............., (nacionalidade) .........., (profiss&atilde;o) .........., (estado civil e regime de casamento) .........., portador do RG n&ordm; ................, inscrito no CPF sob o n&ordm; .......................,&nbsp;&nbsp;residente e domiciliado &agrave; Rua .................................., n&ordm; ....., Bairro ..............., Estado de .........., e (nome) ............., (nacionalidade) .........., (profiss&atilde;o) .........., (estado civil estado civil e regime de casamento) .........., portador do RG n&ordm; ................, inscrito no CPF sob o n&ordm; ......................., residente e domiciliado &agrave; Rua .................................., n&ordm; ....., Bairro ..............., Estado de .........., pelo presente instrumento, constituem entre si uma sociedade simples, mediante as cl&aacute;usulas e condi&ccedil;&otilde;es seguintes:&nbsp;</p>

<p>Cl&aacute;usula 1. A sociedade adotar&aacute; a denomina&ccedil;&atilde;o de ..........................., tendo sede na cidade de ............/(UF), Rua ......................, n&ordm; ......., Bairro ........, e ter&aacute; dura&ccedil;&atilde;o por prazo indeterminado, iniciando suas atividades em ...... de......... de........ (dia/m&ecirc;s/ano).&nbsp;</p>

<p>Cl&aacute;usula 2. Por delibera&ccedil;&atilde;o dos s&oacute;cios, a sociedade poder&aacute; abrir, manter, transferir e extinguir filiais, em qualquer ponto do territ&oacute;rio nacional, observadas as prescri&ccedil;&otilde;es legais vigentes.&nbsp;</p>

<p>Cl&aacute;usula 3. A sociedade tem por objeto ..................(presta&ccedil;&atilde;o de servi&ccedil;os na &aacute;rea m&eacute;dica, consultoria, etc.)&nbsp;</p>

<p>Cl&aacute;usula 4. O capital social &eacute; de R$ ............. (.......................), representado por ...... (..................) quotas no valor de R$ .......... (....................) cada uma, inteiramente integralizado, neste ato, em moeda corrente nacional, e assim distribu&iacute;das:</p>

<p>&nbsp;</p>

<p>S&oacute;cio (nome) .......................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;..... quotas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R$.......................</p>

<p>S&oacute;cio (nome) .......................&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;..... quotas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R$.......................</p>

<p>TOTAL ............................................ ..... quotas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;R$.......................</p>

<p>&nbsp;Par&aacute;grafo &uacute;nico. Os s&oacute;cios n&atilde;o respondem subsidiariamente, pelas obriga&ccedil;&otilde;es sociais.&nbsp;</p>

<p>Cl&aacute;usula 5. A administra&ccedil;&atilde;o da sociedade ser&aacute; exercida pelo (s) s&oacute;cio (s) ....... (nome ou nomes), sendo-lhe (s) vedado delegar seu (s) poder (es) de administra&ccedil;&atilde;o e ger&ecirc;ncia a pessoas estranhas aos quadros sociais.&nbsp;</p>

<p>Par&aacute;grafo 1. A sociedade ser&aacute; representada ativa e passivamente, judicial e extra-judicialmente, isoladamente por quaisquer um dos administradores, sendo-lhe vedado o uso da denomina&ccedil;&atilde;o social em avais, abonos, fian&ccedil;as e outras obriga&ccedil;&otilde;es de mero favor, estranhos aos interesses sociais. Nesta veda&ccedil;&atilde;o n&atilde;o se inclui a presta&ccedil;&atilde;o de garantias e obriga&ccedil;&otilde;es a empresas da qual a sociedade participe, direta ou indiretamente, podendo, ainda, alienar, caucionar ou onerar bens sociais, emitir t&iacute;tulos de cr&eacute;ditos, transigir, assinar cheques e renunciar a direitos quando do interesse da sociedade, contrair empr&eacute;stimos e financiamentos, avalizar, endossar, bem como assinar todo e qualquer documento, contrato ou papel que implique em responsabilidade da sociedade, seja p&uacute;blico ou particular.&nbsp;</p>

<p>Par&aacute;grafo 2. &Eacute; l&iacute;cito aos administradores constituir procuradores, em nome da sociedade, especificando nos instrumentos os atos e opera&ccedil;&otilde;es que poder&atilde;o praticar e a dura&ccedil;&atilde;o do mandato, exceto mandato judicial que poder&aacute; ser por prazo indeterminado.&nbsp;</p>

<p>Par&aacute;grafo 3. Os administradores,receber&atilde;o, mensalmente, pr&oacute;-labore a ser a partir do m&ecirc;s em que as atividades operacionais da sociedade comportarem a referida retirada, mediante aprova&ccedil;&atilde;o pela maioria das quotas representativas do capital social.&nbsp;</p>

<p>Par&aacute;grafo 4. A nomea&ccedil;&atilde;o ou destitui&ccedil;&atilde;o de novos administradores, bem como a fixa&ccedil;&atilde;o da remunera&ccedil;&atilde;o correspondente, ser&aacute;&nbsp;decidida em assembleia de s&oacute;cios, mediante aprova&ccedil;&atilde;o pela maioria das quotas representativas do capital social.&nbsp;</p>

<p>Par&aacute;grafo 5. Os administradores ora nomeados declaram, sob as penas da lei, e para atendimento do par&aacute;grafo 1<sup>o</sup>do artigo 1.011 da Lei 10.406/2002, que n&atilde;o est&atilde;o condenados por nenhum crime cuja pena vede a administra&ccedil;&atilde;o de sociedades.&nbsp;</p>

<p>Cl&aacute;usula 6. Todos os documentos, atos e contratos que envolvam responsabilidade para a sociedade, inclusive movimenta&ccedil;&atilde;o de fundos, emiss&atilde;o de cheques, aceite e avais em t&iacute;tulos cambi&aacute;rios, outorga de procura&ccedil;&otilde;es em nome de sociedade, ser&atilde;o assinados ....... (<em>isoladamente ou conjuntamente),</em>&nbsp;pelos administradores, e as delibera&ccedil;&otilde;es ser&atilde;o de comum acordo.&nbsp;</p>

<p>Cl&aacute;usula 7. O exerc&iacute;cio social ser&aacute; encerrado em 31 de dezembro de cada ano, mediante levantamento de balan&ccedil;o patrimonial, e os lucros apurados ou preju&iacute;zos eventualmente havidos, ser&atilde;o distribu&iacute;dos ou suportados pelos s&oacute;cios na propor&ccedil;&atilde;o de suas quotas de capital.&nbsp;</p>

<p>Par&aacute;grafo 1. Poder&atilde;o ser retidos parte ou todo o lucro, para manuten&ccedil;&atilde;o e refor&ccedil;o do capital de giro e de investimento, conforme delibera&ccedil;&atilde;o da maioria representativa do capital social.&nbsp;</p>

<p>Par&aacute;grafo 2. Os lucros apurados em balancetes intermedi&aacute;rios poder&atilde;o ser distribu&iacute;dos aos s&oacute;cios, sendo compensados com que houver sido apurado por ocasi&atilde;o do encerramento do exerc&iacute;cio.&nbsp;</p>

<p>Cl&aacute;usula 8. Os s&oacute;cios n&atilde;o poder&atilde;o alienar ou ceder parte ou a totalidade de suas quotas de capital a pessoas estranhas, sem antes oferec&ecirc;-las aos outros s&oacute;cios, que em igualdade de condi&ccedil;&otilde;es, ter&atilde;o o direito de prefer&ecirc;ncia na aquisi&ccedil;&atilde;o das mesmas, na propor&ccedil;&atilde;o resultante de sua participa&ccedil;&atilde;o no capital social.&nbsp;</p>

<p>Cl&aacute;usula 9. O s&oacute;cio que desejar retirar-se da sociedade dever&aacute; comunicar sua inten&ccedil;&atilde;o ao outro s&oacute;cio, por escrito, com anteced&ecirc;ncia m&iacute;nima de 60 (sessenta) dias. Nesse caso, os seus haveres ser&atilde;o apurados, em um balan&ccedil;o levantado na ocasi&atilde;o, e pagos em 12 (doze) parcelas mensais, iguais e sucessivas, vencendo a primeira 30 (trinta) dias ap&oacute;s o seu afastamento.&nbsp;</p>

<p>Cl&aacute;usula 10. O falecimento de qualquer dos s&oacute;cios n&atilde;o acarretar&aacute; a extin&ccedil;&atilde;o da sociedade. Nesta hip&oacute;tese, o (s) s&oacute;cio (s) remanescente (s) pagar&aacute; (&atilde;o) aos herdeiros do falecido a sua quota de capital e a parte dos lucros que dever&atilde;o ser apurados em balan&ccedil;o especial, na data do evento, nas mesmas condi&ccedil;&otilde;es da cl&aacute;usula anterior.&nbsp;</p>

<p>Cl&aacute;usula 11.&nbsp;As altera&ccedil;&otilde;es do presente contrato social, bem como as decis&otilde;es sociais, dependem da aprova&ccedil;&atilde;o da maioria do capital social, salvo aquelas que impliquem mudan&ccedil;a no contrato social, cujas decis&otilde;es dever&atilde;o ser do consentimento de todos os s&oacute;cios.&nbsp;</p>

<p>Par&aacute;grafo primeiro. As decis&otilde;es de s&oacute;cios ser&atilde;o tomadas em reuni&otilde;es e especificadas em termo pr&oacute;prio, assinado pelos presentes.&nbsp;</p>

<p>Par&aacute;grafo segundo. As reuni&otilde;es ser&atilde;o realizadas todo ..... (primeiro, segundo...) dia &uacute;til do m&ecirc;s, &aacute;s ...... (horas), na sede social, independentemente de convoca&ccedil;&atilde;o pr&eacute;via ou demais formalidades.&nbsp;</p>

<p>Par&aacute;grafo terceiro. Reuni&otilde;es extraordin&aacute;rias poder&atilde;o ser convocadas por qualquer dos administradores ou titulares de mais de 1/5 (um quinto) do capital social integralizado, mediante fundamento e comunica&ccedil;&atilde;o escrita, com prova de seu recebimento.&nbsp;</p>

<p>Par&aacute;grafo quarto. Dispensam-se as formalidades de convoca&ccedil;&atilde;o quando todos os s&oacute;cios comparecerem ou se declararem, por escrito, cientes do local, data, hora e ordem do dia.</p>

<p>Par&aacute;grafo quinto. A reuni&atilde;o ou a assembleia tornam-se dispens&aacute;veis quando todos os s&oacute;cios decidirem, por escrito, sobre a mat&eacute;ria que seria objeto delas.&nbsp;</p>

<p>Par&aacute;grafo sexto. As delibera&ccedil;&otilde;es tomadas de conformidade com a lei e o contrato vinculam todos os s&oacute;cios, ainda que ausentes ou dissidentes.&nbsp;</p>

<p>Cl&aacute;usula 12. &Eacute; admiss&iacute;vel a exclus&atilde;o de s&oacute;cio, desde que por justa causa, considerando-se como tal uma ou mais entre as seguintes hip&oacute;teses: falta grave no cumprimento de suas obriga&ccedil;&otilde;es, incapacidade superveniente, declara&ccedil;&atilde;o de fal&ecirc;ncia do s&oacute;cio ou que tenha tido suas quotas liquidadas por credor em processo de execu&ccedil;&atilde;o.&nbsp;</p>

<p>Par&aacute;grafo &uacute;nico. Aplicam-se &aacute; exclus&atilde;o o pagamento de haveres na forma e prazos estipulados na cl&aacute;usula 9.&nbsp;</p>

<p>Cl&aacute;usula 13. Em caso de dissolu&ccedil;&atilde;o da sociedade, ser&aacute; procedida a devida liquida&ccedil;&atilde;o e o patrim&ocirc;nio ser&aacute; dividido entre os mesmos, proporcionalmente &agrave;s cotas de capital.&nbsp;</p>

<p>Cl&aacute;usula 14. Os casos omissos neste contrato ser&atilde;o regidos pela Lei 6404/76 (Lei das S/A) com as altera&ccedil;&otilde;es posteriores, e demais disposi&ccedil;&otilde;es legais aplic&aacute;veis.&nbsp;</p>

<p>Cl&aacute;usula 15. Os s&oacute;cios declaram que n&atilde;o est&atilde;o enquadrados em qualquer penalidade ou veda&ccedil;&atilde;o legal que os impe&ccedil;am de exercer a atividade mercantil.&nbsp;</p>

<p>Cl&aacute;usula 16.&nbsp;&nbsp;Os s&oacute;cios elegem o foro e comarca de ..............., estado ......., para dirimir quaisquer quest&otilde;es oriundas do presente contrato.&nbsp;</p>

<p>E assim, por estarem justos e contratados, assinam o presente contrato social em ..... (............) vias de igual teor, na presen&ccedil;a das testemunhas abaixo assinadas.&nbsp;</p>

<p>Local e data: _____________________________&nbsp;</p>

<p style="margin-left:70.8pt">&nbsp;</p>

<p style="margin-left:70.8pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_____________________________</p>

<p style="margin-left:70.8pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Assinaturas dos s&oacute;cios</p>

<p style="margin-left:70.9pt">&nbsp;</p>

<p>Testemunhas:</p>

<p>&nbsp;</p>

<p>1&ordf;) Ass. _________________________</p>

<p>Nome:</p>

<p>RG:</p>

<p>&nbsp;</p>

<p>2&ordf;) Ass. _________________________</p>

<p>Nome:</p>

<p>RG:</p>

<p>&nbsp;</p>

<p>Advogado: _______________________</p>
', '2c9640817421617901742162f7240001');


/* Unidade */
INSERT INTO unidade
(id, bairro, cep, cidade, complemento, logradouro, numero, uf, horario_funcionamento, nome_unidade, id_empresa, id_tipo_logradouro)
VALUES('2c96408174216d0d0174216eccf50001', 'Centro', '26000-000', 'Rio de Janeiro', '8º Andar - Sala 815', 'Rio Branco', '185', 'RJ', 'Seg. à Sex. das 9h às 17h', 'Unidade - Centro', '2c964081742167b80174216845730001', '2c9640817418b7f6017418b8a4ee001e');
INSERT INTO unidade
(id, bairro, cep, cidade, complemento, logradouro, numero, uf, horario_funcionamento, nome_unidade, id_empresa, id_tipo_logradouro)
VALUES('2c96408174216d0d01742170090b0005', 'Barra da Tijuca', '26000-000', 'Rio de Janeiro', '5º Andar', 'Das Américas', '5000', 'RJ', 'Seg. à Sáb. das 9h às 17h', 'Unidade - Barra', '2c964081742167b80174216845730001', '2c9640817418b7f6017418b8a4ee001e');

INSERT INTO unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d0174216eccf50001', 'centro@educalife.com.br', 'Atendimento', 'EMAIL');
INSERT INTO unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d0174216eccf50001', '(21) 2384-4983', 'Secretaria', 'TELEFONE');
INSERT INTO unidade_contatos
(unidade_id, descricao, observacao, tipo_contato)
VALUES('2c96408174216d0d01742170090b0005', 'barra@educalife.com.br', 'Atendimento', 'EMAIL');


/* Departamento */
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a30174217730ff0000', 'Administrativo', '2c96408174216d0d0174216eccf50001');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421774b760002', 'Ensino', '2c96408174216d0d0174216eccf50001');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177630e0004', 'Diretoria', '2c96408174216d0d0174216eccf50001');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a30174217783980006', 'Recursos Humanos', '2c96408174216d0d0174216eccf50001');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421779bb60008', 'Finanças', '2c96408174216d0d0174216eccf50001');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177b563000a', 'Administrativo', '2c96408174216d0d01742170090b0005');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a301742177ca1e000c', 'Ensino', '2c96408174216d0d01742170090b0005');
INSERT INTO departamento
(id, nome_departamento, id_unidade)
VALUES('2c964081742176a3017421780934000e', 'Pesquisa e Desenvolvimento', '2c96408174216d0d01742170090b0005');



/* Coordenador de curso */
INSERT INTO colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0007', '2020-01-01', NULL, '12345', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20003');
INSERT INTO colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0008', '2020-01-01', NULL, '23456', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20004');
INSERT INTO colaborador
(id, data_admissao, data_desligamento, matricula, id_cargo, id_departamento, id_pessoa_fisica)
VALUES('2c9640817425dfa9017425e641ad0009', '2020-01-01', NULL, '34567', '2c9640817425a439017425a681b705f8', '2c964081742176a3017421774b760002', '2c9640817425dfa9017425e604e20005');

/* Cursos */
INSERT INTO curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426ec05017426ed300d0004', 40, 'Conceitos basico da versao mais recente da linguagem Java', 'Java basico', 'ATIVO', '2c9640817425dfa9017425e641ad0007');
INSERT INTO curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426fa81017426fe36a40004', 40, 'Conceitos avancados da versao atual do Java.', 'Java Avancado', 'ATIVO', '2c9640817425dfa9017425e641ad0008');
INSERT INTO curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426ec05017426eca1ab0001', 40, 'Lorem Ipsum', 'Java 5 Basico', 'INATIVO', '2c9640817425dfa9017425e641ad0007');
INSERT INTO curso
(id, carga_horaria, descricao_curso, nome_curso, status_curso, id_coordenador)
VALUES('ff8081817426fa81017426fdc06a0001', 40, 'Lorem Ipsum', 'Java 5 Avancado', 'INATIVO', '2c9640817425dfa9017425e641ad0008');


/* Localidades */
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920001', true, 'C01', 'Administrativo', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920002', true, 'C02', 'Ensino', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920003', true, 'C03', 'Diretoria', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920004', true, 'C04', 'Recursos Humanos', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920005', true, 'C05', 'Finanças', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920006', true, 'C06', 'Sala 01', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920007', true, 'C07', 'Sala 02', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920008', true, 'C08', 'Sala 03', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f6920009', true, 'C09', 'Auditório', '', '2c96408174216d0d0174216eccf50001');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c15f692000a', true, 'C10', 'Reunião', '', '2c96408174216d0d0174216eccf50001');



INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90004', true, 'B01', 'Administrativo', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90005', true, 'B02', 'Ensino', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90006', true, 'B03', 'Pesquisa e Desenvolvimento', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90007', true, 'B04', 'Sala 01', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90008', true, 'B05', 'Sala 02', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb90009', true, 'B06', 'Sala 03', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000a', true, 'B07', 'Sala 04', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000b', true, 'B08', 'Sala 05', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000c', true, 'B09', 'Reunião', '', '2c96408174216d0d01742170090b0005');
INSERT INTO localidade
(id, ativo, codigo, descricao, observacao, id_unidade)
VALUES('2c9c8081742c131401742c164cb9000d', true, 'B10', 'Auditório', '', '2c96408174216d0d01742170090b0005');


/* Turmas */

INSERT INTO turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c8081743156470174315d94ae0012', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Básico - Turma A', 'ATIVO', 'ff8081817426ec05017426ed300d0004', '2c9c8081742c131401742c15f6920006');
INSERT INTO turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c8081743156470174315f9e1a0017', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Básico - Turma B', 'ATIVO', 'ff8081817426ec05017426ed300d0004', '2c9c8081742c131401742c15f6920007');
INSERT INTO turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c808174315647017431618823001d', '2020-10-31', '2020-05-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Avançado - Turma A', 'ATIVO', 'ff8081817426fa81017426fe36a40004', '2c9c8081742c131401742c164cb90007');
INSERT INTO turma
(id, data_fim, data_fim_inscricao, data_inicio, data_inicio_inscricao, modalidade_turma, nome_turma, status_turma, id_curso, id_localidade)
VALUES('2c9c808174315647017431638cc40025', '2020-10-31', '2020-09-25', '2020-10-01', '2020-09-15', 'PRESENCIAL', 'Java Avançado - Turma B', 'ATIVO', 'ff8081817426fa81017426fe36a40004', '2c9c8081742c131401742c164cb90008');


INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20003');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315d94ae0012', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20003');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c8081743156470174315f9e1a0017', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'COORDENADOR', true, '2c9640817425dfa9017425e604e20004');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431618823001d', 'TUTOR', false, '2c9640817425dfa9017425e604e20005');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'COORDENADOR', false, '2c9640817425dfa9017425e604e20004');
INSERT INTO turma_equipe
(turma_id, funcao_equipe, ministra_aula, id_pessoa_fisica)
VALUES('2c9c808174315647017431638cc40025', 'INSTRUTOR', true, '2c9640817425dfa9017425e604e20005');



INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c8081743156470174315d94ae0012', 40, 'GERAL');
INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c8081743156470174315f9e1a0017', 40, 'GERAL');
INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431618823001d', 10, 'INTERNO');
INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431618823001d', 15, 'EXTERNO');
INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431638cc40025', 5, 'INTERNO');
INSERT INTO turma_ofertavagas
(turma_id, numero_vaga, publico_alvo)
VALUES('2c9c808174315647017431638cc40025', 10, 'EXTERNO');


/* Aulas */
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50468ab0001', '2020-10-07', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505be630007', '2020-10-14', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505dda0000a', '2020-10-21', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d505fb6b000d', '2020-10-28', '13:00', '09:00', '2c9c8081743156470174315d94ae0012');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50722fc0014', '2020-10-07', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d50749fa0017', '2020-10-14', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5076528001a', '2020-10-21', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507804d001d', '2020-10-28', '13:00', '09:00', '2c9c8081743156470174315f9e1a0017');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507c3880021', '2020-10-01', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d507ebd40024', '2020-10-08', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5080c920027', '2020-10-15', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5082fe2002a', '2020-10-22', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5085378002d', '2020-10-31', '17:00', '13:00', '2c9c808174315647017431618823001d');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d5089e020031', '2020-10-07', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508b9e80034', '2020-10-14', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508daa10037', '2020-10-21', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d508eeb8003a', '2020-10-28', '17:00', '13:00', '2c9c808174315647017431638cc40025');
INSERT INTO aula
(id, data_aula, horario_fim, horario_inicio, id_turma)
VALUES('4028b88174d504040174d509054f003d', '2020-10-31', '13:00', '09:00', '2c9c808174315647017431638cc40025');


/* Avaliações */
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df8303c20002', '2020-10-28', 'Avaliação final', 10.00, '- Lorem ipsum dolor sit amet, consectetur adipiscing elit.
- Nullam efficitur orci et varius condimentum.', '2c9c8081743156470174315d94ae0012');
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df83dfab0007', '2020-10-28', 'Avaliação final', 10.00, '- Praesent et arcu gravida, malesuada tortor maximus, placerat lectus.
- Sed quis nibh a sem fringilla varius.
- Praesent pulvinar dui hendrerit metus placerat, eu aliquam lorem tincidunt.', '2c9c8081743156470174315f9e1a0017');
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df84c55d000b', '2020-10-15', 'Avaliação - principais tópicos', 4.00, '- Duis ultrices felis eu tellus congue, elementum finibus lorem maximus.
- Sed ullamcorper magna eu semper rutrum.', '2c9c808174315647017431618823001d');
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df85c2a20010', '2020-10-31', 'Prova final (simulado certificação)', 6.00, '- Curabitur pellentesque tortor ullamcorper eros porta, eget finibus enim dictum.
- Aenean sagittis libero id pretium lobortis.
- Sed quis diam ac ante aliquam rhoncus.
- Sed sit amet elit blandit, consequat dui in, ultrices odio.
- Integer eu nisl nec nibh eleifend rutrum at vel neque.', '2c9c808174315647017431618823001d');
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df86a33b0014', '2020-10-21', 'Avaliação - recaptular tópicos vistos', 3.00, '- Suspendisse sit amet dui pharetra massa scelerisque tincidunt.
- Vestibulum quis ante consequat, sodales orci sed, rutrum odio.
- Morbi in erat at nulla faucibus congue vel ut erat.
- Nullam at elit eget augue faucibus auctor.', '2c9c808174315647017431638cc40025');
INSERT INTO avaliacao
(id, data_avaliacao, descricao, nota_avaliacao, topicos_avaliacao, id_turma)
VALUES('4028b88174df81300174df87125d0017', '2020-10-31', 'Prova final (simulado certificação)', 7.00, '- Pellentesque feugiat purus in molestie auctor.
- Suspendisse vestibulum risus at semper efficitur.
- In sed mauris eleifend, sodales lorem vel, auctor ante.
- Curabitur eget ante mattis, laoreet augue quis, placerat felis.', '2c9c808174315647017431638cc40025');





/*** Alunos ***/
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60003', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 001', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60004', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 002', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60005', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 003', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60006', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 004', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60007', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 005', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60008', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 006', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e60009', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 007', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000a', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 008', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000b', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 009', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000c', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 010', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000d', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 011', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');
INSERT INTO pessoa_fisica
(id, cpf, data_nascimento, bairro, cep, cidade, complemento, logradouro, numero, uf, foto, naturalidade, nome, nome_mae, nome_pai, tipo_sanguineo, id_deficiencia, id_tipo_logradouro, id_escolaridade, id_estado_civil, id_etnia, id_genero, id_nacionalidade)
VALUES('4028b88174cb9e230174cba1e5e6000e', '999.999.999-99', '1980-01-01', 'Centro', '26000-000', 'Rio de Janeiro', '', 'AAA', '111', 'RJ', NULL, 'Rio de Janeiro', 'Aluno 012', 'Mãe', 'Pai', 'O_POSITIVO', '2c9640817425a439017425a7360c164c', '2c9640817425a439017425a955dd1996', '2c9640817425a439017425a7939f1668', '2c9640817425a439017425a7db61167a', '2c9640817425a439017425a821a5169a', '2c9640817425a439017425a85dd1169c', '2c9640817425a439017425a8aee71718');

/*** Fim do Cadastro ***/


/* Inscrições nas turmas */
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb876de0013', '2020-10-05', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 555555, 'PENDENTE', '4028b88174cb9e230174cba1e5e60007', '2c9c8081743156470174315f9e1a0017');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '2020-10-06', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 666666, 'PENDENTE', '4028b88174cb9e230174cba1e5e60008', '2c9c8081743156470174315f9e1a0017');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2020-10-02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 111111, 'PENDENTE', '4028b88174cb9e230174cba1e5e60003', '2c9c8081743156470174315d94ae0012');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '2020-10-02', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 222222, 'PENDENTE', '4028b88174cb9e230174cba1e5e60004', '2c9c8081743156470174315d94ae0012');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb7b363000b', '2020-10-03', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 333333, 'PENDENTE', '4028b88174cb9e230174cba1e5e60005', '2c9c8081743156470174315d94ae0012');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb801e5000f', '2020-10-04', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 444444, 'PENDENTE', '4028b88174cb9e230174cba1e5e60006', '2c9c8081743156470174315f9e1a0017');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '2020-10-07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 777777, 'PENDENTE', '4028b88174cb9e230174cba1e5e60009', '2c9c808174315647017431618823001d');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '2020-10-08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 888888, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000a', '2c9c808174315647017431618823001d');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', '2020-10-09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 999999, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000b', '2c9c808174315647017431618823001d');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '2020-10-10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 101010, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000c', '2c9c808174315647017431638cc40025');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '2020-10-11', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 111110, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000d', '2c9c808174315647017431638cc40025');
INSERT INTO inscricao_turma
(id, data_inscricao, motivo_inscricao, numero_inscricao, status_inscricao, id_pessoa_fisica, id_turma)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '2020-10-12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque finibus ut velit efficitur sagittis. Proin venenatis sem fringilla magna euismod, condimentum tristique purus sagittis. Suspendisse potenti. Proin posuere sapien at pharetra interdum. Praesent blandit, dui sed accumsan lacinia, magna erat fringilla sem, vel pellentesque orci dui quis purus. Curabitur rutrum.', 121212, 'PENDENTE', '4028b88174cb9e230174cba1e5e6000e', '2c9c808174315647017431638cc40025');


/*** Contratos ***/

insert into contrato (
	id,
	data_fim_vigencia, 
	data_inicio_vigencia, 
	dia_faturamento, 
	numero_contrato, 
	observacao, 
	quantidade_parcelas, 
	situacao_contrato, 
	texto_contrato, 
	valor_contrato, 
	valor_parcela, 
	anexos, 
	id_contratante, 
	data_renovacao
) select 
	replace(gen_random_uuid()::varchar, '-', ''),
	'2021-10-31',
	'2020-10-01',
	1,
	floor(random()* (100000-10000 + 1) + 10000),
	'Contrato de prestação de serviços',
	12,
	'NOVO',
	'Lorem Ipsum',
	1200.00,
	100.00,
	null,
	pf.id,
	null
from 
	inscricao_turma it 
inner join
	pessoa_fisica pf on pf.id = it.id_pessoa_fisica
WHERE 
	pf.id not in (select c.id_pessoa_fisica from colaborador c);
	

update contrato set texto_contrato = '<p><strong>CONTRATO DE PRESTA&Ccedil;&Atilde;O DE SERVI&Ccedil;OS E HONOR&Aacute;RIOS DE PROFISSIONAL AUT&Ocirc;NOMO</strong></p>

<p><strong>Contratante:</strong>&nbsp;(Nome), (nacionalidade), (estado civil), (profiss&atilde;o), portador da c&eacute;dula de identidade R.G. n&ordm; xxxxxx e inscrito no CPF/MF n&ordm; xxxxxxx, residente e domiciliado na (Rua), (n&uacute;mero), (bairro), (CEP), (Cidade), (Estado);</p>

<p><strong>Contratado&nbsp;</strong>: Nome), (nacionalidade), (estado civil), (profiss&atilde;o), portador da c&eacute;dula de identidade R.G. n&ordm; xxxxxx e inscrito no CPF/MF n&ordm; xxxxxxx, residente e domiciliado na (Rua), (n&uacute;mero), (bairro), (CEP), (Cidade), (Estado);</p>

<p>Pelo presente instrumento particular de presta&ccedil;&atilde;o de servi&ccedil;os e honor&aacute;rios de profissional aut&ocirc;nomo de Administra&ccedil;&atilde;o de Empresas, t&ecirc;m entre si justos e acordados quanto segue:</p>

<p><strong>DO OBJETO DO CONTRATO</strong></p>

<p><strong>CL&Aacute;USULA 1&ordf;</strong>: O presente instrumento, tem como objeto, a presta&ccedil;&atilde;o de servi&ccedil;os de administra&ccedil;&atilde;o, sendo que, em sua vig&ecirc;ncia, o contratado deve manter seu registro regularizado no Conselho Regional de Administra&ccedil;&atilde;o, sob pena de ser considerado extinto o presente instrumento.</p>

<p>&nbsp;</p>

<p><strong>CL&Aacute;USULA 2&ordf;:</strong>&nbsp;O contratado executar&aacute; os servi&ccedil;os diretamente a contratante ou aos clientes por este indicados.</p>

<p><strong>DOS SERVI&Ccedil;OS</strong></p>

<p><strong>CL&Aacute;USULA 3&ordf; :</strong>&nbsp;O contratado prestar&aacute; os seguintes servi&ccedil;os (descrever detalhadamente os servi&ccedil;os prestados).</p>

<p><strong>DOS HONOR&Aacute;RIOS</strong></p>

<p><strong>CL&Aacute;USULA 4&ordf;</strong>: O contratado perceber&aacute; o valor integral dos tr&ecirc;s primeiros clientes, a t&iacute;tulo de honor&aacute;rios pelos servi&ccedil;os descritos na cl&aacute;usula anterior, pagos pela Contratante, no m&iacute;nimo o valor de R$ xxxxx (Valor), sendo que a partir do quarto cliente, receber&aacute; 20% do valor liquido estipulado do contrato.</p>

<p><strong>CL&Aacute;USULA 5&ordf;:</strong>&nbsp;Fica estabelecido que s&atilde;o obriga&ccedil;&otilde;es da Contratante:</p>

<p>a) Efetuar o pagamento, de acordo como estabelecido na cl&aacute;usula terceira do presente contrato.</p>

<p>b) Fornecer para o Contratado, c&oacute;pias dos contratos efetivamente realizados.</p>

<p>c) Fornecer ao contratado, materiais e informa&ccedil;&otilde;es, indispens&aacute;veis ao seu servi&ccedil;o, facilitando a prospe&ccedil;&atilde;o dos neg&oacute;cios.</p>

<p>d) Fica vedado ao contratante, negociar abatimentos, descontos ou dila&ccedil;&otilde;es de prazo para o pagamento o execu&ccedil;&atilde;o dos servi&ccedil;os, sem o pr&eacute;vio conhecimento e autoriza&ccedil;&atilde;o do contratado.</p>

<p><strong>CL&Aacute;USULA 6&ordf;:</strong>&nbsp;Fica estabelecido as seguintes obriga&ccedil;&otilde;es do Contratado:</p>

<p>a) Cumprir o estipulado nos termos do presente instrumento contratual.</p>

<p>b) Obedecer as instru&ccedil;&otilde;es da contratante, sobre os termos dos servi&ccedil;os &agrave; serem prestados aos clientes.</p>

<p>c) Prestar informa&ccedil;&otilde;es &agrave; contratante, sempre que esta lhe solicitar, informando sobre a execu&ccedil;&atilde;o de seus servi&ccedil;os e demais detalhes sobre a execu&ccedil;&atilde;o de suas atividades.</p>

<p>d)N&atilde;o revelar detalhes de suas atividades a terceiros, bem como, informa&ccedil;&otilde;es sobre seus clientes.</p>

<p>e) N&atilde;o intermediar abatimentos, descontos, ou dila&ccedil;&atilde;o sem expressa autoriza&ccedil;&atilde;o da contratante.</p>

<p><strong>CL&Aacute;USULA 7&ordf;:</strong>&nbsp;S&atilde;o motivos para que o Contratante rescinda o presente instrumento:</p>

<p>a) Des&iacute;dia do contratado no cumprimento das obriga&ccedil;&otilde;es assumidas para com a contratante e terceiros.</p>

<p>b) Praticar atos, que atinjam a imagem comercia da contratante perante terceiros.</p>

<p>c) Deixar de cumprir o contratado, qualquer das cl&aacute;usulas dispostas no presente instrumento.</p>

<p><strong>CL&Aacute;USULA 8&ordf;:</strong>&nbsp;S&atilde;o motivos para que o Contratado rescinda o presente instrumento:</p>

<p>a) Solicitar a Contratante, atividade que exceda o prestisto neste instrumento de contrato.</p>

<p>b)Deixar a contratante de observar quaiquer obriga&ccedil;&otilde;es que conste no presente contrato.</p>

<p>c) Deixar a Contratante de cumprir com o disposto na cl&aacute;usula terceira deste contrato.</p>

<p>d) Por motivos de for&ccedil;a maior.</p>

<p><strong>CL&Aacute;USULA 9&ordf;:</strong>&nbsp;O presente contrato, ter&aacute; vig&ecirc;ncia por prazo indeterminado, por&eacute;m, havendo interesse em sua rescis&atilde;o, a parte interessada notificar&aacute; a parte contraria, por escrito, com anteced&ecirc;ncia m&iacute;nima de trinta (30) dias.</p>

<p><strong>PAR&Aacute;GRAFO &Uacute;NICO:</strong>&nbsp;A rescis&atilde;o do presente instrumento de contrato, n&atilde;o extingue os direitos e obriga&ccedil;&otilde;es que as partes tenham entre si a para com terceiros.</p>

<p><strong>DO FORO</strong></p>

<p><strong>CL&Aacute;USULA 10&ordf;</strong>: As parte elegem o Foro desta Capital, para dirimir judicialmente as controv&eacute;rsias inerentes do presente contrato.</p>

<p>E, assim por estarem justos e contratados assinam o presente, em 2 (duas) vias de igual forma, teor, na presen&ccedil;a das testemunhas abaixo:</p>

<p>(Local, data, ano)</p>

<p>(Nome e assinatura do Contratante)</p>

<p>(Nome e assinatura do Contratado)</p>

<p>(Nome, RG, Testemunha)</p>

<p>(Nome, RG, Testemunha)</p>
';


/* Frequência */
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('0025D6AC6042496BBFC31F0B1B4D7741', false, true, '', '4028b88174d504040174d509054f003d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('0215E614467E42C4BA0A6DE536F57919', true, false, 'Problemas de saúde', '4028b88174d504040174d505fb6b000d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('080F5DBA327C43C083BEB94542D46005', false, true, '', '4028b88174d504040174d5080c920027');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('100CB79740B44F089C439DA9112E5481', false, false, 'Não justificou', '4028b88174d504040174d5089e020031');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('16766158C8394EB2877A7C9819DD2350', false, true, '', '4028b88174d504040174d50722fc0014');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('175880CDDA0B426D93EE30CAED52564B', false, true, '', '4028b88174d504040174d508eeb8003a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('19CDEFE2CB6F45DDA35780EA53549B69', false, true, '', '4028b88174d504040174d5076528001a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('1ACE735D4E83411A8DC20B910DD7AE93', false, true, '', '4028b88174d504040174d50749fa0017');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('1CD1B85557B44936BAC0878DC7A833A5', false, true, '', '4028b88174d504040174d508b9e80034');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('1DB1BC7D3D3E4012A0985CD66995477B', false, false, 'Não justificou', '4028b88174d504040174d508b9e80034');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('1E48B2A7B94E436A8EED877DC0A13F2E', false, true, '', '4028b88174d504040174d507804d001d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('267DE400A4C248C7B3291432E21C801C', false, false, 'Fez prova em outro dia e não obteve média.', '4028b88174d504040174d509054f003d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('2c92e08176617f2301766197c816002e', false, true, '', '4028b88174d504040174d505dda0000a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('2c92e08176617f2301766197c816002f', false, true, '', '4028b88174d504040174d505be630007');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('2c92e08176617f2301766197c8160030', false, false, 'Não justificou', '4028b88174d504040174d505fb6b000d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('2c92e08176617f2301766197c8160031', false, true, '', '4028b88174d504040174d50468ab0001');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('304E30B3CEC84A0785DD808D08F8A78E', false, false, 'Não justificou', '4028b88174d504040174d508eeb8003a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('372A152908C74926B928F78C268B0972', false, true, '', '4028b88174d504040174d507c3880021');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('3D13A1392CB340AA841CDC5E9F09637E', false, true, '', '4028b88174d504040174d505be630007');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('4883400D6A96491D9FBB986779C9DB19', false, false, 'Não justificou', '4028b88174d504040174d505fb6b000d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('4CECAF99D38B415694846A971C1AA672', false, true, '', '4028b88174d504040174d507ebd40024');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('4DC38EE37DF445B78D197D74BC9E3700', false, true, '', '4028b88174d504040174d508daa10037');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('5274B6A10FF048D4A93B7EF65496E4A7', false, false, 'Não justificou', '4028b88174d504040174d505be630007');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('57E71DF60B4E4C6798064DA8080FD698', false, false, 'Não justificou', '4028b88174d504040174d505dda0000a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('595113EFF460414C9B5456928F50A5D1', false, false, 'Não justificou', '4028b88174d504040174d508daa10037');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('598A86D3D9074AE8B29508B5CE179BA2', false, false, 'Não justificou', '4028b88174d504040174d5089e020031');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('70F7B5F7D2B04172A2AF582C12308E01', true, false, 'Impossibilitado de chegar no curso', '4028b88174d504040174d5076528001a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('7A8CF35300B9461ABC5AF3C9AB8B26B9', false, true, '', '4028b88174d504040174d507c3880021');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('83B05C1B13464FFEB9E24AF2E7545D76', true, false, 'Obteve bom desempenho na avaliação', '4028b88174d504040174d50722fc0014');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('8D70F82AA5E24B64A781EF20BB5EBBAE', false, true, '', '4028b88174d504040174d508b9e80034');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('936D26CE14114396905DFB5B5D807782', true, false, 'Vez prova em outro dia e obteve a média', '4028b88174d504040174d509054f003d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('967DBABF46F941F4A711E9BDFE98AE8E', false, true, '', '4028b88174d504040174d5089e020031');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('9DEA9C6D20034581BDF86DB49437115E', false, true, '', '4028b88174d504040174d507ebd40024');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('A25875A0D1FE4A26844A3B4E3B6B597A', false, true, '', '4028b88174d504040174d50749fa0017');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('AF72A288197949D3BBB92B431BEF4700', false, true, '', '4028b88174d504040174d508daa10037');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('AF95C1D044494A479D802B1645812679', false, true, '', '4028b88174d504040174d50749fa0017');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('B4BEE704E8DA4884BBA0C10063A65C40', false, true, '', '4028b88174d504040174d50468ab0001');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('B604843A5C77486094FEEECDA853EFF6', false, true, '', '4028b88174d504040174d5082fe2002a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('B89376C1218B4103BA1909E7FCDF8548', false, true, '', '4028b88174d504040174d5085378002d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('BF3D2FE83CCE4DBFBE46738DB0EF2AFA', false, true, '', '4028b88174d504040174d505dda0000a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('C091BECD9CC4446386DD60181234ACB3', false, true, '', '4028b88174d504040174d50468ab0001');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('C94CC212A2D744AF985039545F3C1221', false, true, '', '4028b88174d504040174d507804d001d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('CA2167F4C0F44BD187CEE4B024FE7127', false, true, '', '4028b88174d504040174d5076528001a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('CA8B01CE19D448C79A9085AF839E142A', false, true, '', '4028b88174d504040174d50722fc0014');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('D49C3BDE82614453AE2456F199EE27A6', false, true, '', '4028b88174d504040174d5080c920027');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('D685E56828F14F2BA43FC1B60E6EC2B5', false, true, '', '4028b88174d504040174d507ebd40024');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('E6029702DBA6495199C15F1522D4D14B', false, true, '', '4028b88174d504040174d5085378002d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('EAB65EC8C02349E89DD86314E3C73ADA', false, false, 'Não justificou', '4028b88174d504040174d5082fe2002a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('EB46858357EE43F2867041B112497E7A', false, true, '', '4028b88174d504040174d5080c920027');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('F255450E088D41B899F0FABE11693562', false, true, '', '4028b88174d504040174d5085378002d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('F7284A99387749BF9C8D19727D7955AD', false, true, '', '4028b88174d504040174d507804d001d');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('F8240BB1371B45B1A00DC7532F449B0D', false, true, '', '4028b88174d504040174d508eeb8003a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('F981D972E44A42908268A15B77477949', true, false, 'Teve bom desempenho na avaliação', '4028b88174d504040174d5082fe2002a');
INSERT INTO frequencia
(id, abonado, compareceu, justificativa, id_aula)
VALUES('FC1D8C1A17EB40DD8E9FEDA41CD7D154', false, true, '', '4028b88174d504040174d507c3880021');


INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2c92e08176617f2301766197c816002e');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2c92e08176617f2301766197c816002f');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2c92e08176617f2301766197c8160030');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb35e060002', '2c92e08176617f2301766197c8160031');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '0025D6AC6042496BBFC31F0B1B4D7741');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '0215E614467E42C4BA0A6DE536F57919');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '080F5DBA327C43C083BEB94542D46005');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '100CB79740B44F089C439DA9112E5481');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '16766158C8394EB2877A7C9819DD2350');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '175880CDDA0B426D93EE30CAED52564B');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '19CDEFE2CB6F45DDA35780EA53549B69');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '1ACE735D4E83411A8DC20B910DD7AE93');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '1CD1B85557B44936BAC0878DC7A833A5');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '1DB1BC7D3D3E4012A0985CD66995477B');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '1E48B2A7B94E436A8EED877DC0A13F2E');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '267DE400A4C248C7B3291432E21C801C');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '304E30B3CEC84A0785DD808D08F8A78E');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '372A152908C74926B928F78C268B0972');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '3D13A1392CB340AA841CDC5E9F09637E');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb7b363000b', '4883400D6A96491D9FBB986779C9DB19');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '4CECAF99D38B415694846A971C1AA672');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '4DC38EE37DF445B78D197D74BC9E3700');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb7b363000b', '5274B6A10FF048D4A93B7EF65496E4A7');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '57E71DF60B4E4C6798064DA8080FD698');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '595113EFF460414C9B5456928F50A5D1');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '598A86D3D9074AE8B29508B5CE179BA2');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb801e5000f', '70F7B5F7D2B04172A2AF582C12308E01');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', '7A8CF35300B9461ABC5AF3C9AB8B26B9');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb876de0013', '83B05C1B13464FFEB9E24AF2E7545D76');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '8D70F82AA5E24B64A781EF20BB5EBBAE');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '936D26CE14114396905DFB5B5D807782');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '967DBABF46F941F4A711E9BDFE98AE8E');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '9DEA9C6D20034581BDF86DB49437115E');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb876de0013', 'A25875A0D1FE4A26844A3B4E3B6B597A');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbc354e003b', 'AF72A288197949D3BBB92B431BEF4700');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 'AF95C1D044494A479D802B1645812679');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', 'B4BEE704E8DA4884BBA0C10063A65C40');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 'B604843A5C77486094FEEECDA853EFF6');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 'B89376C1218B4103BA1909E7FCDF8548');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 'BF3D2FE83CCE4DBFBE46738DB0EF2AFA');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb7b363000b', 'C091BECD9CC4446386DD60181234ACB3');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb876de0013', 'C94CC212A2D744AF985039545F3C1221');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb876de0013', 'CA2167F4C0F44BD187CEE4B024FE7127');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 'CA8B01CE19D448C79A9085AF839E142A');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 'D49C3BDE82614453AE2456F199EE27A6');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 'D685E56828F14F2BA43FC1B60E6EC2B5');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', 'E6029702DBA6495199C15F1522D4D14B');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 'EAB65EC8C02349E89DD86314E3C73ADA');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', 'EB46858357EE43F2867041B112497E7A');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 'F255450E088D41B899F0FABE11693562');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb801e5000f', 'F7284A99387749BF9C8D19727D7955AD');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', 'F8240BB1371B45B1A00DC7532F449B0D');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 'F981D972E44A42908268A15B77477949');
INSERT INTO inscricao_turma_frequencia
(inscricao_turma_id, frequencia_id)
VALUES('4028b88174cbb2ab0174cbb96c96001f', 'FC1D8C1A17EB40DD8E9FEDA41CD7D154');


/* Resultado de avaliação */
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb35e060002', '4028b88174df81300174df8303c20002', '', 7.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb74fcb0007', '4028b88174df81300174df8303c20002', 'Correção conjunta em sala', 5.00, 6.00, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb7b363000b', '4028b88174df81300174df8303c20002', 'Correção conjunta em sala', 4.00, 5.00, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb801e5000f', '4028b88174df81300174df83dfab0007', '', 8.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb876de0013', '4028b88174df81300174df83dfab0007', '', 9.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb8c9180017', '4028b88174df81300174df83dfab0007', '', 10.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '4028b88174df81300174df84c55d000b', '', 4.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb91b9a001b', '4028b88174df81300174df85c2a20010', '', 5.50, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '4028b88174df81300174df84c55d000b', '', 4.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb96c96001f', '4028b88174df81300174df85c2a20010', 'Prova corrigida em sala', 2.50, 3.00, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', '4028b88174df81300174df84c55d000b', '', 2.50, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbb9cb1d0023', '4028b88174df81300174df85c2a20010', '', 3.50, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '4028b88174df81300174df86a33b0014', '', 2.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbbd1c80037', '4028b88174df81300174df87125d0017', '', 5.00, NULL, false);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '4028b88174df81300174df86a33b0014', 'Revisado em sala', 1.00, 1.50, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbc354e003b', '4028b88174df81300174df87125d0017', 'Revisado em sala', 3.00, 3.50, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '4028b88174df81300174df86a33b0014', 'Correção em sala', 2.00, 3.00, true);
INSERT INTO inscricao_turma_resultadoAvaliacao
(inscricao_turma_id, id_avaliacao, justificativa, nota, nota_revisada, revisado)
VALUES('4028b88174cbb2ab0174cbbc8c89003f', '4028b88174df81300174df87125d0017', 'Correção em sala', 3.00, 4.00, true);



/* Histórico do Aluno */
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da158f0174da166d500001', 70.00, 7.00, 'APROVADO', '4028b88174cbb2ab0174cbb35e060002');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da158f0174da16d4c60007', 60.00, 6.00, 'APROVADO', '4028b88174cbb2ab0174cbb74fcb0007');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da17b00174da1832f30002', 50.00, 5.00, 'REPROVADO', '4028b88174cbb2ab0174cbb7b363000b');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da193d0174da19cd3c0001', 88.00, 8.00, 'APROVADO', '4028b88174cbb2ab0174cbb801e5000f');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da1fdb0174da2058420002', 90.00, 9.00, 'APROVADO', '4028b88174cbb2ab0174cbb876de0013');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da21270174da2262a50002', 100.00, 10.00, 'APROVADO', '4028b88174cbb2ab0174cbb8c9180017');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2e9a610002', 100.00, 9.50, 'APROVADO', '4028b88174cbb2ab0174cbb91b9a001b');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2eba230005', 90.00, 7.00, 'APROVADO', '4028b88174cbb2ab0174cbb96c96001f');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2ed9d90008', 80.00, 6.00, 'APROVADO', '4028b88174cbb2ab0174cbb9cb1d0023');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2effe6000b', 70.00, 7.00, 'APROVADO', '4028b88174cbb2ab0174cbbbd1c80037');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2f2526000e', 60.00, 5.00, 'REPROVADO', '4028b88174cbb2ab0174cbbc354e003b');
INSERT INTO historico_aluno
(id, frequencia_aula, nota_final, situacao_final_aluno, id_inscricao_turma)
VALUES('4028b88174da2e100174da2f4ab30011', 50.00, 7.00, 'REPROVADO', '4028b88174cbb2ab0174cbbc8c89003f');