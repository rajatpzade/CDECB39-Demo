FROM centos:7

LABEL author="rajatz"

RUN yum install httpd -y 

RUN echo <h1> 