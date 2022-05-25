#!/usr/bin/env bash

container=${1//\/}
watch -n1 systemctl status docker-compose@$container
