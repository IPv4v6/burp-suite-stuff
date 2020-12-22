#!/usr/bin/env bash

set -e
set -u

VERSION="2020.12.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="ec8835befff5131b06ffd4f1758c2fdaf54c25b484fdda24804ac1f2c9f9610d"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
