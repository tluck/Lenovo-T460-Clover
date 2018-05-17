/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of iASLZwNTNN.aml, Sun May 13 18:27:01 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000218 (536)
 *     Revision         0x02
 *     Checksum         0x4B
 *     OEM ID           "T460"
 *     OEM Table ID     "ARPT"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "T460", "ARPT", 0x00000000)
{
    External (_SB_.PCI0.RP01.ARPT, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (GPRW, MethodObj)    // 2 Arguments (from opcode)

    Device (\_SB.PCI0.RP01.ARPT)
    {
        Name (_ADR, Zero)  // _ADR: Address
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            Store (Package (0x10)
                {
                    "built-in", 
                    Buffer (One)
                    {
                         0x00                                           
                    }, 

                    "device-id", 
                    Buffer (0x04)
                    {
                         0xBA, 0x43, 0x00, 0x00                         
                    }, 

                    "subsystem-id", 
                    Buffer (0x04)
                    {
                         0x33, 0x01, 0x00, 0x00                         
                    }, 

                    "AAPL,slot-name", 
                    Buffer (0x07)
                    {
                        "Slot-2"
                    }, 

                    "device_type", 
                    Buffer (0x13)
                    {
                        "AirPort Controller"
                    }, 

                    "model", 
                    Buffer (0x4D)
                    {
                        "OSX WIFI Broadcom BCM943602BAED 802.11 a/b/g/n/ac + Bluetooth 4.0 Controller"
                    }, 

                    "compatible", 
                    Buffer (0x0D)
                    {
                        "pci14e4,43ba"
                    }, 

                    "name", 
                    Buffer (0x10)
                    {
                        "AirPort Extreme"
                    }
                }, Local0)
            DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
            Return (Local0)
        }
    }

    Name (_SB.PCI0.RP01.PXSX._STA, Zero)  // _STA: Status
    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }
}

