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
INSERT INTO usuario_papel_usuario
(usuario_id, permissao_id)
VALUES('4028b881757e7d9101757e7e3d990001', '4028b8817567abae017567ac1bb50000');


/* Permissões dos papéis dos usuários */




/* Tipo de logradouro */
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111991914', 'A', 'Área');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791119d1916', 'AC', 'Acesso');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111a31918', 'ACA', 'Acampamento');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111a6191a', 'ACL', 'Acesso Local');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111a7191c', 'AD', 'Adro');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111a9191e', 'AE', 'Área Especial');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ab1920', 'AER', 'Aeroporto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ae1922', 'AL', 'Alameda');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111b11924', 'AMD', 'Avenida Marginal Direita');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111b31926', 'AME', 'Avenida Marginal Esquerda');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111b51928', 'AN', 'Anel Viário');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111b7192a', 'ANT', 'Antiga Estrada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111b8192c', 'ART', 'Artéria');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ba192e', 'AT', 'Alto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111bc1930', 'ATL', 'Atalho');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111be1932', 'A V', 'Área Verde');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c01934', 'AV', 'Avenida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c21936', 'AVC', 'Avenida Contorno');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c41938', 'AVM', 'Avenida Marginal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c6193a', 'AVV', 'Avenida Velha');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c8193c', 'BAL', 'Balneário');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111c9193e', 'BC', 'Beco');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111cb1940', 'BCO', 'Buraco');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111cd1942', 'BEL', 'Belvedere');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111d11944', 'BL', 'Bloco');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111d31946', 'BLO', 'Balão');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111d51948', 'BLS', 'Blocos');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111d7194a', 'BLV', 'Bulevar');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111d9194c', 'BSQ', 'Bosque');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111db194e', 'BVD', 'Boulevard');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111dd1950', 'BX', 'Baixa');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111df1952', 'C', 'Cais');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e11954', 'CAL', 'Calçada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e31956', 'CAM', 'Caminho');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e51958', 'CAN', 'Canal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e6195a', 'CH', 'Chácara');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e7195c', 'CHA', 'Chapadão');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111e9195e', 'CIC', 'Ciclovia');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ea1960', 'CIR', 'Circular');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ec1962', 'CJ', 'Conjunto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111ee1964', 'CJM', 'Conjunto Mutirão');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111f01966', 'CMP', 'Complexo Viário');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111f31968', 'COL', 'Colônia');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111f5196a', 'COM', 'Comunidade');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111f8196c', 'CON', 'Condomínio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111fa196e', 'COR', 'Corredor');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111fc1970', 'CPO', 'Campo');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679111fe1972', 'CRG', 'Córrego');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112001974', 'CTN', 'Contorno');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112031976', 'DSC', 'Descida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112061978', 'DSV', 'Desvio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b6017567911208197a', 'DT', 'Distrito');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791120a197c', 'EB', 'Entre Bloco');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791120d197e', 'EIM', 'Estrada Intermunicipal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791120f1980', 'ENS', 'Enseada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112101982', 'ENT', 'Entrada Particular');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112131984', 'EQ', 'Entre Quadra');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112151986', 'ESC', 'Escada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112171988', 'ESD', 'Escadaria');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791121a198a', 'ESE', 'Estrada Estadual');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791121c198c', 'ESI', 'Estrada Vicinal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791121e198e', 'ESL', 'Estrada de Ligação');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112201990', 'ESM', 'Estrada Municipal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112231992', 'ESP', 'Esplanada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112261994', 'ESS', 'Estrada de Servidão');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112281996', 'EST', 'Estrada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791122a1998', 'ESV', 'Estrada Velha');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791122d199a', 'ETA', 'Estrada Antiga');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791122f199c', 'ETC', 'Estação');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b6017567911231199e', 'ETD', 'Estádio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123319a0', 'ETN', 'Estância');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123519a2', 'ETP', 'Estrada Particular');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123719a4', 'ETT', 'Estacionamento');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123819a6', 'EVA', 'Evangélica');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123a19a8', 'EVD', 'Elevada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123c19aa', 'EX', 'Eixo Industrial');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791123f19ac', 'FAV', 'Favela');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124119ae', 'FAZ', 'Fazenda');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124419b0', 'FER', 'Ferrovia');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124719b2', 'FNT', 'Fonte');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124919b4', 'FRA', 'Feira');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124b19b6', 'FTE', 'Forte');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124d19b8', 'GAL', 'Galeria');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791124f19ba', 'GJA', 'Granja');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125219bc', 'HAB', 'Núcleo Habitacional');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125519be', 'IA', 'Ilha');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125719c0', 'IND', 'Indeterminado');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125919c2', 'IOA', 'Ilhota');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125b19c4', 'JD', 'Jardim');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791125d19c6', 'JDE', 'Jardinete');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126019c8', 'LD', 'Ladeira');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126219ca', 'LGA', 'Lagoa');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126519cc', 'LGO', 'Lago');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126819ce', 'LOT', 'Loteamento');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126b19d0', 'LRG', 'Largo');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791126d19d2', 'LT', 'Lote');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127019d4', 'MER', 'Mercado');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127219d6', 'MNA', 'Marina');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127419d8', 'MOD', 'Modulo');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127719da', 'MRG', 'Projeção');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127919dc', 'MRO', 'Morro');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127b19de', 'MTE', 'Monte');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127d19e0', 'NUC', 'Núcleo');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791127f19e2', 'NUR', 'Núcleo Rural');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128019e4', 'OUT', 'Outeiro');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128219e6', 'PAR', 'Paralela');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128419e8', 'PAS', 'Passeio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128719ea', 'PAT', 'Pátio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128919ec', 'PC', 'Praça');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128a19ee', 'PCE', 'Praça de Esportes');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128b19f0', 'PDA', 'Parada');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128d19f2', 'PDO', 'Paradouro');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791128f19f4', 'PNT', 'Ponta');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129019f6', 'PR', 'Praia');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129219f8', 'PRL', 'Prolongamento');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129519fa', 'PRM', 'Parque Municipal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129719fc', 'PRQ', 'Parque');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129a19fe', 'PRR', 'Parque Residencial');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129c1a00', 'PSA', 'Passarela');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791129e1a02', 'PSG', 'Passagem');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112a01a04', 'PSP', 'Passagem de Pedestre');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112a21a06', 'PSS', 'Passagem Subterrânea');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112a91a08', 'PTE', 'Ponte');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112ac1a0a', 'PTO', 'Porto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112af1a0c', 'Q', 'Quadra');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112b21a0e', 'QTA', 'Quinta');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112b31a10', 'QTS', 'Quintas');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112b61a12', 'R', 'Rua');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112b91a14', 'R I', 'Rua Integração');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112bc1a16', 'R L', 'Rua de Ligação');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112bf1a18', 'R P', 'Rua Particular');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112c21a1a', 'R V', 'Rua Velha');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112d21a1c', 'RAM', 'Ramal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112d41a1e', 'RCR', 'Recreio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112d71a20', 'REC', 'Recanto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112db1a22', 'RER', 'Retiro');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112dd1a24', 'RES', 'Residencial');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112e01a26', 'RET', 'Reta');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112e31a28', 'RLA', 'Ruela');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112e61a2a', 'RMP', 'Rampa');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112e91a2c', 'ROA', 'Rodo Anel');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112ec1a2e', 'ROD', 'Rodovia');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112ef1a30', 'ROT', 'Rotula');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112f11a32', 'RPE', 'Rua de Pedestre');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112f31a34', 'RPR', 'Margem');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112f51a36', 'RTN', 'Retorno');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112f71a38', 'RTT', 'Rotatória');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112fa1a3a', 'SEG', 'Segunda Avenida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112fd1a3c', 'SIT', 'Sitio');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679112ff1a3e', 'SRV', 'Servidão');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113011a40', 'ST', 'Setor');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113031a42', 'SUB', 'Subida');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113041a44', 'TCH', 'Trincheira');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113071a46', 'TER', 'Terminal');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791130a1a48', 'TR', 'Trecho');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791130d1a4a', 'TRV', 'Trevo');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113101a4c', 'TUN', 'Túnel');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113121a4e', 'TV', 'Travessa');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113151a50', 'TVP', 'Travessa Particular');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113171a52', 'TVV', 'Travessa Velha');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113191a54', 'UNI', 'Unidade');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791131b1a56', 'V', 'Via');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791131e1a58', 'V C', 'Via Coletora');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113201a5a', 'V L', 'Via Local');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113231a5c', 'VAC', 'Via de Acesso');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113251a5e', 'VAL', 'Vala');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113271a60', 'VCO', 'Via Costeira');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113291a62', 'VD', 'Viaduto');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791132b1a64', 'V-E', 'Via Expressa');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791132d1a66', 'VER', 'Vereda');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791132f1a68', 'VEV', 'Via Elevado');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113321a6a', 'VL', 'Vila');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113341a6c', 'VLA', 'Viela');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113371a6e', 'VLE', 'Vale');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113391a70', 'VLT', 'Via Litorânea');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791133c1a72', 'VPE', 'Via de Pedestre');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b601756791133f1a74', 'VRT', 'Variante');
INSERT INTO tipo_logradouro
(id, codigo, descricao)
VALUES('4028b881756783b60175679113411a76', 'ZIG', 'Zigue-Zague');


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



/* País */
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5168171c', '21', 'BIRMANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d516c171e', '70', 'GUINE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d516f1720', '78', 'IEMEM DO SUL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51711722', '85', 'IRLANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51731724', '89', 'IUGOSLAVIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51761726', '162', 'UNIAO SOVIETICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51791728', '167', 'VIETINA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d517b172a', '176', 'CEUTA E MELILLA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d517e172c', '183', 'ILHA JOHNSTOM');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5180172e', '187', 'ILHA WAKE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51821730', '188', 'ILHAS DO CANAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51851732', '192', 'ILHAS COOR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51881734', '193', 'ILHAS FABOE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d518a1736', '195', 'ILHAS MARIANAS DO NORTE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d518c1738', '201', 'IRIA OCIDENTAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d518e173a', '218', 'T. TUT. DAS I. PACIFICO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5190173c', '224', 'ALGERIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5193173e', '246', 'TAITI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51951740', '255', 'BARBUDA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51971742', '257', 'QUIRIBATI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d519a1744', '261', 'MICRONESIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d519c1746', '8', 'ANTIGUA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d519e1748', '13', 'AUSTRIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51a0174a', '17', 'BAREIN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51a3174c', '229', 'BELARUS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51a5174e', '175', 'BERMUDAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51a81750', '23', 'BOTSUANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ab1752', '32', 'CAMBOJA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ad1754', '34', 'CATAR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51b01756', '39', 'CINGAPURA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51b21758', '41', 'CONGO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51b4175a', '48', 'DJIBUTI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51b6175c', '50', 'EGITO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51b9175e', '55', 'ESTADOS UNIDOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51bc1760', '60', 'FORMOSA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51be1762', '66', 'GRANADA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51c01764', '74', 'HOLANDA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51c21766', '189', 'ILHAS CAYMAN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51c41768', '196', 'ILHAS MIDWAY');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51c7176a', '94', 'KUWEIT');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ca176c', '102', 'MADAGASCAR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51cc176e', '104', 'MALAVI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ce1770', '235', 'MOLDOVA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51d11772', '118', 'NIGER');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51d31774', '135', 'SAMOA OCIDENTAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51d41776', '219', 'TIMOR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51d71778', '157', 'TRINIDAD E TOBAGO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51d9177a', '168', 'ZAIRE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51dc177c', '170', 'ZIMBABUE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51de177e', '6', 'ANDORRA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51e01780', '7', 'ANGOLA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51e21782', '171', 'ANGUILLA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51e51784', '173', 'ANTILHAS HOLANDESAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51e71786', '11', 'ARGENTINA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51e91788', '174', 'ARUBA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ec178a', '14', 'BAHAMAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ee178c', '15', 'BANGLADESH');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51f0178e', '16', 'BARBADOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51f21790', '19', 'BELIZE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51f51792', '20', 'BENIN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51f71794', '24', 'BRASIL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51fa1796', '25', 'BRUNEI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51fd1798', '28', 'BURUNDI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d51ff179a', '30', 'CABO VERDE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5202179c', '35', 'CHADE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5204179e', '36', 'CHILE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d520517a0', '37', 'CHINA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d520717a2', '38', 'CHIPRE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d520a17a4', '43', 'COREIA DO SUL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d520d17a6', '44', 'COSTA DO MARFIM');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d520f17a8', '45', 'COSTA RICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521017aa', '46', 'CUBA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521317ac', '47', 'DINAMARCA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521517ae', '49', 'DOMINICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521617b0', '51', 'EL SALVADOR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521817b2', '53', 'EQUADOR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521a17b4', '54', 'ESPANHA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521d17b6', '57', 'FIJI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d521f17b8', '58', 'FILIPINAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522117ba', '64', 'GANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522317bc', '177', 'GIBRALTAR');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522517be', '68', 'GUATEMALA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522717c0', '69', 'GUIANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522917c2', '181', 'GUIANA FRANCESA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522b17c4', '73', 'HAITI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522d17c6', '75', 'HONDURAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d522f17c8', '182', 'HONG KONG');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523117ca', '76', 'HUNGRIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523417cc', '84', 'IRAQUE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523617ce', '222', 'IRLANDA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523817d0', '87', 'ISRAEL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523a17d2', '90', 'JAMAICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d523c17d4', '93', 'KIRIBATI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524017d6', '95', 'LAOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524217d8', '96', 'LESOTO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524417da', '100', 'LIECHTENSTEIN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524617dc', '101', 'LUXEMBURGO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524817de', '202', 'MACAU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524b17e0', '105', 'MALDIVAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d524d17e2', '106', 'MALI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525017e4', '107', 'MALTA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525217e6', '108', 'MARROCOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525417e8', '203', 'MARTINICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525617ea', '204', 'MAYOTTE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525717ec', '205', 'MONTSERRAT');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525917ee', '115', 'NAURU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525b17f0', '116', 'NEPAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d525e17f2', '207', 'NIUE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526117f4', '120', 'NORUEGA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526317f6', '251', 'PALAU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526517f8', '126', 'PARAGUAI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526717fa', '127', 'PERU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526a17fc', '210', 'PORTO RICO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526c17fe', '129', 'PORTUGAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d526f1800', '134', 'RUANDA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52721802', '212', 'SAARA OCIDENTAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52751804', '214', 'SAMOA AMERICANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52771806', '136', 'SAN MARINO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d527a1808', '215', 'SANTA HELENA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d527c180a', '141', 'SENEGAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d527e180c', '142', 'SERRA LEOA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5281180e', '143', 'SEYCHELLES');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52841810', '146', 'SRI LANKA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52861812', '151', 'SURINAME');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52891814', '155', 'TOGO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d528b1816', '156', 'TONGA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d528d1818', '220', 'TOQUELAU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d528f181a', '159', 'TURQUIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5292181c', '160', 'TUVALU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5294181e', '161', 'UGANDA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52951820', '163', 'URUGUAI');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52981822', '164', 'VANUATU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d529a1824', '165', 'VATICANO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d529c1826', '166', 'VENEZUELA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52a31828', '211', 'REUNIAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52a6182a', '4', 'ALEMANHA OCIDENTAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52a7182c', '5', 'ALEMANHA ORIENTAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52a9182e', '172', 'ANTARTICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52ac1830', '9', 'ARABIA SAUDITA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52af1832', '10', 'ARGELIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52b11834', '239', 'ARMENIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52b41836', '12', 'AUSTRALIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52b61838', '243', 'AZERBAIJAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52b8183a', '18', 'BELGICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52ba183c', '22', 'BOLIVIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52bb183e', '260', 'BOSNIA-HERZEGOVINA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52bd1840', '26', 'BULGARIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52bf1842', '27', 'BURKINA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52c11844', '29', 'BUTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52c41846', '31', 'CAMAROES');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52c61848', '33', 'CANADA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52c8184a', '264', 'CAZAQUISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52c9184c', '40', 'COLOMBIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52cc184e', '42', 'COREIA DO NORTE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52ce1850', '242', 'CROACIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52d01852', '52', 'EMIRADOS ARABES UNIDOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52d21854', '225', 'ERITEIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52d41856', '223', 'ESCOCIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52d71858', '230', 'ESLOVAQUIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52d8185a', '244', 'ESLOVENIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52da185c', '231', 'ESTONIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52dd185e', '56', 'ETIOPIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52de1860', '59', 'FINLANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52e01862', '61', 'FRANCA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52e21864', '62', 'GABAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52e51866', '63', 'GAMBIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52e71868', '249', 'GEORGIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52e9186a', '65', 'GRA-BRETANHA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52eb186c', '67', 'GRECIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52ed186e', '178', 'GROELANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52ef1870', '179', 'GUADALUPE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52f11872', '180', 'GUAN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52f31874', '71', 'GUINE-BISSAU');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52f71876', '72', 'GUINE EQUATORIAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52f91878', '77', 'IEMEM');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52fa187a', '185', 'ILHA DE MAN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52fc187c', '186', 'ILHA DE PITCAIRN');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d52fe187e', '184', 'ILHA NORFOLK');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53001880', '190', 'ILHAS CHRISTMAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53021882', '191', 'ILHAS COCOS (KEELING)');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53051884', '79', 'ILHAS COMORES');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53071886', '194', 'ILHAS MALVINAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53091888', '232', 'ILHAS MARSHAL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d530b188a', '80', 'ILHAS SALOMAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d530d188c', '197', 'ILHAS TURKS E CAICOS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d530f188e', '198', 'ILHAS VIRGENS AMERICANAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53111890', '199', 'ILHAS VIRGENS BRITANICAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53121892', '200', 'ILHAS WALLIS E FUTUNA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53141894', '81', 'INDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53161896', '82', 'INDONESIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53191898', '83', 'IRA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d531b189a', '86', 'ISLANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d531d189c', '88', 'ITALIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d531f189e', '91', 'JAPAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532118a0', '92', 'JORDANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532318a2', '245', 'LETONIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532418a4', '97', 'LIBANO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532718a6', '98', 'LIBERIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532a18a8', '99', 'LIBIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532c18aa', '233', 'LITUANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d532e18ac', '234', 'MACEDONIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533018ae', '103', 'MALASIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533218b0', '109', 'MAURICIO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533418b2', '110', 'MAURITANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533618b4', '111', 'MEXICO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533a18b6', '113', 'MONACO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533c18b8', '114', 'MONGOLIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d533f18ba', '206', 'NAMIBIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534118bc', '112', 'MOCAMBIQUE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534418be', '117', 'NICARAGUA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534618c0', '119', 'NIGERIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534818c2', '208', 'NOVA CALEDONIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534b18c4', '121', 'NOVA ZELANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534c18c6', '122', 'OMA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d534e18c8', '123', 'PANAMA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535018ca', '124', 'PAPUA NOVA GUINE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535218cc', '125', 'PAQUISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535418ce', '209', 'POLINESIA FRANCESA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535618d0', '128', 'POLONIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535818d2', '130', 'QUENIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535b18d4', '226', 'QUIRGUISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535d18d6', '254', 'REINO UNIDO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d535f18d8', '2', 'REPUBL. DA AFRICA DO SUL');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536118da', '1', 'REPUBL. DEMOCR. DO AFEGANISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536318dc', '131', 'REPUBLICA CENTRO AFRICANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536518de', '132', 'REPUBLICA DOMINICANA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536818e0', '267', 'REPUBLICA THECA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536b18e2', '3', 'REPUBL. POPULAR DA ALBANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536d18e4', '133', 'ROMENIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d536f18e6', '256', 'RUSSIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537118e8', '213', 'SAINT-PIERRE E MIQUELOH');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537418ea', '137', 'SANTA LUCIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537518ec', '138', 'SAO CRISTOVAO E NEVES');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537718ee', '139', 'SAO TOME E PRINCIPE');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537b18f0', '140', 'SAO VICENTE E GRANABINAS');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537d18f2', '144', 'SIRIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d537f18f4', '145', 'SOMALIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538118f6', '147', 'SUAZILANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538318f8', '148', 'SUDAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538518fa', '149', 'SUECIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538718fc', '150', 'SUICA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538918fe', '216', 'SVALBARD');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538d1900', '152', 'TAILANDIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d538f1902', '258', 'TADJIQUISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53921904', '153', 'TANZANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53941906', '217', 'T. BRIT. DO OCEANO INDICO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53961908', '154', 'TCHECOSLOVAQUIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d5398190a', '158', 'TUNISIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d539b190c', '250', 'TURCOMENISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d539d190e', '221', 'UCRANIA');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d539f1910', '268', 'UZBEQUISTAO');
INSERT INTO pais
(id, codigo, denominacao)
VALUES('4028b881756783b60175678d53a21912', '169', 'ZAMBIA');