#!/usr/bin/env bash

PG_VERSION="9.1"

if [ ! -d /etc/postgresql ]; then
  apt-get -y postgresql libpq-dev

  cp "files/postgresql/pg_hba.conf" "/etc/postgresql/$PG_VERSION/main/"

  service postgresql restart
fi
