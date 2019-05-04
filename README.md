# tomcat-docker-ssl
Sample WEB app with docker file and other configs needed for setting up SSL on Tomcat in Docker

# Dockerfile:
****************************************************
FROM tomcat:9.0.19-jre8-alpine

COPY server.xml /usr/local/tomcat/conf/server.xml 

COPY sample.war /usr/local/tomcat/webapps/sample.war

COPY ssl.crt /usr/local/tomcat/conf/ssl.crt

COPY ssl.key /usr/local/tomcat/conf/ssl.key
****************************************************

# Build: 
docker build -t tomcat-sample .
****************************************************

# Run:
 docker run -p 8080:8080 -p 8443:8443 -it sg4j/tomcat-ssl-sample
****************************************************

# Access:
https:\\localhost:8443\sample
****************************************************

# Create Cert/Key
openssl req -new -newkey rsa:4096 -days 30 -nodes -x509 -subj \
    "/C=US/ST=Nevada/L=Vegas/O=wiki/CN=tomcat.sample.com" -keyout \
    ./ssl.key -out ./ssl.crt
