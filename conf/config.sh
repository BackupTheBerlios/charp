#!/bin/sh

PREFIX=CHARP

# Location of the ->SQL generated by Power Architect
#SQL_EXPORT="$HOME/Documents/charp.sql"

CONF_DATABASE=${PREFIX}_PGDATABASE
CONF_HOST=${PREFIX}_PGHOST
CONF_PORT=${PREFIX}_PGPORT
CONF_USER=${PREFIX}_PGUSER
CONF_DIR=${PREFIX}DIR

export PGDATABASE=${!CONF_DATABASE}
export PGHOST=${!CONF_HOST}
export PGPORT=${!CONF_PORT}
export PGUSER=${!CONF_USER}

# Define <PREFIX>DIR in your bash_profile.
if [ ! -d "${!CONF_DIR}" ]; then
    echo Variable $CONF_DIR is not defined. >&2
    exit 1
fi

BASEDIR="${!CONF_DIR}"
TESTDIR="$BASEDIR/scripts/test"
