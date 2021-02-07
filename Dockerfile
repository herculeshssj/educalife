FROM debian

RUN apt update && apt upgrade -y && apt install -y ant tomcat

RUN mkdir /app

COPY ./ /app

RUN ant -f /app/Educalife/build.xml deployEducalife

RUN mv /workspace.dist/Educalife.dist/Educalife.war /usr/local/tomcat/webapps && rm -rf /workspace.dist

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

EXPOSE 8080

CMD ["catalina.sh", "run"]
