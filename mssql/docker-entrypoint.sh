#!/bin/sh

if [ ! -d "/tmp/check" ]; then
  mkdir /tmp/check
  # echo `date` > /tmp/check/first_`date +%Y%m%d_%H%M%S`
  ./first.sh
  /opt/mssql/bin/sqlservr -m"SQLCMD"
else
  # echo `date` > /tmp/check/second_`date +%Y%m%d_%H%M%S`
  ./second.sh
  /opt/mssql/bin/sqlservr
fi

# /opt/mssql/bin/sqlservr

exec "$@"