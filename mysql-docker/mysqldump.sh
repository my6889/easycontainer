#!/bin/bash
set -e
DATE=$(date +%Y%m%d-%H%M%S)
docker exec mysql-server mkdir -p /data/mysqldump
docker exec mysql-server bash -c "mysqldump -uroot --password='YOURPASSWORD' --all-databases | gzip -c > /data/mysqldump/mysqldumpall-$DATE.sql.gz"