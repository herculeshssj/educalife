Educalife
=========

Sistema de Gestão Acadêmica

Desenvolvido com a plataforma RAD OpenXava 6.4.

### Criação do container SQL Server 2017/2019

```
docker volume create educalife_db_data
docker run --name educalife-db --restart=unless-stopped -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -e 'MSSQL_AGENT_ENABLED=true' -p 1433:1433 -v educalife_db_data:/var/opt/mssql -d mcr.microsoft.com/mssql/server:2017-latest
```

Caso queira a versão 2019, substitua a imagem Docker por __mcr.microsoft.com/mssql/server:2019-latest__

No seu arquivo /etc/hosts, inclua uma nova entrada apontando para o IP da sua máquina:

```
123.456.789.012 educalife-db
```

Localização do arquivo hosts:
- Windows: C:\Windows\System32\drivers\etc
- Linux: /etc

Após acessar a base como usuário SA, rode o script SQL **baseInicial.sql** que se encontra na pasta Scripts.

Inicie a aplicação para realizar a criação das tabelas.

Para carregar os dados de exemplos, rode o script SQL **cadastrosBasicos.sql** que se encontra na pasta Scripts. Rode o script usando o usuário __educalife__.
Logo após, rode o script SQL **cadastrosBasicosComplementares.sql** para carregar os dados de exemplos das tabelas do menu __Cadastro__.


### Fluxo de cadastro

__Obs1:__ Os dados de exemplo encontram-se na pasta **samples** dentro do projeto.

Os cadastros no Educalife ocorrem na seguinte ordem:

1. Banco (importar dados via csv);
2. Cargo (importar dados via csv);
3. Deficiência (importar dados via csv);
4. Escolaridade (importar dados via csv);
5. Estado Civil (importar dados via csv);
6. Etnia (importar dados via csv);
7. Gênero (importar dados via csv);
8. País (importar dados via csv);
9. Tipo de Logradouro (importar dados via csv);
10. Usuários - Papéis (importar dados via csv);
11. Usuários;
12. Empresa;
13. Unidade;
14. Departamento;
15. Localidade;
16. Colaborador;
17. Curso;
18. Turma;
19. Avaliação;
20. Inscrição - Turma;
21. Diário de Classe;
22. Diário de Notas;
23. Histórico do Aluno;


https://idodevjobs.wordpress.com/2014/07/12/spring-data-rest-xml-configuration-example/