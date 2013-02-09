#!/bin/sh
export PATH=$PATH:~/Documents/android-sdk-macosx/tools:~/Documents/android-sdk-macosx/platform-tools

ant clean
ant release
adb install -r bin/orbium-release.apk
