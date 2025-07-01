#!/usr/bin/env bash
set -x
set -eo pipefail

# if a valkey container is running, print instructions to kill it and exit
RUNNING_CONTAINER=$(podman ps --filter 'name=zero2prod' --format '{{.ID}}')
if [[ -n $RUNNING_CONTAINER ]]; then
  echo >&2 "there is a container already running, kill it with"
  echo >&2 " podman kill ${RUNNING_CONTAINER}"
  exit 1
fi


# Launch zero2prod using Podman
CONTAINER_NAME="zero2prod"
podman run --rm \
  --pod=newsletter \
  --detach \
  --env APP_ENVIRONMENT=production \
  --name "${CONTAINER_NAME}" \
  zero2prod

>&2 echo "zero2prod is ready to go!"