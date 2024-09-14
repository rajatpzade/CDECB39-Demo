FROM centos:7

LABEL author="rajatz"

# Add the repo and include the GPG key URL
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum-config-manager --add-repo=http://vault.centos.org/centos/7/os/x86_64/ && \
    yum-config-manager --save --setopt=gpgkey=http://vault.centos.org/centos/7/os/x86_64/RPM-GPG-KEY-CentOS-7

# Install httpd
RUN yum install httpd -y


RUN echo <h1> Hello World </h1> > /var/www/html/index.html

EXPOSE 80

CMD ["httpd-foreground"]

