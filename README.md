Educalife
=========

Sistema de Gestão Acadêmica

### Criação do container PostgreSQL

```
docker volume create educalife-psql-data
docker run --restart=unless-stopped --name educalife-postgresql -e POSTGRES_PASSWORD=postgres -p 5432:5432 -v educalife-psql-data:/var/lib/postgresql/data -d postgres:11
```

Após acessar a base, roda o script SQL **baseInicial.sql** que se encontra na pasta Scripts.

