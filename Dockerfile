FROM tomcat:9.0.19-jre8-alpine

# Copy custom tomcat configuration to the base image
COPY server.xml /usr/local/tomcat/conf/server.xml
COPY web.xml /usr/local/tomcat/conf/web.xml

# Copy the application WAR file
COPY sample.war /usr/local/tomcat/webapps/sample.war

# Copy SSL cert and SSL private key to tomcat conf
COPY ssl.crt /usr/local/tomcat/conf/ssl.crt
COPY ssl.key /usr/local/tomcat/conf/ssl.key