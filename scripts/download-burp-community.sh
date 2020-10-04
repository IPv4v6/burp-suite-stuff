#!/usr/bin/env bash

set -e
set -u

VERSION="2020.9.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5a3fd1c3992b65c9a5c3c58b3940efd3227bc8e416f5d75fd6be37220d282d81"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
