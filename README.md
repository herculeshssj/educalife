Educalife
=========

Sistema de Gestão Acadêmica

Desenvolvido com a plataforma RAD OpenXava 6.4.

### Criação do container PostgreSQL

```
docker volume create educalife_db_data
docker run --name educalife-db --restart=unless-stopped -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v educalife_db_data:/var/lib/postgresql/data -d postgres
```

No seu arquivo /etc/hosts, inclua uma nova entrada apontando para o IP da sua máquina:

```
123.456.789.012 educalife-db
```

Localização do arquivo hosts:
- Windows: C:\Windows\System32\drivers\etc
- Linux: /etc

Após acessar a base como usuário postgres, rode o script SQL **baseInicial.sql** que se encontra na pasta Scripts.

Inicie a aplicação para realizar a criação das tabelas.

Para carregar os dados de exemplos, rode o script SQL **cadastrosBasicos.sql** que se encontra na pasta Scripts. Rode o script usando o usuário __educalife__.


### Fluxo de cadastro

Os cadastros no Educalife ocorrem na seguinte ordem:

1. Opções -> Usuários - Papéis;
2. Opções -> Usúarios;
3. Cadastros -> Tipo de Logradouro;
4. Administração -> Empresa;
5. Administração -> Unidade;
6. Administração -> Departamento;
7. Administração -> Localidade;
8. Cadastros -> Banco;
9. Financeiro -> Conta;
10. Cadastros -> Cargo;
11. Cadastros -> Estado Civil;
12. Cadastros -> Nacionalidade;
13. Cadastros -> Tipo Sanguíneo;
14. Cadastros -> Gênero;
15. Cadastros -> Escolaridade;
16. Cadastros -> Etnia;
17. Cadastros -> Deficiência;
18. Pessoal -> Colaborador; 
19. Administração -> Contrato (para os colaboradores);
20. Pessoal -> Rubrica;
21. Pessoal -> Folha de Pagamento;
22. Financeiro -> Lançamentos;
23. Ensino -> Curso;
24. Ensino -> Turma;
25. Ensino -> Avaliação;
26. Ensino -> Inscrição - Turma;
27. Administração -> Contrato (para os alunos);
28. Financeiro -> Contas a Receber;
29. Ensino -> Diário de Classe;
30. Ensino -> Diário de Notas;
31. Ensino -> Histórico do Aluno.


### Processo de atualização

Para atualizar os arquivos do projeto para a última versão do OpenXava, siga os passos a seguir:

1. Baixe a nova versão do OpenXava no Sourceforge: https://sourceforge.net/projects/openxava/files/;
2. Após extrair os arquivos, vá no diretório workspace, copie a pasta OpenXava e substitua a pasta que está no repositório Git local;
3. Entre no repositório Git local pelo terminal, e visualize as alterações usando __git status__;
4. Desfaça as mudanças nos seguintes arquivos:

```
git checkout -- OpenXava/src/org/openxava/util/AppServer.java
```

5. Após isso, realize o commit das alterações;
6. Volte no diretório workspace, copie a pasta Addons e substitua a pasta que está no repositório Git local;
7. Entre no repositório Git local pelo terminal, e visualize as alterações usando __git status__;
8. Desfaça as mudanças nos seguintes arquivos:

```
git checkout -- Addons/src/com/openxava/naviox/impl/SignInHelper.java
```

9. Após isso, realize o commit das alterações;
10. Agora abra o OpenXava Studio, remova os projetos OpenXava e Addons do Package Explorer sem excluir as pastas, e importe os projetos OpenXava, Educalife e Addons que estão no repositório Git local;
11. Vá no arquivo build.xml do projeto OpenXava, Run As -> Ant Build...;
12. Na janela de Run As, deixe selecionado somente os alvos Ant "buildOpenXava" e "buildAddons";
13. Logo em seguida, vá no arquivo build.xml do projeto Educalife, Run As -> Ant Build...;
14. Na janela de Run As, deixe selecionado somenteo o alvo Ant "updateOX";
15. Após o build, volte no terminal, e desfaça as alterações nos seguintes arquivos e diretórios:

```
git checkout -- Educalife/web/naviox/index.jsp 
git checkout -- Educalife/web/naviox/mainNavigation.jsp
git checkout -- Educalife/web/WEB-INF/web.xml
```

16. Após isso, realize o commit das alterações;
17. Inicie o projeto e confira se está tudo Ok.
