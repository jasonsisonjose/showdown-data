#!/usr/bin/env bash

if [[ ! -d "node_modules/pokemon-showdown" ]]; then
  npm install
fi

rm -rf ./dist
mkdir -p ./dist

cd ./node_modules/pokemon-showdown
npm run build

cd -
node index.js

mv dist/.data-dist dist/data
