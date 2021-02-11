#!/usr/bin/env bash

source ~/.bashrc

set -ex
rm -rf ./_dist
npm install
npm run build
