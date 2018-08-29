#!/bin/bash

set -e
PATH=$PATH:/usr/local/bin

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

patch_dir=temp_patch_result

iasltool=$( which iasl )
if [[ "x${iasltool}"  == "x" ]];
then
    echo run install_tools.command to install tools iasl and patchmatic in /usr/local/bin
    exit 1
fi

# compile
echo de-compiling ACPI tables
cd ACPI-Tables 
iasl -dl -da SS*.aml DSDT.aml 
cd ..

# patch 1 - DSDT name
# patch 2 - rename XHCI to XHC
# patch 3 - KBD device
# patch 4 - nolonger needed: -e's/\\_SB.PCI0.LPC.EC.HWAC/B1B2(\\_SB.PCI0.LPC.EC.WAC0,\\_SB.PCI0.LPC.EC.WAC1)/' 

rm -f $patch_dir && mkdir -p $patch_dir

cat ACPI-Tables/DSDT.dsl | sed \
-e's/DSDT-or/DSDT/' \
-e's/XHCI/XHC/g' \
-e's/KBD/PS2K/g' -e's/WPS2K/WKBD/g' -e's/PPS2K/PKBD/g' \
> $patch_dir/origin_DSDT.dsl

##########################################

./patchmatic_auto_patch.bash $patch_dir

#test -e DSDT.dsl && rm -rf $patch_dir
