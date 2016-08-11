# postgres

[![Build Status](https://travis-ci.org/steenzout/docker-postgres.svg?branch=master)](https://travis-ci.org/steenzout/docker-postgres)
[![License](https://img.shields.io/badge/license-New%20BSD-blue.svg?style=flat)](https://raw.githubusercontent.com/steenzout/postgres/master/LICENSE)

[![Project Stats](https://www.openhub.net/p/steenzout-docker-postgres/widgets/project_thin_badge.gif)](https://www.openhub.net/p/steenzout-docker-postgres/)

[Steenzout][steenzout]'s docker image packaging for [PostgreSQL][postgresql].

This image is built on top of the [PostgreSQL official image][docker_postgres].

It copies the `extensions.sh` script into the `/docker-entrypoint-initdb.d/`.

This script reads `/docker-entrypoint-initdb.d/extensions` and
loads each extension into the `${POSTGRES_DB}` database.


## dependencies

- [postgres][docker_postgres]
- [debian:jessie][docker_debian]


## environment variables

check [postgres][docker_postgres].


[docker_debian]:	https://github.com/tianon/docker-brew-debian	"Debian official image"
[docker_postgres]:	https://github.com/docker-library/postgres	"PostgreSQL official image"
[postgresql]:	http://www.postgresql.org/	"PostgreSQL"
[steenzout]:	https://github.com/steenzout	"Pedro Salgado"

