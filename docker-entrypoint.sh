#!/bin/bash
set -e

# if [ "$1" = 'postgres' ]; then
#     chown -R postgres "$PGDATA"

#     if [ -z "$(ls -A "$PGDATA")" ]; then
#         gosu postgres initdb
#     fi

#     exec gosu postgres "$@"
# fi
exec kubectl port-forward svc/mariadb-prod 3306:0.0.0.0:3306 "$@"
