#!/bin/bash

PATH=$PATH:/usr/local/bin

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

espmount=$( which espmount.bash )
if [[ "x${espmount}" == "x" ]];
then 
    echo run install_tools.command to install espmount.bash in /usr/local/bin
    exit 1
fi

#mount esp
espmount.bash 0

if [ ! -d /Volumes/ESP ]; 
then
  echo please mount your OSX EFI partition into /Volumes/ESP
  exit 1
fi

#compile 
iasl -ve *.dsl

#find product name
s=$( ioreg -c FakeSMCKeyStore | grep product-name | sed -e's/"//g' ) #"product-name" = "41786UU"
productname=${s#* = }

if [[ -e /Volumes/ESP/EFI/CLOVER/OEM/$productname ]] ;
then
rm /Volumes/ESP/EFI/CLOVER/OEM/$productname/ACPI/patched/*
cp SS* DS* /Volumes/ESP/EFI/CLOVER/OEM/$productname/ACPI/patched/
else
rm /Volumes/ESP/EFI/CLOVER/ACPI/patched/*
cp SS* DS* /Volumes/ESP/EFI/CLOVER/ACPI/patched/
fi
