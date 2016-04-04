#!/bin/bash
sudo docker exec -t build_pgsql_1 /bin/bash -c 'psql -U postgres -c "create database ngpt;"'
sudo docker exec -it build_seed_1 /bin/bash -c '/var/www/html/yii migrate/up'
sudo docker cp ./forum.sql build_mysql_1:/home/
sudo docker exec -it build_mysql_1 /bin/bash -c 'mysql -h 127.0.0.1 -u root -p19941126 -f zhxs < /home/forum.sql'
