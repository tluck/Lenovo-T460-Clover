/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-3-ProjSsdt.aml, Tue Dec  4 10:22:22 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000174F (5967)
 *     Revision         0x02
 *     Checksum         0x7E
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "ProjSsdt"
 *     OEM Revision     0x00000010 (16)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "ProjSsdt", 0x00000010)
{
    External (_SB_.PCI0.LPCB.EC__.DOCD, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.RP09.HRUS, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT3, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT4, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.SAT0.PRT5, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.MEMB, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS06, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS07, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS08, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS09, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.HS10, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS01, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS02, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS03, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS04, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS05, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.XHC_.RHUB.SS06, DeviceObj)    // (from opcode)
    External (ADBG, MethodObj)    // 1 Arguments (from opcode)
    External (DPP0, UnknownObj)    // (from opcode)
    External (DPP1, UnknownObj)    // (from opcode)
    External (DPP2, UnknownObj)    // (from opcode)
    External (DPP3, UnknownObj)    // (from opcode)
    External (DPP4, UnknownObj)    // (from opcode)
    External (DVS0, UnknownObj)    // (from opcode)
    External (DVS1, UnknownObj)    // (from opcode)
    External (DVS2, UnknownObj)    // (from opcode)
    External (DVS3, UnknownObj)    // (from opcode)
    External (TBTS, UnknownObj)    // (from opcode)
    External (WIN8, UnknownObj)    // (from opcode)

    Scope (\)
    {
        Name (UPC0, Package (0x04)
        {
            0xFF, 
            0x00, 
            0x00, 
            0x00
        })
        Name (PLD0, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x99, 0x12, 0x80, 0x00, 0x03, 0x00, 0x00, 0x00 
        })
        Name (UPC1, Package (0x04)
        {
            0x00, 
            0xFF, 
            0x00, 
            0x00
        })
        Name (PLD1, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        })
        Name (UPC2, Package (0x04)
        {
            0xFF, 
            0x00, 
            0x00, 
            0x00
        })
        Name (PLD2, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x99, 0x10, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00 
        })
        Name (UPC3, Package (0x04)
        {
            0xFF, 
            0x00, 
            0x00, 
            0x00
        })
        Name (PLD3, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x91, 0x10, 0x80, 0x01, 0x03, 0x00, 0x00, 0x00 
        })
        Name (PLDC, Buffer (0x14)
        {
            /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0010 */  0xDD, 0x00, 0x95, 0x00                         
        })
        Name (UPCI, Package (0x04)
        {
            0x00, 
            0xFF, 
            0x00, 
            0x00
        })
        Name (PLDI, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
        })
        Name (UPCT, Package (0x04)
        {
            0xFF, 
            0x09, 
            0x00, 
            0x00
        })
        Name (PLDT, Buffer (0x10)
        {
            /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
            /* 0008 */  0x99, 0x10, 0x00, 0x02, 0x03, 0x00, 0x00, 0x00 
        })
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            If (LEqual (\_SB.PCI0.LPCB.EC.DOCD, 0x01))
            {
                CopyObject (\UPCI, UPCP)
            }
            Else
            {
                CopyObject (\UPC3, UPCP)
            }

            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            If (LEqual (\_SB.PCI0.LPCB.EC.DOCD, 0x01))
            {
                Store (\PLDI, PLDP)
            }
            Else
            {
                Store (\PLD3, PLDP)
            }

            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPC0, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLD0, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPC2, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLD2, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05)
    {
        Device (RCAM)
        {
            Name (_ADR, 0x05)  // _ADR: Address
        }

        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPC1, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLD1, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS07)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08)
    {
        Device (WCAM)
        {
            Name (_ADR, 0x08)  // _ADR: Address
        }

        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS09)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS10)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS01)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            If (LEqual (\_SB.PCI0.LPCB.EC.DOCD, 0x01))
            {
                CopyObject (\UPCI, UPCP)
            }
            Else
            {
                CopyObject (\UPC3, UPCP)
            }

            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            If (LEqual (\_SB.PCI0.LPCB.EC.DOCD, 0x01))
            {
                Store (\PLDI, PLDP)
            }
            Else
            {
                Store (\PLD3, PLDP)
            }

            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS02)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPC0, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLD0, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS03)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS04)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPC2, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLD2, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS05)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.SS06)
    {
        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Name (UPCP, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
            CopyObject (\UPCI, UPCP)
            Return (UPCP)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Name (PLDP, Buffer (0x10) {})
            Store (\PLDI, PLDP)
            Return (PLDP)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS08.WCAM)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (\WIN8)
            {
                Return (0x0F)
            }
            Else
            {
                Return (0x00)
            }
        }

        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (\UPCI)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (\PLDC)
        }
    }

    Scope (\_SB.PCI0.XHC.RHUB.HS05.RCAM)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (\WIN8)
            {
                Return (0x0F)
            }
            Else
            {
                Return (0x00)
            }
        }

        Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
        {
            Return (\UPCI)
        }

        Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
        {
            Return (\PLDC)
        }
    }

    Scope (\_SB.PCI0.XHC)
    {
        Name (UPWR, 0x00)
        Name (USPP, 0x00)
    }

    Scope (\_SB.PCI0.XHC.RHUB)
    {
        Method (PS0X, 0, Serialized)
        {
            Store (0x00, \_SB.PCI0.XHC.USPP)
        }

        Method (PS2X, 0, Serialized)
        {
            OperationRegion (XHCM, SystemMemory, And (ToInteger (MEMB), 0xFFFFFFFFFFFF0000), 0x0600)
            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                XHCV,   16, 
                Offset (0x480), 
                HP01,   1, 
                Offset (0x490), 
                HP02,   1, 
                Offset (0x530), 
                SP00,   1, 
                Offset (0x540), 
                SP01,   1
            }

            If (LEqual (XHCV, 0xFFFF))
            {
                Return (Zero)
            }

            If (LAnd (LEqual (HP01, 0x00), LEqual (SP00, 0x00)))
            {
                Or (\_SB.PCI0.XHC.USPP, 0x02, \_SB.PCI0.XHC.USPP)
            }

            If (LAnd (LEqual (HP02, 0x00), LEqual (SP01, 0x00)))
            {
                Or (\_SB.PCI0.XHC.USPP, 0x04, \_SB.PCI0.XHC.USPP)
            }
        }

        Method (PS3X, 0, Serialized)
        {
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Scope (PRT0)
        {
            Name (DIP0, 0x00)
            Name (FDEV, Zero)
            Name (FDRP, Zero)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                ADBG ("PRT0: _SDD")
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP0, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                ADBG ("PRT0: _GTF")
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS0, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Scope (PRT1)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                ADBG ("PRT1: _SDD")
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP1, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                ADBG ("PRT1: _GTF")
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS1, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Scope (PRT2)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                ADBG ("PRT2: _SDD")
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP2, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                ADBG ("PRT2: _GTF")
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS2, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Scope (PRT3)
        {
            Name (DIP0, 0x00)
            Name (FDEV, 0x00)
            Name (FDRP, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                ADBG ("PRT3: _SDD")
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP3, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }

                    CreateByteField (Arg0, 0x9D, BFDS)
                    ToInteger (BFDS, FDEV)
                    CreateByteField (Arg0, 0x9A, BFRP)
                    ToInteger (BFRP, FDRP)
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                ADBG ("PRT3: _GTF")
                If (DIP0)
                {
                    If (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                    {
                        Return (HQTF)
                    }
                    Else
                    {
                        Return (HPTF)
                    }
                }
                ElseIf (LAnd (LAnd (LEqual (DVS3, 0x01), LEqual (And (FDEV, 0x01), 0x01)), LEqual (And (FDRP, 0x80), 0x80)))
                {
                    Return (HETF)
                }
                Else
                {
                    Return (HDTF)
                }
            }
        }

        Scope (PRT4)
        {
            Name (DIP0, 0x00)
            Name (HDTF, Buffer (0x0E)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5             
            })
            Name (HETF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x09,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (ERTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HPTF, Buffer (0x15)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            Name (HQTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x09, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (HXTF, Buffer (0x1C)
            {
                /* 0000 */  0x02, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xF5, 0x5F, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF, 0x10, 0x03, 0x00,
                /* 0018 */  0x00, 0x00, 0xA0, 0xEF                         
            })
            Name (DDTF, Buffer (0x0E)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3             
            })
            CreateByteField (DDTF, 0x01, DTAT)
            CreateByteField (DDTF, 0x08, DTFT)
            Name (DGTF, Buffer (0x15)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0xA0, 0xE3, 0x10, 0x03,
                /* 0010 */  0x00, 0x00, 0x00, 0xA0, 0xEF                   
            })
            CreateByteField (DGTF, 0x01, GTAT)
            CreateByteField (DGTF, 0x08, GTFT)
            Method (_SDD, 1, NotSerialized)  // _SDD: Set Device Data
            {
                ADBG ("PRT4: _SDD")
                Store (0x00, DIP0)
                If (LEqual (SizeOf (Arg0), 0x0200))
                {
                    CreateWordField (Arg0, 0x9C, M078)
                    If (LAnd (\DPP4, And (M078, 0x08)))
                    {
                        Store (0x01, DIP0)
                    }
                }
            }

            Method (_GTF, 0, NotSerialized)  // _GTF: Get Task File
            {
                ADBG ("PRT4: _GTF")
                If (DIP0)
                {
                    Return (HPTF)
                }

                Return (HDTF)
            }
        }
    }

    Scope (\_SB.PCI0.SAT0)
    {
        Scope (PRT0)
        {
            Name (PORT, 0x00)
            Name (PBAR, 0x0118)
            Name (PWRG, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x00
            })
        }

        Scope (PRT1)
        {
            Name (PORT, 0x01)
            Name (PBAR, 0x0198)
            Name (PWRG, Package (0x04)
            {
                0x02, 
                0x00, 
                0x00, 
                0x00
            })
        }

        Scope (PRT2)
        {
            Name (PORT, 0x02)
            Name (PBAR, 0x0218)
            Name (PWRG, Package (0x04)
            {
                0x00, 
                0x00, 
                0x00, 
                0x01
            })
        }
    }
}

