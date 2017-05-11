#!/bin/bash -x

binary=AppleIntelSKLGraphicsFramebuffer

cd /System/Library/Extensions/AppleIntelSKLGraphicsFramebuffer.kext/Contents/MacOS
test -e ${binary}.orig && sudo mv ${binary}.orig ${binary}
sudo kextcache -i /
