#!/usr/bin/env bash
set -x
set -eo pipefail

# if a jaeger container is running, print instructions to kill it and exit
RUNNING_CONTAINER=$(podman ps --filter 'name=jaeger' --format '{{.ID}}')
if [[ -n $RUNNING_CONTAINER ]]; then
  echo >&2 "there is a container already running, kill it with"
  echo >&2 " podman kill ${RUNNING_CONTAINER}"
  exit 1
fi


# Launch jaeger using Podman
CONTAINER_NAME="jaeger"
podman run --rm \
  --pod=newsletter \
  --detach \
  --name "${CONTAINER_NAME}" \
  jaeger

>&2 echo "Jaeger is ready to go!"