#!/bin/sh

yq -s '[.[]|.labels]|flatten' "$@"
