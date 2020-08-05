#!/usr/bin/env bash

set -e
set -u

VERSION="2020.7"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="0136e6b8793aaca1b23d4a2fe676a0ae67b4ed57422b28e9da722d79f124d550"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
