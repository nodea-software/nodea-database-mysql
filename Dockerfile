FROM mysql:5.7

ADD sql/*.sql /docker-entrypoint-initdb.d/
RUN chown -R mysql:root /docker-entrypoint-initdb.d/

EXPOSE 3306

CMD ["mysqld"]
