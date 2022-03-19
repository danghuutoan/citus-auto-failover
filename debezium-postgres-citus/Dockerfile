FROM citusdata/citus:10.2

# Core build utilities 
RUN apt-get update && apt-get install -f -y software-properties-common build-essential pkg-config git postgresql-server-dev-9.6 curl procps && rm -rf /var/lib/apt/lists/*
RUN curl https://install.citusdata.com/community/deb.sh |  bash

RUN apt-get install -y postgresql-14-wal2json postgresql-11-auto-failover xinetd telnet
COPY ./postgres.conf /etc/postgresql/postgresql.conf
COPY ./pgsqlchk /opt/pgsqlchk
RUN chmod 755 /opt/pgsqlchk
COPY ./xinetd.d/pgsqlchk /etc/xinetd.d/pgsqlchk
RUN echo "pgsqlchk 23267/tcp # pgsqlchk" >> /etc/services
RUN /etc/init.d/xinetd start