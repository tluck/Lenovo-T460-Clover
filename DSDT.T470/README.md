These Are my notes on getting my Lenovo T470 [I5-6300u / HD520 /
1920x1080] working perfectly with TLUCK's T460 git repo.

This was all done with High Sierra 10.13.3 and update to 10.13.6, then
update to 10.14.0, 10.14.1 and 10.14.2

I build my whole system on a 64GB Transcend Jetflash 3.1 USB thumb
drive. Stability seems very good, so I moved my system to my SSD.

NOTE: as of Mojave (10.14.x) APFS is required, and the install
converts the boot filesystem to APFS. This has no implications for my
boot SSD, all works great. However, I am unable to put a full Mojave
installation on a USB thumb drive. I am not talking about a Mojave
install thumb drive, that is fine; I just cannot do a full install to
a thumb drive, it locks up at the white Apple, and does not boot. I
will continue to work on this as I like to keep a full up-to-date
system on a thumb drive for experimentation.

Many thanks to TLUCK for his original git repository of T460
configuration files [https://github.com/tluck/Lenovo-T460-Clover].

Read his instructions carefully:
  https://www.insanelymac.com/forum/topic/315451-guide-lenovo-t460-macos-with-clover/

I followed them directly, and got an install and working system. I
then tweaked my DSDT and SSDT addons to match my particular hardware.

Also Many Thanks to RehabMan on tonymac. His deep knowledge, and rapid
answers to queries is much appreciated.


All the differences are included in the DSDT470 directory. 

1. I initially used all the ktext's included in TLUCK's repo. Since my
   first install, WhateverGreen has been developed, and now takes care
   of the  Intel GPU and the  backlight injector. I have  been able to
   more to a full set of kext's  from the original authors, and do not
   rely on any kext in the T460 repo.

2. The DSDT patches I used are in patch-files. On my T470 the
   namespace is _SB.PCI0.LPCB and not _SB.PCI0.LPC like in the
   original repo. All my patches have been reworked to this differing
   namespace.

   My DSDT patches are:
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

   Note: the 2_battery_Lenovo-X220.txt has a few changes from the vanilla
   patch in RehabMan's repo. I adding in a small part of the original patch
   from TLUCK to enable fan reporting.

   The DDST battery patch in combination with the SSDT-BATC patch from
   RehabMan's repo gave me a great battery indicator that is an
   aggregate of the two batteries in my T470.

3. SSDT patches are a combination of some of TLUCK's patches, some
   custom patches, and some from RehabMan's laptop repository.

   Note: I am not using the SSTD-PS2K patch that TLUCK includes. My
   T470 trackpad works much better without it, just using the standard
   VoodooController kext.

   My add on SSDT patches are:

      SSDT-LPC.dsl              -- (REHABMAN) LPC device initialization, CPU power states
      SSDT-PNLF.dsl             -- (REHABMAN) Backlight control
      SSDT-XOSI.dsl             -- (REHABMAN) Simulate Windows 2009 for XHCI USB
      SSDT-HDEF-T460.dsl        -- (TLUCK) Audio controller parameters
      SSDT-XCPM-T470.dsl        -- (REHABMAN) CPU power management, changed CPU0 to PR00 
      SSDT-HACK-T470.dsl        -- (T470 custom) Shutdown/Sleep -- blink LED (sleep)
      SSDT-BATC-T470.dsl        -- (T470 custom) Aggregate BAT0 and BAT1 into BATC for display
      SSDT-XHC-T470.dsl         -- (T470 custom) Custom list of USB2/USB3 ports

4. kernel extensions:

  Consolidate and Updated kext's in /Library/Extensions:

  All kext are from the kext's author, and not taken from TLUCK's repository.

    Version				Extension		Plugins
    1.3.1				Lilu
    1.2.6				WhateverGreen
    1.3.4				AppleALC
    1.90.1				AppleSmartBatteryManager
    1.9.2				VoodoPS2Controller
    2.2.10				BcrmFirmwareRepo
    2.2.10				BrcmPatchRAM2
    6.26-357-gceb835ea.1800					FakeSMC	APCISensors
    6.26-357-gceb835ea.1800			 		CPUSensors
    6.26-357-gceb835ea.1800					GPUSensors
    6.26-357-gceb835ea.1800					LPCSensors
    6.26-357-gceb835ea.1800					SMMSensors
    1.3.13				FakePCIID
    1.3.13				FakePCIID_Broadcom_WiFI
    0.6.5				USBInjectAll
    2.4.1d1				IntelMausEthernet
