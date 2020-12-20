select * from tipo_documento td ;

select * from tipo_processo tp ;

select * from processo p ;

select * from empresa e ;

select count(*) from processo p 
'inner join departamento d on d.id = p.id_departamento 
inner join unidade u on u.id = d.id_unidade 
inner join empresa e on e.id = u.id_empresa' 
where datepart(year, data_abertura) = datepart(year, getdate())
and e.id = '2c9e80817638473201763856e7ff0006'; 


alter table documento_processo add data_documento date null;
update documento_processo set data_documento = data_criacao where data_documento is null;

alter table documento_processo alter column data_documento date not null;


alter table audit.documento_processo_AUD add data_documento date null;
select * from audit.documento_processo_AUD dpa ;