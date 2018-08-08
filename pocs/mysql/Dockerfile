FROM mysql:5.7.19

COPY ./scripts /docker-entrypoint-initdb.d
COPY ./mysqld.cnf /etc/mysql/mysql.conf.d/
RUN apt-get update
RUN apt-get install -y curl zip
EXPOSE 3306