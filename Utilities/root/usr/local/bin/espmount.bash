#!/bin/bash
if [[ "$1" == "" ]]; then
echo enter disk number
read n 
else
n=$1
fi;

while [[ $# > 1 ]]
do
key="$1"
case $key in
    -u|--umount)
    um=Yes
    n=$2
    shift 
    ;;
    *)
    n=$key
    ;;
esac
shift # past argument or value
done

bvs=$( system_profiler SPSoftwareDataType | grep Volume )
bv=${bvs#*:}
esp=$( diskutil list |grep "HFS${bv} "|awk '{print $6}'| sed -e's/s2//' -e's/disk//' )

if [[ $n == $esp ]]; then
	p=/Volumes/ESP
else
	p=/Volumes/ESP-$n
fi


d=/dev/disk${n}s1
if [[ $um == Yes ]]; then
	sudo umount -f $d >& /dev/null
	sleep 2
	test -e $p && rmdir $p
	sleep 1
else
	mount|grep $d|grep "umes/E" >& /dev/null
	if [[ $? != 0 ]]; then
	test -e $p || sudo mkdir $p
	sudo mount -t msdos -o noowners,noasync,sync $d $p
	if [[ $? != 0 ]]
	then
	sudo rmdir $p
	exit 1
	else
	echo $p
	fi
	exit 0
	else
	echo $p
	exit 1
	fi
fi

