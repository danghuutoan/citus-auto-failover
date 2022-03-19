#!/bin/bash
/etc/init.d/xinetd start
pg_autoctl create postgres --ssl-self-signed --auth trust --pg-hba-lan --monitor postgresql://autoctl_node@monitor/pg_auto_failover --run