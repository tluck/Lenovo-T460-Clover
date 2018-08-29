#!/usr/bin/env bash
# shmilee's script - modified by tluck for T460

PATH=$PATH:/usr/local/bin
patch_dir=${1=temp_patch_results}

#askyes(){
#    echo "$1 ${@:2} [y/n]"
#    read ANSW
#    if [ x$ANSW == xy -o x$ANSW == xY ]; then
#        return 0
#    else
#        echo "$1 SKIP."
#        return 1
#    fi
#}

# find iasl 5
#IASL=$(find ~/Applications/Hackintosh/MaciASL.app/Contents -name iasl5)
#IASL=/usr/local/bin/iasl
IASL=$(which iasl)
if [ x$IASL == x ]; then
    echo "iasl not found. Please install iasl to /usr/local/bin."
    exit 1
else
    echo "Use IASL in $IASL"
    $IASL -v
fi

# find patchmatic
if which patchmatic; then
    PatchMatic=$(which patchmatic)
elif [ -f ./patchmatic ]; then
    PatchMatic=./patchmatic
else
    echo "patchmatic not found."
    echo "Please install it here or to your \$PATH."
    exit 2
fi
echo "Use patchmatic in $PatchMatic"

#find ACPI tables
if [ -d ./ACPI-Tables ]; then
    echo "Use ACPI tables in ./ACPI-Tables"
else
    echo "ACPI tables not found."
    echo "Please put your ACPI tables in ./ACPI-Tables"
    exit 3
fi

# find patch files
if [ -d ./patch-files ]; then
    echo "Use Patches in ./patch-files"
else
    echo "Patch files not found."
    echo "Please put your patch files in ./patch-files"
    exit 4
fi

# BEGIN
echo
echo "==> Start."

#if [ -d ./${patch_dir} ]; then
#    echo " -> backup ./${patch_dir}"
#    mv -v ./${patch_dir} ./$(basename $(mktemp -u -t ${patch_dir}-$(date +%H%M%S)))
#fi
#
#if askyes "==>" "Disassemble ACPI tables."; then
#    cd ./ACPI-Tables
#    if ! $IASL -e SSDT* -dl DSDT.aml; then
#        echo "==> Failed to disassemble ACPI tables."
#        echo "==> Check the command: "
#        echo "$IASL -e SSDT* -dl DSDT"
#        exit 5
#    fi
#    cd ..
#    mkdir ${patch_dir}
#    mv -v ./ACPI-Tables/DSDT.dsl ./${patch_dir}/origin_DSDT.dsl
#fi

#if askyes "==>" "Patch the files."; then
    if [ ! -f ./${patch_dir}/origin_DSDT.dsl ]; then
        echo "==> lost ./${patch_dir}/origin_DSDT.dsl"
        exit 6
    fi
    cp -v ./${patch_dir}/{origin_DSDT.dsl,patching_DSDT.dsl}
    for prefix in {1,2,3,4,5}_ ; do
        N=$(find ./patch-files -name "${prefix}*" |wc -l |awk '{print $1}')
        if [[ x$N == x0 ]];then
            continue
        fi
	echo patch $prefix
   #     if askyes " ->" "patch ./patch-files/${prefix}* ..."; then
            find ./patch-files -name "${prefix}*" -exec \
                $PatchMatic ./${patch_dir}/patching_DSDT.dsl {} \;
            cp ./${patch_dir}/{patching_DSDT.dsl,patched_${prefix}DSDT.dsl}
   #     fi
    done
    rm ./${patch_dir}/patching_DSDT.dsl
    echo "==> Done."
#fi
last_dsdt=$( ls -1 ${patch_dir} |tail -1)
cp ./${patch_dir}/$last_dsdt DSDT.dsl
$IASL -ve DSDT.dsl

#if askyes "==>" "Compile ACPI Tables."; then
#    for prefix in origin patched_{1,2,3,4,5} ; do
#        if [ ! -f ./${patch_dir}/${prefix}_DSDT.dsl ]; then
#            echo " -> ./${patch_dir}/${prefix}_DSDT.dsl not found. SKIP."
#            continue
#        fi
#        if askyes " ->" "compile ./${patch_dir}/${prefix}_DSDT.dsl ..."; then
#            $IASL ./${patch_dir}/${prefix}_DSDT.dsl
#            mv -v ./${patch_dir}/DSDT.aml ./${patch_dir}/${prefix}_DSDT.aml
#        fi
#    done
#    echo "==> Done."
#fi

exit 0
