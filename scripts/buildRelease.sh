#!/bin/bash -v

tsc --project tsconfig.prod.json && node build.js
./scripts/incrementBuildNumbers.js
cp -R src/. www
cordova build android --release

cp platforms/android/app/build/outputs/apk/release/app-release-unsigned.apk output/qwertycoin-mobile-wallet-release-unsigned.apk