#!/bin/bash

commitMsg="COMPX341-22A-A3 Commiting from CI/CD Pipeline"

if ! npm install; then { echo "NPM install failed, aborting."; exit 1; } fi
if ! npm run build; then { echo "NPM build falied, aborting."; exit 1; } fi

git add --all
git commit -m "$commitMsg"
git push -u origin main

# if ! npm start; then { echo "NPM start failed, aborting"; exit 1; } fi
