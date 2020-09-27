#!/bin/bash -v

rm -rf node_modules/ platforms/ plugins/ www/

npm i
mkdir www
mkdir output
cordova platform add android
