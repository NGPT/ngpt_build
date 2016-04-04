#!/bin/bash
sudo docker exec -t build_pgsql_1 /bin/bash -c 'psql -U postgres -c "create database ngpt;"'
sudo docker exec -it build_seed_1 /bin/bash -c '/var/www/html/yii migrate/up'
mysql -h 127.0.0.1 -P 33060 -u root -p19941126  -f zhxs < forum.sql
