FROM haproxy:1.9

RUN rm -rf /var/lib/apt/lists/lock
RUN apt-get update && apt-get install -f -y procps telnet postgresql-client

