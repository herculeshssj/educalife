Educalife
=========

Sistema de Gestão Acadêmica

Desenvolvido com a plataforma RAD OpenXava 6.4.

### Criação do container PostgreSQL

```
docker volume create educalife-psql-data
docker run --restart=unless-stopped --name educalife-postgresql -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v educalife-psql-data:/var/lib/postgresql/data -d postgres:11
```

No seu arquivo /etc/hosts, inclua uma nova entrada apontando para o IP da sua máquina:

```
123.456.789.012 educalife-postgresql
```

Localização do arquivo hosts:
- Windows: C:\Windows\System32\drivers\etc
- Linux: /etc

Após acessar a base, roda o script SQL **baseInicial.sql** que se encontra na pasta Scripts.

Para carregar os dados de exemplos, rode o script SQL *cadastrosBasicos.sql* que se encontra na pasta Scripts.


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
19. Inscrição - Turma;
20. Histórico do Aluno;