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
docker run --restart=unless-stopped --name consulta-cep -p 9090:8080 -d consultacep:latest
```