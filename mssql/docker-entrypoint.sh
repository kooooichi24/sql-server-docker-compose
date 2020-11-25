#!/bin/sh

if [ ! -d "/tmp/check" ]; then
  mkdir /tmp/check
  # echo `date` > /tmp/check/first_`date +%Y%m%d_%H%M%S`
  ./first.sh
else
  # echo `date` > /tmp/check/second_`date +%Y%m%d_%H%M%S`
  ./second.sh
fi

/opt/mssql/bin/sqlservr

exec "$@"