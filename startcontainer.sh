#!/usr/bin/env bash

set -x

container=${1//\/}
systemctl start docker-compose@$container
watch -n1 systemctl status docker-compose@$container
