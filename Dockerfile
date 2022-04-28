# Install WebServer
# BASE IMAGE - UBUNTU Select OS - CENTOS | AMAZON linux | UBUNTU
FROM ubuntu:trusty

# Install the apache2 package

RUN apt-get update -y && apt-get install apache2 -y 

# COPY your index files to  /var/www/html/
# WORKDIR /var/www/html
COPY . /var/www/html/

# Start the service- systemctl stary httpd

CMD ["apachectl", "-D", "FOREGROUND"]

EXPOSE 80