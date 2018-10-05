* Initial release. (2018-09-18)
   See README.me


* Updates in preparation for Mojave upgrade. (2018-10-04)

   1. updated Clover to 4760 per TLUCKS repo

      sjk$ ls -1s /Volumes/ESP/EFI/CLOVER/drivers64UEFI/*.efi
        34 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/AppleImageCodec-64.efi
        23 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/AppleImageLoader-64.efi
        11 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/AppleKeyAggregator-64.efi
         5 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/AppleUITheme-64.efi
        56 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/AptioMemoryFix-64.efi
        12 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/DataHubDxe-64.efi
        44 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/EmuVariableUefi-64.efi
        43 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/FSInject-64.efi
        15 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/FirmwareVolume-64.efi
         9 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/SMCHelper-64.efi
        40 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/VBoxExt4-64.efi
        58 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/VBoxHfs-64.efi
      1185 /Volumes/ESP/EFI/CLOVER/drivers64UEFI/apfs.efi

   2. updated kext's in /Library/Extensions

      FakeSMC.kext                            Rehabman   - 6.26-357-gceb835ea.1800
      IntelMausiEthernet.kext                 Rehabman   - 2.4.0d0
      USBInjectAll.kext                       Rehabman   - 0.6.5
      AppleBacklightInjector.kext             RehabMan   - 0.9.2 (from TLUCK repo)
      Lilu.kext                               as.vit9696 - 1.2.7
      AppleALC.kext                           as.vit9696 - 1.3.2
      WhateverGreen.kext                      as.vit9696 - 1.2.3
      ACPIBatteryManager.kext                 Rehabman   - 1.90
      BrcmPatchRAM2.kext                      TLUCK      - 2.2.7b
      BrcmFirmwareRepo.kext                   TLUCK      - 2.2.7
      FakePCIID_Broadcom_WiFi.kext            Rehabman   - 1.3.13
      FakePCIID.kext                          Rehabman   - 1.3.13
      VoodooPS2Controller.kext                Rehabman   - 1.8.32 *

      * I tried the latest VoodoPS2Controller.kext -- It causes a KP on sleep. 


   3. remove SSDT-IGPU-T460.asl from ACPI/patched/


   4. update config.plist

      remove inject intel

      disable CState/PState

      add properties to config graphics per Whatevergreen:

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
