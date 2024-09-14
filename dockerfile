FROM centos:7

LABEL author="rajatz"

RUN yum install httpd -y 

RUN echo <h1> Hello World </h1> > /var/www/html/index.html



CMD ["httpd-foreground"]

