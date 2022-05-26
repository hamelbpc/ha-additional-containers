#!/usr/bin/env bash

newpassword=$(docker run --rm httpd:alpine htpasswd -nbB admin 'Passwordp@ssword' | cut -d ":" -f 2)
newpassword=$(echo $newpassword|sed 's/\$/\$\$/g')
echo $newpassword
