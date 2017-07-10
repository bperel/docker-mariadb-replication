#!/bin/bash

echo 'create `test` schema and populate some data'
cat 02-master-database.sql | docker exec -i db_master mysql

echo "check slaves to ensure that data was replicated"
for run in {1..2}; do
  container_name=db_slave${run}
  echo "###### ${container_name} ######"
  docker exec -it "${container_name}" mysql -e 'select * from test.test'
done
