// SSDT for T460 Keyboard Map & Configuration.

DefinitionBlock("", "SSDT", 2, "T460", "KBRD", 0)
{
    External (\_SB.PCI0, DeviceObj)
    External (\_SB.PCI0.LPC, DeviceObj)
    External (\_SB.PCI0.LPC.EC, DeviceObj)
    External (\_SB.PCI0.LPC.KBD, DeviceObj)
    External (\_SB.PCI0.LPC.EC.XQ14, MethodObj)    // 0 Arguments
    External (\_SB.PCI0.LPC.EC.XQ15, MethodObj)    // 0 Arguments

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // F6 Brightness Up
        {
        	If (_OSI ("Darwin"))
        	{
            	Notify (\_SB.PCI0.LPC.KBD, 0x0406)
        	}
        	Else
        	{
        		\_SB.PCI0.LPC.EC.XQ14 ()
        	}
        }

        Method (_Q15, 0, NotSerialized)  // F5 Brightness Down
        {
        	If (_OSI ("Darwin"))
        	{
            	Notify (\_SB.PCI0.LPC.KBD, 0x0405)
        	}
        	Else
        	{
        		\_SB.PCI0.LPC.EC.XQ15 ()
        	}
        }
    }

    Scope (\_SB.PCI0.LPC.KBD)
    {
        If (_OSI ("Darwin"))
        {
            // Lenovo ThinkPad T460 Configuration Load
            // Select specific items in VoodooPS2Controller
            Method(_DSM, 4, NotSerialized)
            {
                If (!Arg2)
                {
                    Return (Buffer ()
                    {
                        0x03
                    })
                }

                Return (Package ()
                {
                    "RM,oem-id", "LENOVO",
                    "RM,oem-table-id", "T460",
                })
            }

            // Overrides for settings in the Info.plist files
            Name(RMCF, Package()
            {
                "Keyboard", Package ()
                {
                    "ActionSwipeLeft",  "37 d, 21 d, 21 u, 37 u",
                    "ActionSwipeRight", "37 d, 1e d, 1e u, 37 u",
                    "SleepPressTime",   "1500",
                    "Swap command and option", ">n",
                    "Custom PS2 Map", Package()
                    {
                        Package() { },
                        "e037=64", // PrtSc=F13
                    },
                },
            })
        }
    }
}
