#!/bin/bash

set -ex

PROGRAM='lambda-with-c-compiler'
CONTAINER_BIN_DIR='/usr/local/src/lambda-with-c'

# build
docker build -t ${PROGRAM} .

# copy compiled binary to shared directory
docker run --rm \
  -v $(pwd)/bin:/var/tmp \
  -it ${PROGRAM} \
  /bin/bash -c "cp -r ${CONTAINER_BIN_DIR}/lambda_function /var/tmp"

