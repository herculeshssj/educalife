FROM openjdk:11

WORKDIR /app

COPY ./ /app

RUN chmod 755 /app/mvnw && /app/mvnw clean package

EXPOSE 8080

CMD ["java", "-jar", "/app/target/consulta-cep.jar"]
