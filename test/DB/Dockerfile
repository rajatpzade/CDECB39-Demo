FROM mysql:latest

LABEL database="studentapp"

USER root

ENV MYSQL_ROOT_PASSWORD=1234

COPY init-db.sql /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]