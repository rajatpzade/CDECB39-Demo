FROM centos:7

LABEL author="rajatz"

RUN yum-config-manager --add-repo=http://vault.centos.org/centos/7/os/x86_64/
RUN yum install httpd -y
 

RUN echo <h1> Hello World </h1> > /var/www/html/index.html

EXPOSE 80

CMD ["httpd-foreground"]

