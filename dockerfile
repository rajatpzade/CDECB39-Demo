FROM nginx:latest

LABEL author="rajatz"

COPY index.html 

RUN cat <h1> Hell > /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

