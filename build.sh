#!/usr/bin/env bash

rm -rf ./dist
mkdir -p ./dist

cd node_modules/pokemon-showdown
npm run build

cd -
node index.js
