#!/usr/bin/env bash
set -x

container=${1//\/}
systemctl stop docker-compose@$container
