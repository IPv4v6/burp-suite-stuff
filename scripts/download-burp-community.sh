#!/usr/bin/env bash

set -e
set -u

VERSION="2021.3.2"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="81144baf6100977fd5d1e76055ba93185c14d56cc455c356a2ecc9eabae97656"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
