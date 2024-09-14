FROM nginx:latest

LABEL author="rajatz"

COPY index.html /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

