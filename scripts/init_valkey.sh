#!/usr/bin/env bash
set -x
set -eo pipefail

# if a valkey container is running, print instructions to kill it and exit
RUNNING_CONTAINER=$(podman ps --filter 'name=valkey' --format '{{.ID}}')
if [[ -n $RUNNING_CONTAINER ]]; then
  echo >&2 "there is a container already running, kill it with"
  echo >&2 " podman kill ${RUNNING_CONTAINER}"
  exit 1
fi


# Launch Valkey using Podman
CONTAINER_NAME="valkey"
podman run --rm \
  --pod=newsletter \
  --detach \
  --name "${CONTAINER_NAME}" \
  valkey

>&2 echo "Valkey is ready to go!"