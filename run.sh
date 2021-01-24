#!/bin/sh

socat TCP-LISTEN:8888,reuseaddr,fork TCP:${TARGET_HOST}:${TARGET_PORT}
