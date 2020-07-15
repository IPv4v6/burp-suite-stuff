#!/usr/bin/env bash

set -e
set -u

VERSION="2020.6"
FILE="burpsuite_community_linux_v${VERSION}.sh"
SHA256="cf88faeb4434eb49f0042ac22c04da2fd5d8e93421dc4878e4c002b96cfb0692"

curl -R -o ${FILE} \
"https://portswigger.net/burp/releases/download?product=community&version=${VERSION}&type=linux"
echo "${SHA256} ${FILE}" | sha256sum -c -
