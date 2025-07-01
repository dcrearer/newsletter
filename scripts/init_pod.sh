#!/usr/bin/env bash

podman pod create \
--name newsletter \
--publish 8000:8000 \
--publish 5432:5432 \
--publish 5775:5775/udp \
--publish 6379:6379  \
--publish 6831:6831/udp \
--publish 6832:6832/udp \
--publish 5778:5778 \
--publish 16686:16686 \
--publish 14250:14250 \
--publish 14268:14268 \
--publish 14269:14269 \
--publish 4317:4317 \
--publish 9411:9411