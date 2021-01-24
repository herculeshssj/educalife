/* Limpeza da base */

/* Exclui o vínculo com as permissões do usuário */
delete from usuario_papel_usuario where usuario_id in (select id from usuario where login like '%pessoa%');

/* Exclui os usuários */
delete from usuario where login like '%pessoa%';

/* Exclui o vínculo entre as pessoas físicas e seus contatos */
delete from pessoa_fisica_contato where pessoa_fisica_id in (
	select id from pessoa_fisica where nome like 'Pessoa%'
);

/* Exclui o vínculo entre as pessoas jurídicas e seus contatos */
delete from pessoa_juridica_contato where pessoa_juridica_id in (
	select id from pessoa_juridica where nome_fantasia like 'Empresa%'
);

/* Exclui os contatos das pessoas física e jurídicas */
delete from contato where id not in (
	select contatos_id from pessoa_fisica_contato pfc
	union
	select contatos_id from pessoa_juridica_contato pjc 
	union
	select contatos_id from unidade_contato uc 
);

/* Exclui as pessoas jurídicas */
delete from pessoa_juridica where id not in (select id_pessoa_juridica from empresa);


/* Exclui os colaboradores */
delete from colaborador c where id_pessoa_fisica in (
	select id from pessoa_fisica pf where pf.nome like 'Pessoa%'
);

/* Exclui as contas bancárias das pessoas físicas */
delete from conta_banco cb where id_pessoa_fisica in (
	select id from pessoa_fisica pf where pf.nome like 'Pessoa%'
);

/* Exclui os documentos de identidades das pessoas físicas */
delete from documento_identidade di where di.id_pessoa_fisica in (
	select id from pessoa_fisica pf where pf.nome like 'Pessoa%'
);

/* Exclui os contratos vinculados às pessoas físicas */
delete from contrato where id_contratante in (
	select id from pessoa_fisica pf where pf.nome like 'Pessoa%'
);

/* Exclui as pessoas físicas */
delete from pessoa_fisica pf where pf.nome like 'Pessoa%';


/* Rascunhos */

select * from usuario u;
select * from usuario u where id_pessoa_fisica is null;

select * from usuario u where login like '%pessoa%';

select * from usuario_papel_usuario upu ;

select * from contato;

select c.id from contato c
inner join pessoa_juridica_contato pjc on pjc.contatos_id = c.id 
inner join pessoa_juridica pj on pj.id = pjc.pessoa_juridica_id 
where pj.nome_fantasia like 'Empresa%'
union
select c.id from contato c
inner join pessoa_fisica_contato pfc on pfc.contatos_id = c.id 
inner join pessoa_fisica pf on pf.id = pfc.pessoa_fisica_id 
where pf.nome like 'Pessoa%';


select * from pessoa_juridica pj where id not in (select id_pessoa_juridica from empresa);



select * from unidade_contato uc ;

delete from contato where id in (
	select c.id from contato c
		inner join pessoa_juridica_contato pjc on pjc.contatos_id = c.id 
		inner join pessoa_juridica pj on pj.id = pjc.pessoa_juridica_id 
	where pj.nome_fantasia like 'Empresa%'
	union
	select c.id from contato c
		inner join pessoa_fisica_contato pfc on pfc.contatos_id = c.id 
		inner join pessoa_fisica pf on pf.id = pfc.pessoa_fisica_id 
	where pf.nome like 'Pessoa%'
);


select * from contrato c
inner join pessoa_fisica pf on pf.id = c.id_contratante 
where pf.nome like 'Pessoa%';




