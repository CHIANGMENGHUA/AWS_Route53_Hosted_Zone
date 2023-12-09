#!/bin/bash

source .env

aws route53 create-hosted-zone --name $my_hosted_zone_name \
                               --caller-reference 2014-04-01-18:47 \
                               --hosted-zone-config Comment="command-line version"
