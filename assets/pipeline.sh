#!/bin/bash

if ! npm install; then { echo "NPM install failed, aborting."; exit 1; } fi
if ! npm run build; then { echo "NPM build falied, aborting."; exit 1; } fi
if ! npm start; then { echo "NPM start failed, aborting"; exit 1; } fi
