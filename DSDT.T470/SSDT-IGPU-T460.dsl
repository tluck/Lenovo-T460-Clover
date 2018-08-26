// IGPU and IMEI
DefinitionBlock ("", "SSDT", 2, "T460", "IGPU", 0x00000000)
{
    External (\_SB.PCI0.IGPU, DeviceObj)    // Warning: Unknown object
    External (\_SB.PCI0.PCIC, MethodObj)    // Warning: Unknown object
    External (\_SB.PCI0.PCID, MethodObj)    // Warning: Unknown object

    Scope (\_SB.PCI0.IGPU)
    {
        OperationRegion (IGD4, PCI_Config, Zero, 0x14)
        Field (IGD4, AnyAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            GDID,   16, 
            Offset (0x10), 
            BAR1,   32
        }

        Name (GIDL, Package ()
        {
            0x1912, 
            Zero, 
            Package (0x08)
            {
                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 520"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                }, 
                 
                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                },

                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x16, 0x19                         
                }
            },
            0x1916, 
            Zero, 
            Package (0x08)
            {
                "model", 
                Buffer (0x16)
                {
                    "Intel HD Graphics 520"
                }, 

                "hda-gfx", 
                Buffer (0x0A)
                {
                    "onboard-1"
                },
                 
                "AAPL,GfxYTile", 
                Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x00                         
                },

                "AAPL,ig-platform-id", 
                Buffer (0x04)
                {
                     0x00, 0x00, 0x16, 0x19                         
                }
            }
        })
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (!Arg2)
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Local0 = Match (GIDL, MEQ, GDID, MTR, Zero, Zero)
            If (Ones != Local0)
            {
                Local0 = Match (GIDL, MEQ, Zero, MTR, Zero, (Local0 + One))
                Return (DerefOf (GIDL [(Local0 + One)]))
            }

            Return (Package (0x00) {})
        }
    }

}

