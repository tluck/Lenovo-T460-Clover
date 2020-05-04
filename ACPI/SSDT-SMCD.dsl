// Lenovo ThinkPad T460 Temperature and Fan reporting.
//
// OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
// 1. declaration accessed:
// HSPD,   16 (Accessed on custom SMCD Device for fan readings)

DefinitionBlock ("", "SSDT", 2, "T460", "SMCD", 0)
{
    External (\_SB.PCI0.LPC.EC, DeviceObj)
    External (\_SB.PCI0.LPC.EC.HFSP, FieldUnitObj)
    External (\_SB.PCI0.LPC.EC.TMP0, FieldUnitObj)

    Scope (\_SB.PCI0.LPC.EC)
    {
        OperationRegion (FRAM, EmbeddedControl, Zero, 0x0100)
        Field (FRAM, ByteAcc, NoLock, Preserve)
        {
            Offset (0x84),  // Field of SMCD FAN Device
            SPD0,   8,
            SPD1,   8
        }

        Device (SMCD)
        {
            Name (_HID, "FAN00000")  // _HID: Hardware ID
            Name (TACH, Package (0x02)
            {
                "System Fan",
                "FAN0"
            })

            Method (FAN0, 0, NotSerialized)
            {
                Local0 = (\_SB.PCI0.LPC.EC.SPD1 << 0x08)
            	Local0 |= \_SB.PCI0.LPC.EC.SPD0
                Return (Local0)
            }

            Method (TCPU, 0, NotSerialized)
            {
                Local0 = \_SB.PCI0.LPC.EC.TMP0 /* External reference */
                If ((Local0 >= 0x55))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x07
                }
                ElseIf ((Local0 >= 0x50))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x06
                }
                ElseIf ((Local0 >= 0x4B))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x05
                }
                ElseIf ((Local0 >= 0x46))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x04
                }
                ElseIf ((Local0 >= 0x41))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x03
                }
                ElseIf ((Local0 >= 0x3C))
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x02
                }
                ElseIf ((Local0 >= One))
                {
                    \_SB.PCI0.LPC.EC.HFSP = One
                }

                Return (Local0)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }   // END of SMCD Device
    }   // END of Scope \_SB.PCI0.LPC.EC
}

