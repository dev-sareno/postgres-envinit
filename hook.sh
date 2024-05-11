#!/bin/sh

if [ ! -z "$INIT_SQL_SCRIPT_BASE64" ]; then
  echo $INIT_SQL_SCRIPT_BASE64 | base64 -d > /docker-entrypoint-initdb.d/custom.sql
  cat /docker-entrypoint-initdb.d/custom.sql
  ls -lha /docker-entrypoint-initdb.d/
fi
