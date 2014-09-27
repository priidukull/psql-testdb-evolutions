#!/bin/bash
if [ -d "evolutions" ]; then
  echo "You already have a folder named evolutions in this folder. Because of that psql-testdb-evolutions cannot be set up. There are several ways to resolve this issue:
  a) rename the folder named evolutions
  b) delete the folder named evolutions
  c) run the setup script in another folder"
  exit 1
fi

echo "Please type the name of the test database that you will use?"
read db_name
echo "Please type the name of the schema that you will use?"
read schema_name
mkdir evolutions/
mkdir evolutions/$schema_name
echo "--db=$db_name

DROP SCHEMA IF EXISTS $schema_name CASCADE;
CREATE SCHEMA $schema_name;" > evolutions/$schema_name/0.sql
exit