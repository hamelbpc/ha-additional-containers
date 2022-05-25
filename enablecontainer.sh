#!/usr/bin/env bash

container=${1//\/}
systemctl enable docker-compose@$container
