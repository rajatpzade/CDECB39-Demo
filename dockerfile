FROM nginx:latest

LABEL author="rajatz"

RUN cat <h1> Hello World </h1> > /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

