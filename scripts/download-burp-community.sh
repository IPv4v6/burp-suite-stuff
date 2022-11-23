#!/usr/bin/env bash

set -e
set -u

VERSION="2022.11.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="da5edd9693380f2bb17dff442abaff75309abee3e4faa4874d77350d6d7a7dc8"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
