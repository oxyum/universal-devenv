#!/bin/bash

set -o allexport; source .env; set +o allexport

mkcert \
    -key-file "./certs/_wildcard.${UDE_BASE_DOMAIN}-key.pem" \
    -cert-file "./certs/_wildcard.${UDE_BASE_DOMAIN}.pem" \
    "*.${UDE_BASE_DOMAIN}"
