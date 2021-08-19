#!/usr/bin/env bash

if [[ ! -d "node_modules/pokemon-showdown" ]]; then
  npm install
fi

rm -rf ./dist
mkdir -p ./dist

mv ./node_modules/pokemon-showdown/.data-dist dist/data
