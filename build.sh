#!/usr/bin/env bash

CURRDIR=$PWD

rm -rf ./dist
mkdir -p ./dist

cd node_modules/pokemon-showdown
npm run build

cd $CURRDIR

node index.js
