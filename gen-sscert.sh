#!/usr/bin/env bash

#set -x

CERT_FILE=cert.pem
KEY_FILE=key.pem

echo "This is a simple wrapper for openssl with some solid defaults"
echo "When asked, please use fully qualified domain name of the"
echo "host serial-port-json-server will be running on for 'Common Name'"
echo ""
openssl req -x509 -newkey rsa:4096 -keyout $KEY_FILE -out $CERT_FILE -days 365 -nodes
