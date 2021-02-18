#!/usr/bin/env bash

set -e
set -u

VERSION="2021.2.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="5cee2b051015fe7c3f3f354c34174db8d19e78e818a0f692414130e37ec035bd"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
