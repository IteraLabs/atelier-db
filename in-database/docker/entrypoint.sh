#!/bin/bash
set -e

rm -f /etc/clickhouse-server/users.d/default-password.xml
rm -f /etc/clickhouse-server/users.d/default-user.xml

chown -R clickhouse:clickhouse /var/lib/clickhouse
chown -R clickhouse:clickhouse /var/log/clickhouse-server
chown -R clickhouse:clickhouse /etc/clickhouse-server

exec /entrypoint.sh "$@"
