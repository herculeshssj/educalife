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

