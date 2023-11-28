FROM tomcat:9.0.58-jdk17-openjdk-slim

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples
ADD ROOT /usr/local/tomcat/webapps/

EXPOSE 80
CMD ["catalina.sh", "run"]