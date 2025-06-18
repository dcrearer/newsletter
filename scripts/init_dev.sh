#!/usr/bin/env bash

 podman run --rm \
 --env APP_ENVIRONMENT=LOCAL -d \
 --publish 8000:8000 \
 --name newsletter \
 newsletter:latest