#!/bin/bash 

dir=${0%/*}
if [[ "$dir" == "" ]]; then dir="."; fi
cd "$dir"

echo Installing Patching nvram save method via LogoutHook

# 
fixed=root/etc/rc.shutdown.d/80.save_nvram_plist.fixed
patch=/etc/rc.shutdown.d/80.save_nvram_plist.local
if [[ -e $fixed ]];
then
    echo Installing "$patch"
    sudo mkdir /etc/rc.shutdown.d
    sudo cp -a "$fixed" "$patch"
fi

fixed=root/etc/rc.boot.d/20.mount_ESP.fixed
patch=/etc/rc.boot.d/20.mount_ESP.local
if [[ -e $fixed ]];
then
    echo Installing "$patch"
    sudo mkdir /etc/rc.boot.d
    sudo cp -a "$fixed" "$patch"
fi

fixed="root/Library/Application Support/Clover/CloverDaemon-stopservice"
patch="/Library/Application Support/Clover/CloverDaemon-stopservice"
patchd="/Library/Application Support/Clover/"
if [[ -e "$fixed" ]];
then
    echo Installing CloverDaemon Scripts in $patched
    sudo mkdir "$patchd"
    sudo cp -a "root/$patchd" "$patchd"

    echo Setting LogoutHook to $patch - runs nvram save on Logout or Shutdown
    sudo defaults write com.apple.loginwindow LogoutHook "${patch}"
fi

echo "Installing LaunchDaemon for Startup Scripts"
sudo cp -a root/etc/rc.clover.lib /etc
sudo cp -a root/Library/LaunchDaemons/com.projectosx.clover.daemon.plist /Library/LaunchDaemons


