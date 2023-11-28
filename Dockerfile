FROM tomcat:9.0.83-jdk21-corretto

RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/examples

ADD ROOT.war /usr/local/tomcat/webapps/

EXPOSE 80
CMD ["catalina.sh", "run"]