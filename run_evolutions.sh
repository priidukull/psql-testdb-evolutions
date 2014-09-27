#!/bin/bash
for schema in "evolutions"/*
do
db_name_line=$(head -n 1 "$schema"/0.sql)
db_name_tokens=(${db_name_line//\=/ })
db_name=${db_name_tokens[1]}
schema_name_tokens=(${schema//\// })
schema_name=${schema_name_tokens[1]}
  for file in "$schema"/*
  do
    sql="SET SEARCH_PATH TO $schema_name;"$(cat $file)
    psql $db_name -c "$sql"
  done
done
exit
