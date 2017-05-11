#!/bin/bash -x

binary=AppleIntelSKLGraphicsFramebuffer

cd /System/Library/Extensions/AppleIntelSKLGraphicsFramebuffer.kext/Contents/MacOS
test -e ${binary}.orig || sudo cp -a ${binary} ${binary}.orig

# find    39 C6 76 51
# replace 39 C6 EB 51

sudo perl -pi -e 's|\x39\xc6\x76\x51|\x39\xc6\xeb\x51|g' $binary
sudo kextload /System/Library/Extensions/AppleIntelSKLGraphicsFramebuffer.kext
sudo kextcache -i /
