#!/usr/bin/env bash

set -e
set -u

VERSION="2021.3.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="03ec2b7cc3247cdb613466a05ef9b7fbc8a39d8bf78c9f6eaccc0f7d05cd3bd2"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
