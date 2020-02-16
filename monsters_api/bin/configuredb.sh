#!/bin/bash

export PGPASSWORD='node_password'

database="monsterdb"

echo "Configuring database: $database"

dropdb -U node_user monsterdb
createdb -U node_user monsterdb

psql -U node_user monsterdb < ./bin/sql/monsters.sql

echo "$database configured"