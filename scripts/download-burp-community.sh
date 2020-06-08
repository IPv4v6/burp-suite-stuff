#!/usr/bin/env bash

set -e
set -u

VERSION="2020.5"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="d80968d162a26183cfd27134501227b68c6cf59ec57c2ef9bca1f5bb0fd60621"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
