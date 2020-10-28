FROM javawebapp:base
EXPOSE 8080
WORKDIR /opt/app/
COPY . .
RUN mvn clean install && cp ./target/web-*.war /opt/tomcat/webapps/myapp.war
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
