#!/bin/bash

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

tool_dir=/usr/local/bin

if [[ ! -e ${tool_dir} ]];
then
    printf "%s\n" "Need to make directory ${tool_dir}"
    sudo mkdir -p ${tool_dir}/
fi

printf "%s\n" "Installing tools in $tool_dir"
for f in root${tool_dir}/*; 
do
    t=${f##*/}
    printf "%s\n" "Checking for $t"
    if [[ ! -e ${tool_dir}/${t} ]];
    then
        printf "%s\n" "Installing ${t} in ${tool_dir}/"
        sudo cp -a "$f" ${tool_dir}/
    fi
done

