FROM mysql:5.7.19

COPY ./scripts /docker-entrypoint-initdb.d
COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/
RUN apk add curl bash zip
EXPOSE 3306