#!/usr/bin/env bash

SUBSCRIBE=~/Dev/rust/zero2prod/scripts/subscribe.json

newman run $SUBSCRIBE -n 20 --delay-request 5
