These Are my notes on getting my Lenovo T470 [I5-6300u / HD520 /
1920x1080] woring perfectly with TLUCK's T460 git repo.

This was all done with High Sierra 10.13.3 and update to 10.13.6

I build my whole system on a 64GB Transcend Jetflash 3.1 USB thumb
drive. Stability seems very good, so I am about to move my system to
my SSD, and my default linux system to a bootable USB for backup.

Many thanks to TLUCK for his original git repository of T460
configuration files [https://github.com/tluck/Lenovo-T460-Clover].

Read his instructions carefully:
  https://www.insanelymac.com/forum/topic/315451-guide-lenovo-t460-macos-with-clover/

I followed them directly, and got an install and working system. I
then tweaked my DSDT and SSDT addons to match my particular hardware.

Also Many Thanks to RehabMan on tonymac. His deep knowledge, and rapid
answers to queries is much appreciated.

All the differences are included in the DSDT470 directory. 

I used all the ktext's included in TLUCK's repo. Pay particular
attention to his instructions to build your own AppleBacklightInjector.

The DSDT/SSDT patches I used are in patch-files. On my T470 the namespace
is _SB.PCI0.LPCB and not _SB.PCI0.LPC like in the original repo. All
my patches have been reworked to this differing namespace.

My DSDT pathes are:
   1_fix_compile.txt
   1_led_blink.txt
   2_IGBE_PRW.txt
   2_battery_Lenovo-X220.txt
   2_system_H8DR.txt
   2_system_nvst.txt
   2_usb_prw_0x6d_xhc_skl.txt
   3_Fn_Keys.txt
   4_misc_Skylake-LPC.txt
   4_system_Mutex.txt

Note the 2_battery_Lenovo-X220.txt has a few changes from the vanilla
path in RehabMan's repo. I adding in a small part of the original patch
from TLUCK to enable fan reporting.

The DDST battery patch in combination with the SSDT-BATC patch from
RehabMan's repo gave me a great battery indicator that is an aggregate
of the two batteries in my T470.

I am not using the SSTD-PS2K patch that TLUCK includes. My T470 trackpad
works much better without it.

My add on SSDT patches are:

   SSDT-BATC-T470.dsl
   SSDT-CPU.dsl
   SSDT-HACK-T470.dsl
   SSDT-HDEF-T460.dsl
   SSDT-IGPU-T460.dsl
   SSDT-LPC-T470.dsl
   SSDT-PNLF-T460.dsl
   SSDT-SMBUS-T460.dsl
   SSDT-XHC-T470.dsl
   SSDT-XOSI.dsl

I have included is my config.plist and the added kexts in my
/Library/Extensions are:

drwxr-xr-x@ 3 root  wheel  102 Aug  9 17:08 AppleALC.kext
drwxr-xr-x@ 3 root  wheel  102 Aug  9 17:08 VoodooPS2Controller.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 13 06:54 Lilu.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 13 07:06 WhateverGreen.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 14 20:23 ACPIBatteryManager.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 14 20:23 FakeSMC.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 14 20:23 IntelMausiEthernet.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 14 20:23 USBInjectAll.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 14 20:23 X86PlatformPluginInjector.kext
drwxr-xr-x  3 root  wheel  102 Aug 16 14:32 AppleBacklightInjector.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 29 15:51 FakePCIID_Broadcom_WiFi.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 29 15:51 FakePCIID.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 29 15:51 BrcmPatchRAM2.kext
drwxr-xr-x@ 3 root  wheel  102 Aug 29 15:51 BrcmFirmwareRepo.kext
