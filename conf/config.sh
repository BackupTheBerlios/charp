#!/bin/bash

# Set the value of this variable to the prefix of your project.
PREFIX=CHARP

# Location of the ->SQL export generated by Power Architect
# (Uncomment and set accordingly if you are using Power Architect)
#SQL_EXPORT="$HOME/Documents/charp.sql"

# *** No further editing needed after this line. ***

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
