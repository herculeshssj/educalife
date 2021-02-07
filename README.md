Educalife
=========

Sistema de Gestão Acadêmica

Desenvolvido com a plataforma RAD OpenXava 6.4.

### Criação do container PostgreSQL

```
docker volume create educalife-db-data
docker run --name educalife-db --restart=unless-stopped -e POSTGRES_PASSWORD=Ed7c4l1f3* -e POSTGRES_USER=educalife -e POSTGRES_DB=educalife -p 5432:5432 -v educalife-db-data:/var/lib/postgresql/data -d postgres
```

No seu arquivo /etc/hosts, inclua uma nova entrada apontando para o IP da sua máquina:

```
123.456.789.012 educalife-db
```

Localização do arquivo hosts:
- Windows: C:\Windows\System32\drivers\etc
- Linux: /etc

Logo após, em uma janela de terminal, execute a restauração da base:

```
docker run --rm --link educalife-db -e PGPASSWORD="Ed7c4l1f3*" -v "$PWD":/backup postgres pg_restore -U educalife -h educalife-db -W -v -c --if-exists -O -d educalife /backup/educalife.backup
```

O comando acima considera que o dump da base está no diretório atual

### Fluxo de cadastro

Os cadastros no Educalife ocorrem na seguinte ordem:

1. Empresa -> Empresa;
2. Empresa -> Unidade;
3. Empresa -> Departamento;
4. Empresa -> Localidade;
6. Financeiro -> Conta;
7. Pessoal -> Colaborador; 
8. Contratos -> Contrato (colaboradores);
9. Pessoal -> Rubrica;
10. Pessoal -> Folha de Pagamento;
11. Financeiro -> Lançamentos;
12. Ensino -> Curso;
13. Ensino -> Turma;
14. Ensino -> Avaliação;
15. Ensino -> Inscrição - Turma;
16. Administração -> Contrato (para os alunos);
17. Financeiro -> Contas a Receber;
18. Ensino -> Diário de Classe;
19. Ensino -> Diário de Notas;
20. Ensino -> Histórico do Aluno.


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


### Ant

Alvos Ant úteis nos projetos.

Educalife:
-> deployEducalife
-> compile
-> deployWar
-> createWar
-> updateOX

OpenXava:
-> buildOpenXava
-> buildAddons

O alvo **deployEducalife** realiza a geração do arquivo WAR do projeto pronto para deploy, tanto no Tomcat quanto executado direto através do comando __java -jar arquivo.war__. 

Dentro da pasta do projeto, execute:

```
ant -f build.xml <alvo>
```

### Docker

No diretório raiz do repositório, execute a construção da imagem Docker:

```
docker build -t educalife:latest .
```

Após a construção da imagem, realize a criação do container:

```
docker run --restart=unless-stopped --name educalife --link educalife-db -p 8080:8080 -d educalife:latest
```

Para ter acesso aos recursos oferecidos pelo Consulta-CEP, use o seguinte comando para criar o container:

```
docker run --restart=unless-stopped --name educalife --link educalife-db --link consulta-cep -p 8080:8080 -d educalife:latest
```

O sistema está acessível em http://<ip>:8080/Educalife/

Ex: http://192.168.15.10:8080/Educalife/


### Backup e restore da base

**Backup:**

```
docker run --rm --link educalife-db -e PGPASSWORD="Ed7c4l1f3*" -v "$PWD":/backup postgres pg_dump -U educalife -h educalife-db -O -F c -b -v -f /backup/educalife.backup -W educalife
```

**Restauração:**

```
docker run --rm --link educalife-db -e PGPASSWORD="Ed7c4l1f3*" -v "$PWD":/backup postgres pg_restore -U educalife -h educalife-db -W -v -c --if-exists -O -d educalife /backup/educalife.backup
```