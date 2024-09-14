FROM nginx:latest

LABEL author="rajatz"

# Add the repo and include the GPG key URL



RUN echo <h1> Hello World </h1> > /usr/share/nginx/html

EXPOSE 80

CMD ["httpd-foreground"]

