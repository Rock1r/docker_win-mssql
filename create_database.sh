#!/bin/bash
set -a
source .env
set +a

read -p "Enter new database name: " DBNAME

docker exec -i mssql /opt/mssql-tools18/bin/sqlcmd \
 -S localhost -C -U sa -P "$MSSQL_PASS" \
 -Q "CREATE DATABASE $DBNAME"
