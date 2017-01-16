#!/bin/bash

PG_MAJOR=9

for PG_MINOR in 2 3 4 5 6
do
        VERSION="${PG_MAJOR}.${PG_MINOR}"

	docker build \
		-t "steenzout/postgres:${VERSION}" \
		-f "${VERSION}/Dockerfile" \
		"${VERSION}"
done

