#!/bin/bash
set -e
DATE=$(date +%Y%m%d-%H%M%S)
docker exec postgresql mkdir -p /data/pgdump
docker exec postgresql chown -R postgres:postgres /data/pgdump
docker exec --user postgres postgresql bash -c "pg_dumpall | gzip -c > /data/pgdump/pgdumpall-$DATE.sql.gz"