#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail
#set -o xtrace

sed -i "s/HOSTNAME/${HOSTNAME}/g" /etc/nginx/conf.d/kibana-nginx.conf

nginx -c /etc/nginx/nginx.conf
