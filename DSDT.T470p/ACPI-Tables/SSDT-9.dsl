/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-9.aml, Sat May 12 16:24:26 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000008C6 (2246)
 *     Revision         0x02
 *     Checksum         0x99
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "SgPch"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "SgPch", 0x00001000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.VPON, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.VRST, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._ADR, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP.GC6I, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP.GC6O, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP.TGPC, UnknownObj)    // (from opcode)
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (D8XH, MethodObj)    // 2 Arguments (from opcode)
    External (DLHR, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (EECP, UnknownObj)    // (from opcode)
    External (GBAS, UnknownObj)    // (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (NVHA, UnknownObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (SGGP, UnknownObj)    // (from opcode)
    External (SGMD, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0.PEG2)
    {
        OperationRegion (RPCX, SystemMemory, Add (\XBAS, 0xA000), 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            PCMR,   8, 
            Offset (0x19), 
            PRBN,   8, 
            Offset (0x84), 
            PMST,   2, 
            Offset (0xAA), 
            CEDR,   1, 
            Offset (0xAC), 
                ,   4, 
            CMLW,   6, 
            Offset (0xB0), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            RTLK,   1, 
            Offset (0xC9), 
                ,   2, 
            LREN,   1, 
            Offset (0x11A), 
                ,   1, 
            VCNP,   1, 
            Offset (0x214), 
            Offset (0x216), 
            LNKS,   4, 
            Offset (0x504), 
            Offset (0x506), 
            PCFG,   2, 
            Offset (0x508), 
            TREN,   1, 
            Offset (0xC20), 
                ,   4, 
            AFES,   2, 
            Offset (0xC38), 
                ,   3, 
            PBSQ,   1, 
            Offset (0xD0C), 
            Offset (0xD0E), 
                ,   4, 
            LREV,   1
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG02
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG02
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG02
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            Store ("PEG2 -_PS0 ", Debug)
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            Store ("PEG2 -_PS3 ", Debug)
        }

        Name (WKEN, Zero)
        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            ElseIf (LAnd (Arg0, Arg2))
            {
                Store (One, WKEN)
            }
            Else
            {
                Store (Zero, WKEN)
            }
        }

        Name (MSD3, Zero)
        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (LTRE, Zero)
        PowerResource (PG02, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (TDGC, One))
                {
                    D8XH (Zero, 0xE0)
                    If (LEqual (DGCX, 0x03))
                    {
                        Store (One, _STA)
                        \_SB.PCI0.PEG2.PEGP.GC6O ()
                    }
                    ElseIf (LEqual (DGCX, 0x04))
                    {
                        Store (One, _STA)
                        \_SB.PCI0.PEG2.PEGP.GC6O ()
                    }

                    Store (Zero, TDGC)
                    Store (Zero, DGCX)
                }
                Else
                {
                    D8XH (Zero, 0xE1)
                    If (LEqual (MSD3, 0x03))
                    {
                        Store (One, _STA)
                        \_SB.PCI0.PEG2.PEGP.HGON ()
                        Store (0x07, PCMR)
                        Store (Zero, PMST)
                        While (LEqual (\_SB.PCI0.PEG2.PEGP.SVID, 0xFFFFFFFF))
                        {
                            Sleep (One)
                        }

                        Store (0x505017AA, \_SB.PCI0.PEG2.PEGP.SSSV)
                        Store (Zero, \_SB.PCI0.PEG2.PEGP.MLTR)
                        Store (Zero, MSD3)
                    }
                }

                D8XH (Zero, 0xF0)
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (TDGC, One))
                {
                    D8XH (Zero, 0xE2)
                    CreateField (\_SB.PCI0.PEG2.PEGP.TGPC, Zero, 0x03, GUPC)
                    If (LEqual (ToInteger (GUPC), One))
                    {
                        \_SB.PCI0.PEG2.PEGP.GC6I ()
                        Store (Zero, _STA)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        \_SB.PCI0.PEG2.PEGP.GC6I ()
                        Store (Zero, _STA)
                    }
                }
                Else
                {
                    D8XH (Zero, 0xE3)
                    If (LEqual (MSD3, Zero))
                    {
                        \_SB.PCI0.PEG2.PEGP.HGOF ()
                        Sleep (0x32)
                        Store (Zero, _STA)
                        Store (0x03, MSD3)
                    }
                }

                D8XH (Zero, 0xF1)
            }
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            OperationRegion (ACAP, PCI_Config, \EECP, 0x14)
            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (CMDS, Zero)
        Name (ONOF, One)
        OperationRegion (PCIS, SystemMemory, Add (\XBAS, ShiftLeft (PRBN, 0x14)), 0x0500)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            SVID,   32, 
            CMDR,   8, 
            Offset (0x40), 
            SSSV,   32, 
            Offset (0x488), 
            Offset (0x48B), 
                ,   1, 
            MLTR,   1
        }

        OperationRegion (NVPC, SystemMemory, Add (\XBAS, ShiftLeft (PRBN, 0x14)), 0x0100)
        Field (NVPC, DWordAcc, NoLock, Preserve)
        {
            VREG,   2048
        }

        OperationRegion (PDW0, SystemMemory, 0xFDAE0520, 0x04)
        Field (PDW0, AnyAcc, NoLock, Preserve)
        {
            DVON,   1, 
            Offset (0x04)
        }

        OperationRegion (PDW1, SystemMemory, 0xFDAE0538, 0x10)
        Field (PDW1, AnyAcc, NoLock, Preserve)
        {
            DRST,   1, 
            Offset (0x04), 
            Offset (0x08), 
                ,   1, 
            DGC6,   1, 
            Offset (0x0C)
        }

        OperationRegion (PDW2, SystemMemory, 0xFDAE0510, 0x04)
        Field (PDW2, AnyAcc, NoLock, Preserve)
        {
                ,   1, 
            PGOD,   1, 
            Offset (0x04)
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.PEG2.PEGP._ADR)
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Name (VGAB, Buffer (0x0100)
        {
             0x00                                           
        })
        Method (HGON, 0, Serialized)
        {
            Store (One, ONOF)
            Store (Zero, DRST)
            Store (One, DVON)
            While (LNotEqual (PGOD, One))
            {
                Sleep (One)
            }

            Stall (0x64)
            Store (One, DRST)
            Sleep (0x10)
            Store (Zero, AFES)
            Store (Zero, PBSQ)
            Store (Zero, \_SB.PCI0.PEG2.LNKD)
            Store (One, TREN)
            While (LLess (\_SB.PCI0.PEG2.LNKS, 0x07))
            {
                Store (0x20, Local0)
                While (Local0)
                {
                    If (LLess (\_SB.PCI0.PEG2.LNKS, 0x07))
                    {
                        Stall (0x64)
                        Decrement (Local0)
                    }
                    Else
                    {
                        Break
                    }
                }

                If (LEqual (Local0, Zero))
                {
                    Store (One, \_SB.PCI0.PEG2.RTLK)
                    Stall (0x64)
                }
            }

            Store (\_SB.PCI0.PEG2.LTRE, \_SB.PCI0.PEG2.LREN)
            Store (One, \_SB.PCI0.PEG2.CEDR)
            Return (Zero)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            HGON ()
            Store (VGAB, VREG)
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            Store (Zero, ONOF)
            Store (\_SB.PCI0.PEG2.LREN, \_SB.PCI0.PEG2.LTRE)
            Store (One, \_SB.PCI0.PEG2.LNKD)
            Store (Zero, TCNT)
            While (LLess (TCNT, LDLY))
            {
                If (LEqual (\_SB.PCI0.PEG2.LNKS, Zero))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT)
            }

            Store (One, PBSQ)
            Store (0x03, AFES)
            Store (Zero, DRST)
            Store (Zero, DVON)
            While (LNotEqual (PGOD, Zero))
            {
                Sleep (One)
            }

            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            Store (VREG, VGAB)
            HGOF ()
            Sleep (0x32)
            Return (Zero)
        }

        Method (SGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }

            And (Arg0, 0xFF, Arg0)
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
                And (Local0, One, Local0)
            }

            And (Arg1, 0xFF, Arg1)
            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (ONOF, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (ONOF, One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }
}

