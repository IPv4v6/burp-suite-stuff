#!/usr/bin/env bash

set -e
set -u

VERSION="2020.8.1"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="7f492f4efe2f99ada30d7ef7630bee10a353925e628fd026bbb8cc4b52170e69"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
