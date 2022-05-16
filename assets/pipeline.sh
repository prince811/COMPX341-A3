#!/bin/bash

[ -z "$1" ] && { echo "Usage: ./pipeline.sh <commit message>"; exit 1; }

commitMsg=$1

echo "(1) Install (npm install)"
if ! npm install; then { echo "NPM install failed, aborting."; exit 1; } fi
echo "(2) Build (npm run build)"
if ! npm run build; then { echo "NPM build falied, aborting."; exit 1; } fi

echo "(3) Adding any changes to git"
git add --all
echo "(4) Committing changes to current branch"
git commit -m "$commitMsg"
echo "(5) Pushing changes to origin main"
git push -u origin main

echo "(6) Starting local dev server"
# if ! npm start; then { echo "NPM start failed, aborting"; exit 1; } fi
