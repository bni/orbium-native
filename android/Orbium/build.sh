#!/bin/sh
export PATH=$PATH:~/Documents/android-sdk-mac_x86/tools:~/Documents/android-sdk-mac_x86/platform-tools

ant clean
ant debug
adb install -r bin/orbium-debug.apk
