FROM tomcat

RUN apt update && apt upgrade -y && apt install -y ant

RUN mkdir /app

COPY ./ /app

RUN ant -f /app/Educalife/build.xml deployEducalife

RUN mv /workspace.dist/Educalife.dist/Educalife.war /usr/local/tomcat/webapps && rm -rf /workspace.dist

EXPOSE 8080

CMD ["catalina.sh", "run"]
