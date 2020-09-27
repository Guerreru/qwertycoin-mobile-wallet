#!/bin/bash -v

tsc --project tsconfig.prod.json && node build.js
./scripts/incrementBuildNumbers.js
cp -R src/. www
cordova build android --release

cp platforms/android/app/build/outputs/apk/debug/app-debug.apk output/qwertycoin-mobile-wallet-debug.apk