This is just running notes for myself as to major changes of configuration
on my T470 --

* Initial release. (2018-09-18)
  Followed TLUCK's Git Repo and instructions

* Updates in preparation for Mojave upgrade. (2018-10-04)

  move to WhateverGreen, 
   remove SSDT-IGPU-T460.asl from ACPI/patched/

   update config.plist
     disable CState/PState
     <key>Properties</key>
       <dict>
            <key>PciRoot(0x0)/Pci(0x2,0x0)</key>
            <dict>
               <key>AAPL,ig-platform-id</key>
               <data>
                  AAAWGQ==
               </data>
               <key>device-id</key>
               <data>
                  FhkAAA==
               </data>
               <key>enable-hdmi20</key>
               <data>
                  AQAAAA==
               </data>
               <key>framebuffer-fbmem</key>
               <data>
                  AACQAA==
               </data>
               <key>framebuffer-patch-enable</key>
               <data>
                  AQAAAA==
               </data>
               <key>framebuffer-stolenmem</key>
               <data>
                  AAAwAQ==
               </data>
               <key>framebuffer-unifiedmem</key>
               <data>
                  AAAAgA==
               </data>
            </dict>
         </dict>

* Updated to Mojave 10.14.1 with no issues. (2018-11-10)
* Updated to Mojave 10.14.2 with no issues. (2018-12-01)


* Begin Simplification/Consolidation of KEXT's / Config (2018-12-20)

   Bumped WhateverGreen to 1.2.6 -- Use built in Backlight Injector --
   remove AppleBacklightInjector.kext from /Library/Extensions
   @@ -176,7 +176,7 @@
       <key>Boot</key>
       <dict>
          <key>Arguments</key>
   -         <string>kext-dev-mode=1</string>
   +         <string>kext-dev-mode=1 bpr_probedelay=100 bpr_initialdelay=300 bpr_postresetdelay=300</string>
             <key>DefaultVolume</key>
             <string>osX</string>
             <key>IgnoreNVRAMBoot</key>
   @@ -243,6 +243,8 @@
                <data>
                   AAAAgA==
                </data>
   +	       <key>enable-cfl-backlight-fix</key>
   +	       <true/>
             </dict>
          </dict>
          <key>USB</key>

   NOTE: the bpr_ boot flags that makes the bluetooh drivers correctly
   functions after waking from sleep.

   NOTE: in order to move to VoodooController 1.9.x, needed to comment out the
   unload/load of the kext from the /etc/rc.sleep and /etc/rc.wake.

* Updated to 10.14.4

	minor tuning to SSDT-XHC-T470.dsl

	went back to ALC audio 29
	-            <integer>3</integer>
	+            <integer>29</integer>

	Using my forked BCRM from rehabman, with code comparision to TLUCK's repo
	https://github.com/ESProcessing/OS-X-BrcmPatchRAM
	-         <string>kext-dev-mode=1 bpr_probedelay=100 bpr_initialdelay=300 bpr_postresetdelay=300</string>
	+         <string>kext-dev-mode=1 bpr_upgradedelay=200 bpr_postresetdelay=400</string>

* Updated to 10.14.6

	minor tuning to SSDT-PNLF.dsl
   	   renamed IGPU tp GFX0, so rename in config.plist is no longer
	   required

	config.plist -- added to WEG properties to enable HDMI
	audio olug and play

        +                    <key>framebuffer-pipecount</key>
	+                    <data>AwAAAA==</data>
	+                    <key>framebuffer-portcount</key>
	+                    <data>AwAAAA==</data>
	+                    <key>framebuffer-con1-enable</key>
	+                    <data>AQAAAA==</data>
	+                    <key>framebuffer-con1-type</key>
	+                    <data>AAgAAA==</data>
	+                    <key>framebuffer-con2-enable</key>
	+                    <data>AQAAAA==</data>
	+                    <key>framebuffer-con2-type</key>
	+                    <data>AAgAAA==</data>

	config.plist -- removed rename of DDST GFX0, use GFX0 in SSDT-PNLF
