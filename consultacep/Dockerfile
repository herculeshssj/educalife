FROM debian

RUN apt update && apt upgrade -y && apt install -y default-jdk

WORKDIR /app

COPY ./ /app

RUN chmod 755 /app/mvnw && /app/mvnw -Dmaven.test.skip=true clean package

EXPOSE 8080

CMD ["java", "-jar", "/app/target/consulta-cep.jar"]
