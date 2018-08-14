#!/usr/bin/env bash

openssl req -new -newkey rsa:2048 -days 365 -nodes -x509 \
-keyout mitmcakey.pem -out mitmcacert.pem \
-subj "/O=0 Trust Corp/CN=0 Trust Corp CA"
