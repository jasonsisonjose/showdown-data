#!/usr/bin/env bash

NEW_TAG=$(date +'%Y.%m.%d')
TAG_REPLACEMENT=".version=\"${NEW_TAG}\""

cat package.json | jq -r "${TAG_REPLACEMENT}" > package.json.tmp
rm -f package.json
mv package.json.tmp package.json
git add package.json
git commit -m "v${NEW_TAG}"
git tag "${NEW_TAG}" -m "v${NEW_TAG}" || exit 1
