#!/bin/bash

PG_MAJOR=9

for PG_MINOR in 1 2 3 4 5 6
do
  DIR="${PG_MAJOR}.${PG_MINOR}"
  echo "generating ${DIR}/Dockerfile..."

  mkdir -p "${DIR}" || true

  eval "cat > '${DIR}/Dockerfile' << EOF
$(cat Dockerfile)
EOF"

  echo "copying extensions.sh to ${DIR}/..."
  cp extensions.sh "${DIR}/"

  # alpine

  DIR="${PG_MAJOR}.${PG_MINOR}/alpine"
  echo "generating ${DIR}/Dockerfile..."

  mkdir -p "${DIR}" || true

  eval "cat > '${DIR}/Dockerfile' << EOF
$(cat Dockerfile.alpine)
EOF"

  echo "copying extensions.sh to ${DIR}/..."
  cp extensions.sh "${DIR}/"

done
