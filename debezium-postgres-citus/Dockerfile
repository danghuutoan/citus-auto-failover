FROM citusdata/citus:10.2

# Core build utilities 
RUN apt-get update && apt-get install -f -y software-properties-common build-essential pkg-config git postgresql-server-dev-9.6 curl
RUN curl https://install.citusdata.com/community/deb.sh |  bash

RUN apt-get install -y postgresql-14-wal2json postgresql-11-auto-failover
COPY ./postgres.conf /etc/postgresql/postgresql.conf