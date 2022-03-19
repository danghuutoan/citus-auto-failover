FROM haproxy:1.9

RUN rm -rf /var/lib/apt/lists/lock
RUN apt-get update && apt-get install -f -y procps telnet
RUN mkdir -p /run/haproxy/
# RUN sed -i '/imklog/s/^/#/' /etc/rsyslog.conf
RUN mkdir -p /var/lib/haproxy/dev/
# RUN groupadd haproxy
# RUN useradd -g haproxy haproxy
# USER haproxy

