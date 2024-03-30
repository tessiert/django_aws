#!/bin/sh

# Ensure Postgres is up and running before applying migrations and starting Django Dev server
if [ "$DATABASE" = "postgres" ]
then
    echo "Waiting for postgres..."

    # Loop until port scans succeed
    while ! nc -z $DB_HOST $DB_PORT; do
        sleep 0.1
    done

    echo "PostgreSQL started"
fi

# In production there are no commands here to flush and migrate, since this should
# only be done once

# Replace current process with a command (and parameters) provided as command line parameters
exec "$@"