#!/usr/bin/env bash

set -e
set -u

VERSION="2023.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="2fa25961ef27350528da84521180b197be0dbb103af1b061b53b2c4f78ae18db"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
