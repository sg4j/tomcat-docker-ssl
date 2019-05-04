# tomcat-docker-ssl
Sample WEB app with docker file and other configs needed for setting up SSL and enabling HSTS (filter in web.xml) on Tomcat in Docker

## Docker hub repo
sg4j/tomcat-ssl-sample

## Build: 
docker build -t tomcat-sample .
****************************************************

## Run:
 docker run -p 8080:8080 -p 8443:8443 -it sg4j/tomcat-ssl-sample
****************************************************

## Access:
https:\\localhost:8443\sample
****************************************************

## Create Cert/Key
openssl req -new -newkey rsa:4096 -days 30 -nodes -x509 \
    -subj "/C=US/ST=Nevada/L=Vegas/O=wiki/CN=tomcat.sample.com" \
    -keyout ./ssl.key -out ./ssl.crt
