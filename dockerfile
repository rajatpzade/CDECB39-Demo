FROM nginx:latest

LABEL author="rajatz"

COPY index.html /usr/share/nginx/html


CMD ["nginx", "-g", "daemon off;"]

