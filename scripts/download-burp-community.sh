#!/usr/bin/env bash

set -e
set -u

VERSION="2020.11.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5115e6e77d9454d4a4dbe3bdf97090f09696455f2ad526746b54d379b86807cc"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
