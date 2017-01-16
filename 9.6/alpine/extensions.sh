#!/bin/bash
# #########
#
# Script to load extensions in PostgreSQL databases
# from the /docker-entrypoint-initdb.d/extensions file.
#
# Version: 1.0
#
# Author: Pedro Salgado <steenzout@ymail.com>
#
# #########

set -e


# extensions


if [ -f /docker-entrypoint-initdb.d/extensions ]; then
    for e in `cat /docker-entrypoint-initdb.d/extensions`
    do
        psql -v ON_ERROR_STOP=1 --username "${POSTGRES_USER}" -d "${POSTGRES_DB}" -c "CREATE EXTENSION ${e};"
    done
fi

