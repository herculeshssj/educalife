Consulta CEP
============

Execução do projeto
-------------------

```
./mvnw spring-boot:run
```

Construção da imagem Docker
---------------------------

```
docker build -t consultacep:latest .
```

Execução do container
---------------------

**PostgreSQL:** 

```
docker run --restart=unless-stopped --name consulta-cep-db -e POSTGRES_PASSWORD=C0ns7lt*C3p% -e POSTGRES_USER=consulta_cep -e POSTGRES_DB=consulta_cep -d postgres
```

**Aplicação:**

```
docker run --restart=unless-stopped --name consulta-cep --link consulta-cep-db -p 9090:8080 -d consultacep:latest
```

Backup e restauração
--------------------

Backup:

```
pg_dump -U consulta_cep -O -F c -b -v -f consulta_cep.backup -W consulta_cep
```

Restauração:

```
pg_restore -U consulta_cep -W -v -c --if-exists -O -d consulta_cep consulta_cep.backup
```