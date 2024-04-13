FROM maven AS builder 
COPY . .
RUN mvn install

FROM tomcat
COPY --from=builder /target/App.jar /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
