#!/bin/bash 

#hn=$( hostname )

disk0="macOS "
esp0=$( diskutil list | grep "$disk0" | awk '{print $6}'| sed -e's/s2//' -e's/disk//' )
mntpt=$( espmount.bash $esp0 )
mounted0=$?

echo ESP is mounted here: $mntpt
cd $mntpt
sudo xattr -cr EFI

test -f EFI/Clover_Install_Log.txt && mv EFI/Clover_Install_Log.txt EFI/Install_Log.txt
rm -rf EFI/BOOT/*32*
rm -rf EFI/CLOVER/ACPI/WINDOWS
rm -rf EFI/CLOVER/ACPI/origin
rm -rf EFI/CLOVER/*32*
rm -rf EFI/CLOVER/tools/*32*

model=`ioreg -l |grep RM,oem-table-id|grep -v device |awk '{print $6}'|sed -e's/"//g'`
    rm -rf EFI/CLOVER/tools/*64.efi*

rm -rf EFI/CLOVER/ROM
rm -rf EFI/CLOVER/doc

if [[ -d EFI/CLOVER/OEM ]]; 
then
    test -f EFI/CLOVER/config.plist && rm EFI/CLOVER/config.plist
    rm -rf EFI/CLOVER/ACPI
    rm -rf EFI/CLOVER/kexts
    rm -rf EFI/CLOVER/OEM/SystemProductName
    rm -rf EFI/CLOVER/OEM/*/kexts/10.?
    rm -rf EFI/CLOVER/OEM/*/kexts/10.??
else
    rm -rf EFI/CLOVER/kexts/10.?
    rm -rf EFI/CLOVER/kexts/10.??
fi
# Use Other
test -e EFI/CLOVER/drivers64UEFI/OsxAptioFixDrv-64.efi && mv EFI/CLOVER/drivers64UEFI/OsxAptioFixDrv-64.efi EFI/CLOVER/drivers64UEFI/OsxAptioFixDrv-64.efi.NotUsed

f=EFI/CLOVER/themes/ThinkPad 
test -e $f && mv $f EFI/CLOVER/
f=EFI/CLOVER/themes/BGM
test -e $f && mv $f EFI/CLOVER/

rm -rf EFI/CLOVER/themes/* 

#test -e EFI/CLOVER/themes || mkdir EFI/CLOVER/themes
f=EFI/CLOVER/ThinkPad 
test -e $f && mv $f EFI/CLOVER/themes
f=EFI/CLOVER/BGM
test -e $f && mv $f EFI/CLOVER/themes

test $mounted0 -eq 0 && espmount.bash -u $esp0
