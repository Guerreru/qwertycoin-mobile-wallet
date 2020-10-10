jarsigner --verbose -storetype pkcs12 -keystore /media/exploshot/Cloud/ExploCloud/Development/Keys/Android/QWC-App.keystore output/qwertycoin-mobile-wallet-release-unsigned.apk QWC-App

$ANDROID_BUILDTOOLS/zipalign -f -v 4 output/qwertycoin-mobile-wallet-release-unsigned.apk output/org.qwertycoin.explowallet.apk