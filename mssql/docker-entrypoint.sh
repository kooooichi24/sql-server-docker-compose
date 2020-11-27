#!/bin/sh

if [ ! -d "/tmp/check" ]; then
  mkdir /tmp/check
  /opt/mssql/bin/sqlservr -m"SQLCMD"
else
  /opt/mssql/bin/sqlservr
fi

exec "$@"