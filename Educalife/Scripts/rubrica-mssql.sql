INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a41fa40000', 1, '001', 'Abono PIS / PASEP', 'Abono do Programa de Integração Social PIS e do Programa de Assistência ao
Servidor Público PASEP.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a463fc0002', 1, '002', 'Abono Pecuniário de Férias', 'Abono Pecuniário de Férias', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a532ca0004', 1, '003', 'Abonos Eventuais ou NÃO', 'Abonos Eventuais ou NÃO - as importâncias recebidas a título de ganhos eventuais e
os abonos expressamente desvinculados do salário, por força da lei. O “ou NÃO” por
força da queda da MP 808/2017.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a57d8c0006', 1, '004', 'Adicionais em geral', 'Adicionais em geral.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a67b6a0008', 1, '005', 'Adic. insalub, peric. e trabalho noturno', 'Adicionais de insalubridade, periculosidade e do trabalho noturno.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a6ee4c000a', 1, '006', 'Adicional por tempo de serviço', 'Adicional por tempo de serviço (quinquênios, triênios, etc.)', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a73f5c000c', 1, '007', 'Adicional por transferência de local de trabalho', 'Adicional por transferência de local de trabalho.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a7e994000e', 1, '008', 'Ajuda de custo', 'Ajuda de custo, em parcela única, recebida exclusivamente em decorrência de
mudança de local de trabalho do empregado, na forma do art. 470 da CLT.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a853ff0010', 1, '009', 'Ajuda de custo - aeronauta', 'Ajudas de custo e o adicional mensal recebidos pelo aeronauta nos termos da Lei nº
5.929, de 30 de outubro de 1973.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a9130b0012', 1, '010', 'Ajudas de custo em geral', 'Ajudas de custo em geral – com a queda da MP 808/2017, não há mais limite de
50% da remuneração mensal (art. 457 da CLT, alterado). Recomendamos CUIDADO
pois a legislação previdenciária NÃO MUDOU e, por este motivo a “(?)” na coluna
INSS!', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560a974830014', 1, '011', 'Assistência', 'Assistência - as parcelas destinadas à assistência ao trabalhador da agroindústria
canavieira, de que trata o art. 36 da Lei nº 4.870, de 1º de dezembro de 1965.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560aa6c840016', 1, '012', 'Auxílio-Alimentação - PAT', 'Auxílio-Alimentação, dado de acordo com o PAT (Lei 6.321/76 - Programa de Alimentação do Trabalhador) e cadastro no site www.mte.gov.br. Ou dado IN NATURA (o próprio alimento), MESMO SEM CADASTRO NO PAT (ADI RFB 03/2015 DOU 16/04/2015).
Órgãos públicos podem se inscrever no PAT para evitar a tributação (desde que o Auxílio seja dado em ticket ou carga em cartão e não em dinheiro).', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560b7f83f001a', 1, '013', 'Auxílio-Alimentação', 'Auxílio-Alimentação dado em dinheiro/espécie/pecúnia (ou carga em cartão sem inscrição no PAT), segundo a legislação previdenciária (exceto para servidores temporários federais).
IRRF: isento para servidores públicos federais (IN RFB 1.500/14, 5º, II) .', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560b8a39e001e', 1, '014', 'Auxílio Doença', 'Auxílio Doença - a importância paga ao empregado a título de complementação ao
valor do auxílio-doença, desde que este direito seja extensivo à totalidade dos
empregados da empresa.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560b942f70020', 1, '015', 'Auxílio-Transporte', 'Auxílio-Transporte (valor dado em dinheiro, desvinculado do valor das passagens e em desacordo com a Lei do Vale-Transporte) ou Auxílio-Combustível.
(*) IRRF: Isento para servidores da União (IN RFB 1.500/14, 5º, IV). ver tópico ValeTransporte!', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560b9f3320022', 1, '016', 'Aviso prévio', 'Aviso prévio, trabalhado.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560babbeb0024', 1, '017', 'Aviso prévio indenizado', 'Aviso prévio indenizado.
Obs: Segundo a IN RFB 925/09 – alterada pela IN RFB 1.730/17, o Aviso Prévio Indenizado não deve ser informado na GFIP e não incide contribuição previdenciária a partir de 06/2016. O “avo” do 13º salário relativo à projeção do Aviso Prévio Indenizado incide contribuição (Vide Gratificação Natalina).', 1, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560bbebfb0026', 1, '018', 'Babá', 'Babá - o reembolso-babá, limitado ao menor salário-de-contribuição mensal e
condicionado à comprovação do registro na Carteira de Trabalho e Previdência
Social da empregada, do pagamento da remuneração e do recolhimento da
contribuição previdenciária, pago em conformidade com a legislação trabalhista,
observado o limite máximo de 6 (seis) anos de idade da criança;', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560bca4b40028', 1, '019', 'Bolsa de Estágio', 'Bolsa de Estágio - Importância recebida a título de bolsa de complementação educacional de estagiário, quando paga nos termos da Lei nº 6.494, de 7 de dezembro de 1977 ou 11.788 de 25/09/08.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560bddb19002a', 1, '020', 'Outras bolsas de estudo', 'Outras bolsas de Estudos: ISENTAS também de IMPOSTO DE RENDA, como a do médico residente, mestrado, etc.
Obs.: Bolsa de veterinário-residente é tributável, a RFB não aceita analogia – Solução de Consulta 42, de 12/09/2014).', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560be7a4b002d', 1, '021', 'Bolsa - Programa Mais Médicos', 'Bolsa - Programa Mais Médicos (contribuintes individuais) Lei 12.871/2013.', 0, 1, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560bf3b79002f', 1, '022', 'Bolsa Pronatec', 'Bolsa Pronatec: Não há desconto previdenciário se for recebida por servidor público
federal dos Institutos Federais. Se for recebida por outra pessoa, é tributável SIM
para fins previdenciários e IRRF.', 0, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560bf81d10031', 1, '023', 'Comissões', 'Comissões', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560a2c5017560c0e6c90033', 1, '024', 'Côngruas, prebendas e afins', 'Côngruas, prebendas e afins: Valores pagos a ministros de confissão religiosa (padres, pastores, etc) e que independem de natureza e da quantidade do trabalho executado.
(*) = não há desconto na entidade, se é valor fixo.
Se houver valor variável, é tributável para todos os fins como contribuinte individual.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d368017560d623a20000', 1, '025', 'Convênios Médicos para empregados', 'Convênios Médicos para empregados (parte paga pelo empregador) - O valor relativo à assistência prestada por serviço médico ou odontológico, próprio ou não, inclusive o reembolso de despesas com medicamentos, óculos, aparelhos ortopédicos, próteses, órteses, despesas médico-hospitalares e outras similares, mesmo quando concedido em diferentes modalidades de planos e coberturas, não integram o salário do empregado para qualquer efeito nem o salário de contribuição, para efeitos do previsto na alínea q do § 9o do art. 28 da Lei no 8.212, de 24 de julho de 1991. ', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560d87c440002', 1, '026', 'Convênios Médicos para Dirigentes', 'Convênios Médicos para Dirigentes (parte paga pelo empregador) - SIM no IRRF,
por não inclusão na lista de ISENTOS na IN RFB 1.500/14 (art. 5º, IX) e sem citação
literal no parágrafo 5º do artigo 458 da CLT, que só cita “empregado”. (*) A IN SIT
144/2018 (FGTS) é omissa quanto ao dirigente e isenta o empregado.', 0, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560d90e350004', 1, '027', 'Convênios Médicos para DEPENDENTES', 'Convênios Médicos para DEPENDENTES de empregados e dirigentes (parte paga pelo empregador) – por falta de previsão legal LITERAL de DISPENSA de TRIBUTAÇÃO na legislação vigente.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560d983680006', 1, '028', 'Creche', 'Creche - o reembolso-creche pago em conformidade com a legislação trabalhista,
observado o limite máximo de 6 (seis) anos de idade da criança (para fins de RGPS e
FGTS), quando devidamente comprovadas as despesas realizadas;
(*) IRRF: limite de 5 (cinco) anos (IN RFB 1.500/14, ART 62, inciso XIV)', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560d9ee3d0008', 1, '029', 'Despesas com Veículos', 'Despesas com Veículos - o ressarcimento de despesas pelo uso de veículo do
empregado.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560da631f000a', 1, '030', 'Diárias para viagem', 'Diárias para viagem, de qualquer valor (CLT, art. 457, alterado pela Lei 13.467/17, com vigência a partir de 11/11/2017) .', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560db8188000c', 1, '031', 'Diárias para viagem - sem prestação de contas', 'Diárias para viagem, se não houver prestação de contas do montante gasto (IN SIT 144/2018, DOU 21/05/2018) .', 1, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560dc51db000e', 1, '032', 'Diárias para viagem - até 10/11/2017', 'Diárias para viagem – até 10/11/2017 – pelo seu valor global, quando excederem a
50% (cinquenta por cento) do salário (art. 457 CLT) do empregado (exceto para
comissionados federais)
(*) = com a alteração do artigo 457 da CLT pela Lei 13.467/17 (vigência 11/11/2017),
as Diárias para Viagem deixam de constituir base de incidência de encargos
trabalhistas e previdenciários.', 1, 1, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560dcbbda0010', 1, '033', 'Direitos Autorais', 'Direitos Autorais - os valores recebidos em decorrência da cessão de direitos autorais.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560dd219c0012', 1, '034', 'Dispensa', 'Dispensa - a importância prevista do inciso I do art. 10 do Ato das Disposições Constitucionais Transitórias, pela dispensa imotivada; ', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560dda2590014', 1, '035', 'Etapas (marítimos)', 'Etapas (marítimos).', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560d71c017560df3aed0016', 1, '036', 'Férias', 'Férias gozadas e seu respectivo 1/3 Constitucional (art. 137 CLT) – Ver item “Férias - Valor Correspondente à dobra da remuneração”', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c9017561011ef1001d', 1, '037', 'Férias - Abono Pecuniário', 'Férias - Abono Pecuniário - correspondente à conversão de 1/3 (um terço) das férias
em pecúnia (art. 143 da CLT) e seu respectivo 1/3 (um terço) de adicional
constitucional.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c9017561018dca001f', 1, '038', 'Férias indenizadas', 'Férias indenizadas - as importâncias recebidas a título de férias e respectivo 1/3
constitucional, recebidas em rescisão contratual.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c90175610222180021', 1, '039', 'Férias - dobra - rescisão contratual', 'Férias - valor correspondente à dobra da remuneração de férias, prevista no art. 137, caput, da CLT + 1/3 CF/88, quando indenizadas em rescisão contratual.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c9017561029e400023', 1, '040', 'Férias - dobra - vigência do contrato', 'Férias - valor correspondente à dobra da remuneração de férias, prevista no art. 137, caput, da CLT + 1/3 CF/88, quando pagas na vigência do contrato. ', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c901756102ebcc0025', 1, '041', 'Gorjetas', 'Gorjetas.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c901756103b18c0027', 1, '042', 'Gratificação de natal - 2ª parcela 13º salário', 'Gratificação de natal (2ª PARCELA - 13º salário), inclusive quando indenizadas em rescisão e projeção do aviso prévio indenizado.
Tributação em separado da remuneração habitual.
Solução de Consulta COSIT 99014/2016 (DOU 27/03/2017)', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c90175610407f00029', 1, '043', 'Gratificação de natal - 1ª parcela 13º salário', 'Gratificação de Natal – 1ª parcela do 13º salário (adiantamento).', 1, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c901756104ede6002e', 1, '044', 'Gratificação - função ou cargo de confiança', 'Gratificações legais e de função ou cargo de confiança.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c90175610545ab0030', 1, '045', 'Horas extras', 'Horas extras.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c901756105ff9a0032', 1, '046', 'Honorários - contribuintes individuais', 'Honorários pagos por serviços prestados por contribuintes individuais (autônomos, conselheiros, etc.), também chamado de “JETON”. ', 0, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c90175610669530034', 1, '047', 'Honorários de Sucumbência', 'Honorários de Sucumbência (Para o advogado, deve fazer parte do salário de
contribuição).', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b8817560f4c901756107c78c0036', 1, '048', 'Indenização - Art. 14 Lei nº 5.889 08/06/1973', 'Indenização de que trata o art. 14 da Lei nº 5.889, de 8 de junho de 1973; ', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175611de8bd0002', 1, '049', 'Indenização - Art. 479 - CLT', 'Indenização de que trata o art. 479 da CLT.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175611ede430004', 1, '050', 'Indenização - Art. 9 Let nº 7.238 29/10/1984', 'Indenização de que trata o art. 9º da Lei nº 7.238, de 29 de outubro de 1984, relativa à dispensa no período de 30 (trinta) dias que antecede a data-base do empregado.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175611f6b740006', 1, '051', 'Indenização por quebra de Estabilidade', 'Indenização por quebra de Estabilidade.
IRRF: Solução de Consulta COSIT 48/2015
RGPS: TST – RECURSO DE REVISTA: RR 21758420135120055', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175611fdea60008', 1, '052', 'Indenização - incentivo a demissão', 'Indenização recebida a título de incentivo a demissão.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175612041fa000a', 1, '053', 'JETON', 'JETON – Gratificação a Conselheiros diversos. ', 0, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb01756120fef1000c', 1, '054', 'Licença-prêmio indenizada', 'Licença-prêmio indenizada ou não gozada por necessidade de serviço.
(IRRF: IN RFB 1.500/14, art 62, VI, RGPS: IN RFB 971/09, art 58, V, j) ', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175612163b1000e', 1, '055', 'Licença-prêmio', 'Licença-prêmio.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb01756121d2c10010', 1, '056', 'Multa', 'Multa - valor da multa prevista no § 8º do art. 477 da CLT; (IRRF: sim, IN RFB
1.500/14, art 12, XII)', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb01756122c0c30012', 1, '057', 'Parcela "in natura" - PAT', 'Parcela “in natura” (o próprio alimento) recebida ou não de acordo com o PAT –
Programa de Alimentação do Trabalhador.
Se for dado em DINHEIRO (Auxílio alimentação), integra a remuneração para todos
os efeitos legais e tributa para INSS, IRRF e FGTS, exceto para servidores
temporários federais.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175612378c00014', 1, '058', 'Participação nos lucros ou resultados', 'Participações do empregado nos lucros ou resultados da empresa, quando pagas ou
creditadas de acordo com lei específica; (Lei 10.101/2000) (ver limites anuais de
isenção para IRRF)
', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175612512b50016', 1, '059', 'Plano educacional', 'Plano Educacional - o valor relativo a plano educacional, ou bolsa de estudo, que
vise à educação básica de empregados e seus dependentes e, desde que vinculada
às atividades desenvolvidas pela empresa, à educação profissional e tecnológica de
empregados, nos termos da Lei no 9.394, de 20 de dezembro de 1996, e: 1. não seja
utilizado em substituição de parcela salarial; e 2. o valor mensal do plano
educacional ou bolsa de estudo, considerado individualmente, não ultrapasse 5%
(cinco por cento) da remuneração do segurado a que se destina ou o valor
correspondente a uma vez e meia o valor do limite mínimo mensal do salário-de contribuição, o que for maior;
Incluindo matrícula, mensalidade, anuidade, livros e material didático (IN SIT
144/2018, art 10, inciso XXXV).', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb01756125cade0018', 1, '060', 'Prêmios', 'Prêmios - liberalidades concedidas pelo empregador em forma de bens, serviços ou
valor em dinheiro a empregado ou a grupo de empregados, em razão de
desempenho superior ao ordinariamente esperado no exercício de suas atividades.
(Art. 457 da CLT, alterado pela lei 13.467/17, com vigência a partir de 11/11/2017).
Com a queda da MP 808/2017, caiu a restrição de pagamento em apenas duas vezes
por ano.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb0175612695e2001a', 1, '061', 'Previdência Complementar', 'Previdência Complementar - o valor das contribuições efetivamente pago pela
pessoa jurídica relativo a programa de previdência complementar, aberto ou
fechado, desde que disponível à totalidade de seus empregados e dirigentes,
observados, no que couber, os arts. 9º e 468 da CLT.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b881756114eb017561275108001c', 1, '062', 'Quarentena remunerada', 'Quarentena remunerada ou “Remuneração Compensatória” – Valor equivalente a
remuneração se em exercício estivesse devida ao trabalhador desligado, em período
de quarentena – Lei 12.813/13 (servidores federais) e mera liberalidade de
empregadores.
IRRF: STJ: RECURSO ESPECIAL Nº 1.224.252 - SC (2010/0222462-5)
RGPS: CARF Acórdão 2403-001.851.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d017561406c420003', 1, '063', 'Quebra de caixa do bancário e do comerciário', 'Quebra de caixa do bancário e do comerciário.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d01756146d72c0005', 1, '064', 'Repouso semanal', 'Repouso semanal e feriados civis e religiosos.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614787150007', 1, '065', 'Retiradas de diretores não empregados', 'Retiradas de diretores não empregados, quando haja deliberação da empresa,
garantindo-lhes os direitos decorrentes do contrato de trabalho (art. 16 da Lei nº
8.036/90).', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d01756147f2f00009', 1, '066', 'Salário', 'Salário em dinheiro, inclusive Salário-maternidade.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d017561485261000b', 1, '067', 'Salário in natura', 'Salário in natura (em bens ou serviços).', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d01756148aec7000d', 1, '068', 'Salário-família', 'Salário-família e os demais benefícios pagos pela Previdência Social, nos termos e
limites legais, salvo o salário-maternidade.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614949da000f', 1, '069', 'Salário-família - acima do teto legal', 'Salário-família, no que exceder do valor legal obrigatório.', 1, 1, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d01756149c6750011', 1, '070', 'Seguro', 'Seguro - o valor das contribuições efetivamente pago pela pessoa jurídica relativo a
prêmio de seguro de vida em grupo, desde que previsto em acordo ou convenção
coletiva de trabalho e disponível à totalidade de seus empregados e dirigentes,
observados, no que couber, os arts. 9º e 468 da CLT.', 0, 0, 1, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614abc870013', 1, '071', 'Transporte', 'Transporte – Alimentação e Habitação - Os valores correspondentes a transporte, alimentação e habitação fornecidos pela empresa ao empregado contratado para trabalhar em localidade distante da de sua residência, em canteiro de obras ou local que, por força da atividade, exija deslocamento e estada, observadas as normas de proteção estabelecidas pelo Ministério do Trabalho e Emprego.
', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614b42160015', 1, '072', 'Vale-transporte', 'Vale-transporte, nos termos e limites legais; (se for “auxílio-transporte” – valor fixo
não compatível com o transporte – integra a remuneração para todos os efeitos
legais). Lei 7.418/85 e Dec. 95.247/87.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614ba8ba0017', 1, '073', 'Vestuário e Equipamentos', 'Vestuário e Equipamentos - O valor correspondente a vestuários, equipamentos e
outros acessórios fornecidos ao empregado e utilizados no local de trabalho para
prestação dos respectivos serviços.', 0, 0, 0, 'RENDIMENTO');
INSERT INTO dbo.rubrica
(id, ativo, codigo, descricao, discriminacao, fgts, inss, irrf, tipo_rubrica)
VALUES('4028b88175613b8d0175614c27320019', 1, '074', 'Pró-labore', 'Pró-labore (remuneração do sócio que trabalha na empresa).
(*) O FGTS sobre pró-labore é opcional.', 0, 1, 1, 'RENDIMENTO');
