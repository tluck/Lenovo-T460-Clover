/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Sat May 12 16:24:26 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001FF4 (8180)
 *     Revision         0x02
 *     Checksum         0xCD
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "PegSsdt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "LENOVO", "PegSsdt", 0x00001000)
{
    External (_SB_.CAGS, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.ISME, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.AR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.AR0B, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PEG0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG1.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PR02, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0A, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.PR0B, MethodObj)    // 0 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.SHPO, MethodObj)    // 2 Arguments (from opcode)
    External (AR02, UnknownObj)    // (from opcode)
    External (AR0A, UnknownObj)    // (from opcode)
    External (AR0B, UnknownObj)    // (from opcode)
    External (CPEX, UnknownObj)    // (from opcode)
    External (DLHR, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (ECR1, UnknownObj)    // (from opcode)
    External (EEC1, UnknownObj)    // (from opcode)
    External (EEC2, UnknownObj)    // (from opcode)
    External (EECP, UnknownObj)    // (from opcode)
    External (GBAS, UnknownObj)    // (from opcode)
    External (GPRW, MethodObj)    // 2 Arguments (from opcode)
    External (HRA0, UnknownObj)    // (from opcode)
    External (HRA1, UnknownObj)    // (from opcode)
    External (HRA2, UnknownObj)    // (from opcode)
    External (HRE0, UnknownObj)    // (from opcode)
    External (HRE1, UnknownObj)    // (from opcode)
    External (HRE2, UnknownObj)    // (from opcode)
    External (HRG0, UnknownObj)    // (from opcode)
    External (HRG1, UnknownObj)    // (from opcode)
    External (HRG2, UnknownObj)    // (from opcode)
    External (LTRX, UnknownObj)    // (from opcode)
    External (LTRY, UnknownObj)    // (from opcode)
    External (LTRZ, UnknownObj)    // (from opcode)
    External (OBFX, UnknownObj)    // (from opcode)
    External (OBFY, UnknownObj)    // (from opcode)
    External (OBFZ, UnknownObj)    // (from opcode)
    External (OSYS, UnknownObj)    // (from opcode)
    External (P0UB, UnknownObj)    // (from opcode)
    External (P0WK, UnknownObj)    // (from opcode)
    External (P1GP, UnknownObj)    // (from opcode)
    External (P1UB, UnknownObj)    // (from opcode)
    External (P1WK, UnknownObj)    // (from opcode)
    External (P2GP, UnknownObj)    // (from opcode)
    External (P2UB, UnknownObj)    // (from opcode)
    External (P2WK, UnknownObj)    // (from opcode)
    External (PBGE, UnknownObj)    // (from opcode)
    External (PCRO, MethodObj)    // 3 Arguments (from opcode)
    External (PCSL, UnknownObj)    // (from opcode)
    External (PICM, UnknownObj)    // (from opcode)
    External (PR02, UnknownObj)    // (from opcode)
    External (PR0A, UnknownObj)    // (from opcode)
    External (PR0B, UnknownObj)    // (from opcode)
    External (PWA0, UnknownObj)    // (from opcode)
    External (PWA1, UnknownObj)    // (from opcode)
    External (PWA2, UnknownObj)    // (from opcode)
    External (PWE0, UnknownObj)    // (from opcode)
    External (PWE1, UnknownObj)    // (from opcode)
    External (PWE2, UnknownObj)    // (from opcode)
    External (PWG0, UnknownObj)    // (from opcode)
    External (PWG1, UnknownObj)    // (from opcode)
    External (PWG2, UnknownObj)    // (from opcode)
    External (SBN0, UnknownObj)    // (from opcode)
    External (SBN1, UnknownObj)    // (from opcode)
    External (SBN2, UnknownObj)    // (from opcode)
    External (SGGP, UnknownObj)    // (from opcode)
    External (SGMD, UnknownObj)    // (from opcode)
    External (SMSL, UnknownObj)    // (from opcode)
    External (SNSL, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_GPE)
    {
        Method (P0L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P0WK))
            {
                \_SB.SHPO (P0WK, One)
                Notify (\_SB.PCI0.PEG0, 0x02)
                \_SB.CAGS (P0WK)
            }
        }

        Method (P1L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P1WK))
            {
                \_SB.SHPO (P1WK, One)
                Notify (\_SB.PCI0.PEG1, 0x02)
                \_SB.CAGS (P1WK)
            }
        }

        Method (P2L6, 0, NotSerialized)
        {
            If (\_SB.ISME (P2WK))
            {
                \_SB.SHPO (P2WK, One)
                Notify (\_SB.PCI0.PEG2, 0x02)
                \_SB.CAGS (P2WK)
            }
        }
    }

    Scope (\_SB.PCI0.PEG0)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR02 ())
            }

            Return (PR02 ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRX, LTRS)
            Store (OBFX, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x08))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x09))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                    Break
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        PowerResource (PG00, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LGreater (OSYS, 0x07D9))
                {
                    PGON (Zero)
                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LGreater (OSYS, 0x07D9))
                {
                    PGOF (Zero)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG00
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG00
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG00
        })
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

        Method (P0EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (SGGP, Zero))
                {
                    If (LEqual (SGGP, One))
                    {
                        \_SB.SGOV (P0WK, One)
                        \_SB.SHPO (P0WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG0.PEGP)
    {
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
    }

    Scope (\_SB.PCI0.PEG1)
    {
        Name (WKEN, Zero)
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (GPRW (0x69, 0x04))
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0A ())
            }

            Return (PR0A ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRY, LTRS)
            Store (OBFY, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x08))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x09))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                    Break
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }

        PowerResource (PG01, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LGreater (OSYS, 0x07D9))
                {
                    PGON (One)
                    Store (One, _STA)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LGreater (OSYS, 0x07D9))
                {
                    PGOF (One)
                    Store (Zero, _STA)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PG01
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PG01
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PG01
        })
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

        Method (P1EW, 0, NotSerialized)
        {
            If (WKEN)
            {
                If (LNotEqual (P1GP, Zero))
                {
                    If (LEqual (P1GP, One))
                    {
                        \_SB.SGOV (P1WK, One)
                        \_SB.SHPO (P1WK, Zero)
                    }
                }
            }
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }
    }

    Scope (\_SB.PCI0.PEG1.PEGP)
    {
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
    }

    Scope (\_SB.PCI0.PEG2)
    {
        OperationRegion (PEGR, PCI_Config, 0xC0, 0x30)
        Field (PEGR, DWordAcc, NoLock, Preserve)
        {
            Offset (0x02), 
            PSTS,   1, 
            Offset (0x2C), 
            GENG,   1, 
                ,   1, 
            PMEG,   1
        }

        Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
        {
            If (Arg0)
            {
                Store (One, GENG)
                Store (One, PMEG)
            }
            Else
            {
                Store (Zero, GENG)
                Store (Zero, PMEG)
            }
        }

        Method (HPME, 0, Serialized)
        {
            Store (One, PSTS)
        }

        Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
        {
            If (PICM)
            {
                Return (AR0B ())
            }

            Return (PR0B ())
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (LTRZ, LTRS)
            Store (OBFZ, OBFS)
        }

        Name (LTRV, Package (0x04)
        {
            Zero, 
            Zero, 
            Zero, 
            Zero
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            If (LEqual (Arg0, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
            {
                While (One)
                {
                    Store (ToInteger (Arg2), _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        Store (Zero, Local0)
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Or (Local0, 0x40, Local0)
                            }

                            If (OBFS)
                            {
                                Or (Local0, 0x10, Local0)
                            }
                        }

                        If (LGreaterEqual (Arg1, 0x03))
                        {
                            If (ECR1)
                            {
                                Or (Local0, 0x0100, Local0)
                            }

                            If (ECR1)
                            {
                                Or (Local0, 0x0200, Local0)
                            }
                        }

                        If (LNotEqual (Local0, Zero))
                        {
                            Or (Local0, One, Local0)
                        }

                        Return (Local0)
                    }
                    ElseIf (LEqual (_T_0, 0x04))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (OBFS)
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                            Else
                            {
                                Return (Buffer (0x10)
                                {
                                    /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                    /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
                                })
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x06))
                    {
                        If (LGreaterEqual (Arg1, 0x02))
                        {
                            If (LTRS)
                            {
                                Store (And (ShiftRight (SMSL, 0x0A), 0x07), Index (LTRV, Zero))
                                Store (And (SMSL, 0x03FF), Index (LTRV, One))
                                Store (And (ShiftRight (SNSL, 0x0A), 0x07), Index (LTRV, 0x02))
                                Store (And (SNSL, 0x03FF), Index (LTRV, 0x03))
                                Return (LTRV)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x08))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (One)
                            }
                        }
                    }
                    ElseIf (LEqual (_T_0, 0x09))
                    {
                        If (LEqual (ECR1, One))
                        {
                            If (LGreaterEqual (Arg1, 0x03))
                            {
                                Return (Package (0x05)
                                {
                                    0xC350, 
                                    Ones, 
                                    Ones, 
                                    0xC350, 
                                    Ones
                                })
                            }
                        }
                    }

                    Break
                }
            }

            Return (Buffer (One)
            {
                 0x00                                           
            })
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (HBRB, Zero)
        Name (HBRD, Zero)
        Name (HBRF, Zero)
        Name (IVID, 0xFFFF)
        Name (PEBA, Zero)
        Name (PION, Zero)
        Name (PIOF, Zero)
        Name (PBUS, Zero)
        Name (PDEV, Zero)
        Name (PFUN, Zero)
        Name (EBUS, Zero)
        Name (EDEV, Zero)
        Name (EFN0, Zero)
        Name (EFN1, One)
        Name (LTRS, Zero)
        Name (OBFS, Zero)
        Name (INDX, Zero)
        Name (POFF, Zero)
        Name (PLEN, Zero)
        Name (VIOF, Zero)
        Name (DSOF, 0x06)
        Name (CPOF, 0x34)
        Name (SBOF, 0x19)
        Name (ELC0, Zero)
        Name (ECP0, 0xFFFFFFFF)
        Name (H0VI, Zero)
        Name (H0DI, Zero)
        Name (ELC1, Zero)
        Name (ECP1, 0xFFFFFFFF)
        Name (H1VI, Zero)
        Name (H1DI, Zero)
        Name (ELC2, Zero)
        Name (ECP2, 0xFFFFFFFF)
        Name (H2VI, Zero)
        Name (H2DI, Zero)
        Name (TIDX, Zero)
        Name (OTSD, Zero)
        Name (MXPG, 0x03)
        Name (FBDL, Zero)
        Name (CBDL, Zero)
        Name (MBDL, Zero)
        Name (HSTR, Zero)
        Name (LREV, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x012C)
        OperationRegion (OPG0, SystemMemory, Add (XBAS, 0x8000), 0x1000)
        Field (OPG0, AnyAcc, NoLock, Preserve)
        {
            P0VI,   16, 
            P0DI,   16, 
            Offset (0x06), 
            DSO0,   16, 
            Offset (0x34), 
            CPO0,   8, 
            Offset (0xB0), 
                ,   4, 
            P0LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P0L2,   1, 
            P0L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P0VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P0LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q0L2,   1, 
            Q0L0,   1, 
            Offset (0x504), 
            HST0,   32, 
            P0TR,   1, 
            Offset (0x91C), 
                ,   31, 
            BSP1,   1, 
            Offset (0x93C), 
                ,   31, 
            BSP2,   1, 
            Offset (0x95C), 
                ,   31, 
            BSP3,   1, 
            Offset (0x97C), 
                ,   31, 
            BSP4,   1, 
            Offset (0x99C), 
                ,   31, 
            BSP5,   1, 
            Offset (0x9BC), 
                ,   31, 
            BSP6,   1, 
            Offset (0x9DC), 
                ,   31, 
            BSP7,   1, 
            Offset (0x9FC), 
                ,   31, 
            BSP8,   1, 
            Offset (0xC20), 
                ,   4, 
            P0AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P0RM,   1, 
            Offset (0xC74), 
            P0LT,   4, 
            Offset (0xD0C), 
            LRV0,   32
        }

        OperationRegion (PCS0, SystemMemory, Add (XBAS, ShiftLeft (SBN0, 0x14)), 0xF0)
        Field (PCS0, DWordAcc, Lock, Preserve)
        {
            D0VI,   16, 
            Offset (0x2C), 
            S0VI,   16, 
            S0DI,   16
        }

        OperationRegion (CAP0, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN0, 0x14)), EECP), 0x14)
        Field (CAP0, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP0,   32, 
            LCT0,   16
        }

        OperationRegion (OPG1, SystemMemory, Add (XBAS, 0x9000), 0x1000)
        Field (OPG1, AnyAcc, NoLock, Preserve)
        {
            P1VI,   16, 
            P1DI,   16, 
            Offset (0x06), 
            DSO1,   16, 
            Offset (0x34), 
            CPO1,   8, 
            Offset (0xB0), 
                ,   4, 
            P1LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P1L2,   1, 
            P1L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P1VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P1LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q1L2,   1, 
            Q1L0,   1, 
            Offset (0x504), 
            HST1,   32, 
            P1TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P1AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P1RM,   1, 
            Offset (0xC74), 
            P1LT,   4, 
            Offset (0xD0C), 
            LRV1,   32
        }

        OperationRegion (PCS1, SystemMemory, Add (XBAS, ShiftLeft (SBN1, 0x14)), 0xF0)
        Field (PCS1, DWordAcc, Lock, Preserve)
        {
            D1VI,   16, 
            Offset (0x2C), 
            S1VI,   16, 
            S1DI,   16
        }

        OperationRegion (CAP1, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN1, 0x14)), EEC1), 0x14)
        Field (CAP1, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP1,   32, 
            LCT1,   16
        }

        OperationRegion (OPG2, SystemMemory, Add (XBAS, 0xA000), 0x1000)
        Field (OPG2, AnyAcc, NoLock, Preserve)
        {
            P2VI,   16, 
            P2DI,   16, 
            Offset (0x06), 
            DSO2,   16, 
            Offset (0x34), 
            CPO2,   8, 
            Offset (0xB0), 
                ,   4, 
            P2LD,   1, 
            Offset (0xBC), 
                ,   5, 
            P2L2,   1, 
            P2L0,   1, 
            Offset (0x11A), 
                ,   1, 
            P2VC,   1, 
            Offset (0x214), 
            Offset (0x216), 
            P2LS,   4, 
            Offset (0x248), 
                ,   7, 
            Q2L2,   1, 
            Q2L0,   1, 
            Offset (0x504), 
            HST2,   32, 
            P2TR,   1, 
            Offset (0xC20), 
                ,   4, 
            P2AP,   2, 
            Offset (0xC38), 
                ,   3, 
            P2RM,   1, 
            Offset (0xC74), 
            P2LT,   4, 
            Offset (0xD0C), 
            LRV2,   32
        }

        OperationRegion (PCS2, SystemMemory, Add (XBAS, ShiftLeft (SBN2, 0x14)), 0xF0)
        Field (PCS2, DWordAcc, Lock, Preserve)
        {
            D2VI,   16, 
            Offset (0x2C), 
            S2VI,   16, 
            S2DI,   16
        }

        OperationRegion (CAP2, SystemMemory, Add (Add (XBAS, ShiftLeft (SBN2, 0x14)), EEC2), 0x14)
        Field (CAP2, DWordAcc, NoLock, Preserve)
        {
            Offset (0x0C), 
            LCP2,   32, 
            LCT2,   16
        }

        Method (PGON, 1, Serialized)
        {
            Store (Arg0, PION)
            If (LEqual (PION, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PION, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA)
            Store (GDEV (PION), PDEV)
            Store (GFUN (PION), PFUN)
            Name (SCLK, Package (0x03)
            {
                One, 
                0x0100, 
                Zero
            })
            If (LEqual (OSYS, 0x07D9))
            {
                If (LEqual (PION, Zero))
                {
                    Store (Zero, P0AP)
                    Store (Zero, P0RM)
                }
                ElseIf (LEqual (PION, One))
                {
                    Store (Zero, P1AP)
                    Store (Zero, P1RM)
                }
                ElseIf (LEqual (PION, 0x02))
                {
                    Store (Zero, P2AP)
                    Store (Zero, P2RM)
                }

                If (LNotEqual (PBGE, Zero))
                {
                    If (SBDL (PION))
                    {
                        PUAB (PION)
                        Store (GUBC (PION), CBDL)
                        Store (GMXB (PION), MBDL)
                        If (LGreater (CBDL, MBDL))
                        {
                            Store (MBDL, CBDL)
                        }

                        PDUB (PION, CBDL)
                    }
                }

                If (LEqual (PION, Zero))
                {
                    Store (Zero, P0LD)
                    Store (One, P0TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P0VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
                ElseIf (LEqual (PION, One))
                {
                    Store (Zero, P1LD)
                    Store (One, P1TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P1VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
                ElseIf (LEqual (PION, 0x02))
                {
                    Store (Zero, P2LD)
                    Store (One, P2TR)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P2VC, Zero))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }
                }
            }
            Else
            {
                LKEN (PION)
            }

            If (LEqual (PION, Zero))
            {
                Store (H0VI, S0VI)
                Store (H0DI, S0DI)
                Or (And (ELC0, 0x43), And (LCT0, 0xFFBC), LCT0)
            }
            ElseIf (LEqual (PION, One))
            {
                Store (H1VI, S1VI)
                Store (H1DI, S1DI)
                Or (And (ELC1, 0x43), And (LCT1, 0xFFBC), LCT1)
            }
            ElseIf (LEqual (PION, 0x02))
            {
                Store (H2VI, S2VI)
                Store (H2DI, S2DI)
                Or (And (ELC2, 0x43), And (LCT2, 0xFFBC), LCT2)
            }

            Return (Zero)
        }

        Method (PGOF, 1, Serialized)
        {
            Store (Arg0, PIOF)
            If (LEqual (PIOF, Zero))
            {
                If (LEqual (SGGP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, One))
            {
                If (LEqual (P1GP, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (PIOF, 0x02))
            {
                If (LEqual (P2GP, Zero))
                {
                    Return (Zero)
                }
            }

            Store (\XBAS, PEBA)
            Store (GDEV (PIOF), PDEV)
            Store (GFUN (PIOF), PFUN)
            Name (SCLK, Package (0x03)
            {
                One, 
                0x0100, 
                Zero
            })
            If (LEqual (Arg0, Zero))
            {
                Store (LCT0, ELC0)
                Store (S0VI, H0VI)
                Store (S0DI, H0DI)
                Store (LCP0, ECP0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCT1, ELC1)
                Store (S1VI, H1VI)
                Store (S1DI, H1DI)
                Store (LCP1, ECP1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCT2, ELC2)
                Store (S2VI, H2VI)
                Store (S2DI, H2DI)
                Store (LCP2, ECP2)
            }

            If (LEqual (OSYS, 0x07D9))
            {
                If (LEqual (PIOF, Zero))
                {
                    Store (One, P0LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P0LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P0RM)
                    Store (0x03, P0AP)
                }
                ElseIf (LEqual (PIOF, One))
                {
                    Store (One, P1LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P1LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P1RM)
                    Store (0x03, P1AP)
                }
                ElseIf (LEqual (PIOF, 0x02))
                {
                    Store (One, P2LD)
                    Store (Zero, TCNT)
                    While (LLess (TCNT, LDLY))
                    {
                        If (LEqual (P2LT, 0x08))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Add (TCNT, 0x10, TCNT)
                    }

                    Store (One, P2RM)
                    Store (0x03, P2AP)
                }

                If (LNotEqual (PBGE, Zero))
                {
                    If (SBDL (PIOF))
                    {
                        Store (GMXB (PIOF), MBDL)
                        PDUB (PIOF, MBDL)
                    }
                }
            }
            Else
            {
                LKDS (PIOF)
            }

            If (LNotEqual (DerefOf (Index (SCLK, Zero)), Zero))
            {
                PCRO (0xDC, 0x100C, DerefOf (Index (SCLK, One)))
                Sleep (0x10)
            }

            If (LNotEqual (OSYS, 0x07D9)) {}
            Return (Zero)
        }

        Method (MMRB, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Return (TEMP)
        }

        Method (MMWB, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, One)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   8
            }

            Store (Arg5, TEMP)
        }

        Method (MMRW, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Return (TEMP)
        }

        Method (MMWW, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x02)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   16
            }

            Store (Arg5, TEMP)
        }

        Method (MMRD, 5, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP)
        }

        Method (MMWD, 6, NotSerialized)
        {
            Store (Arg0, Local7)
            Or (Local7, ShiftLeft (Arg1, 0x14), Local7)
            Or (Local7, ShiftLeft (Arg2, 0x0F), Local7)
            Or (Local7, ShiftLeft (Arg3, 0x0C), Local7)
            Or (Local7, Arg4, Local7)
            OperationRegion (PCI0, SystemMemory, Local7, 0x04)
            Field (PCI0, ByteAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Store (Arg5, TEMP)
        }

        Method (GULC, 1, NotSerialized)
        {
            Store (MMRD (PEBA, PBUS, PDEV, PFUN, 0xAC), Local7)
            ShiftRight (Local7, 0x04, Local7)
            And (Local7, 0x3F, Local7)
            Store (Arg0, Local6)
            ShiftRight (Local6, 0x04, Local6)
            And (Local6, 0x3F, Local6)
            If (LGreater (Local7, Local6))
            {
                Subtract (Local7, Local6, Local0)
            }
            Else
            {
                Store (Zero, Local0)
            }

            Return (Local0)
        }

        Method (GMXB, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (0x08, Local0)
                }
                Else
                {
                    Store (0x04, Local0)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    Store (0x04, Local0)
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    Store (0x02, Local0)
                }
            }

            Return (Local0)
        }

        Method (PUAB, 1, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Zero, CBDL)
            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
                Store (LRV0, LREV)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
                Store (LRV1, LREV)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
                Store (LRV2, LREV)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            ShiftRight (LREV, 0x14, LREV)
            And (LREV, One, LREV)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    Store (Zero, FBDL)
                    Store (0x08, CBDL)
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Zero, FBDL)
                    Store (0x04, CBDL)
                }
                Else
                {
                    Store (0x04, FBDL)
                    Store (0x04, CBDL)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL)
                        Store (0x04, CBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                        Store (0x04, CBDL)
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x04, FBDL)
                        Store (0x02, CBDL)
                    }
                    Else
                    {
                        Store (0x02, FBDL)
                        Store (0x02, CBDL)
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (0x06, FBDL)
                        Store (0x02, CBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                        Store (0x02, CBDL)
                    }
                }
            }

            Store (One, INDX)
            If (LNotEqual (CBDL, Zero))
            {
                While (LLessEqual (INDX, CBDL))
                {
                    If (LEqual (P0VI, IVID)) {}
                    ElseIf (LNotEqual (P0VI, IVID))
                    {
                        If (LEqual (FBDL, Zero))
                        {
                            Store (Zero, BSP1)
                        }

                        If (LEqual (FBDL, One))
                        {
                            Store (Zero, BSP2)
                        }

                        If (LEqual (FBDL, 0x02))
                        {
                            Store (Zero, BSP3)
                        }

                        If (LEqual (FBDL, 0x03))
                        {
                            Store (Zero, BSP4)
                        }

                        If (LEqual (FBDL, 0x04))
                        {
                            Store (Zero, BSP5)
                        }

                        If (LEqual (FBDL, 0x05))
                        {
                            Store (Zero, BSP6)
                        }

                        If (LEqual (FBDL, 0x06))
                        {
                            Store (Zero, BSP7)
                        }

                        If (LEqual (FBDL, 0x07))
                        {
                            Store (Zero, BSP8)
                        }
                    }

                    Increment (FBDL)
                    Increment (INDX)
                }
            }
        }

        Method (PDUB, 2, NotSerialized)
        {
            Store (Zero, FBDL)
            Store (Arg1, CBDL)
            If (LEqual (CBDL, Zero))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                Store (HST0, HSTR)
                Store (LRV0, LREV)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (HST1, HSTR)
                Store (LRV1, LREV)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (HST2, HSTR)
                Store (LRV2, LREV)
            }

            ShiftRight (HSTR, 0x10, HSTR)
            And (HSTR, 0x03, HSTR)
            ShiftRight (LREV, 0x14, LREV)
            And (LREV, One, LREV)
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (HSTR, 0x03))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
                ElseIf (LEqual (LREV, Zero))
                {
                    Store (Subtract (0x04, CBDL), FBDL)
                }
                Else
                {
                    Store (0x04, FBDL)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (HSTR, 0x02))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
                ElseIf (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x06, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (0x02, FBDL)
                    }
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (HSTR, Zero))
                {
                    If (LEqual (LREV, Zero))
                    {
                        Store (Subtract (0x08, CBDL), FBDL)
                    }
                    Else
                    {
                        Store (Zero, FBDL)
                    }
                }
            }

            Store (One, INDX)
            While (LLessEqual (INDX, CBDL))
            {
                If (LEqual (P0VI, IVID)) {}
                ElseIf (LNotEqual (P0VI, IVID))
                {
                    If (LEqual (FBDL, Zero))
                    {
                        Store (One, BSP1)
                    }

                    If (LEqual (FBDL, One))
                    {
                        Store (One, BSP2)
                    }

                    If (LEqual (FBDL, 0x02))
                    {
                        Store (One, BSP3)
                    }

                    If (LEqual (FBDL, 0x03))
                    {
                        Store (One, BSP4)
                    }

                    If (LEqual (FBDL, 0x04))
                    {
                        Store (One, BSP5)
                    }

                    If (LEqual (FBDL, 0x05))
                    {
                        Store (One, BSP6)
                    }

                    If (LEqual (FBDL, 0x06))
                    {
                        Store (One, BSP7)
                    }

                    If (LEqual (FBDL, 0x07))
                    {
                        Store (One, BSP8)
                    }
                }

                Increment (FBDL)
                Increment (INDX)
            }
        }

        Method (SBDL, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                Return (Zero)
            }

            Return (One)
        }

        Method (GUBC, 1, NotSerialized)
        {
            Store (Zero, Local7)
            If (LEqual (Arg0, Zero))
            {
                Store (LCP0, Local6)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (LCP1, Local6)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Store (LCP2, Local6)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (P0UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P0UB, Zero))
                {
                    Store (P0UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (P1UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P1UB, Zero))
                {
                    Store (P1UB, Local7)
                }
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                If (LEqual (P2UB, 0xFF))
                {
                    Store (GULC (Local6), Local5)
                    Store (Divide (Local5, 0x02, ), Local7)
                }
                ElseIf (LNotEqual (P2UB, Zero))
                {
                    Store (P2UB, Local7)
                }
            }

            Return (Local7)
        }

        Method (LKEN, 1, NotSerialized)
        {
            And (CPEX, 0x0F, Local3)
            If (LEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, P0L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, P1L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, P2L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
            ElseIf (LNotEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, Q0L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q0L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, Q1L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q1L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, Q2L0)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q2L0)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
        }

        Method (LKDS, 1, NotSerialized)
        {
            And (CPEX, 0x0F, Local3)
            If (LEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, P0L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P0L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, P1L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P1L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, P2L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (P2L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
            ElseIf (LNotEqual (Local3, Zero))
            {
                If (LEqual (Arg0, Zero))
                {
                    Store (One, Q0L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q0L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, One))
                {
                    Store (One, Q1L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q1L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
                ElseIf (LEqual (Arg0, 0x02))
                {
                    Store (One, Q2L2)
                    Sleep (0x10)
                    Store (Zero, Local0)
                    While (Q2L2)
                    {
                        If (LGreater (Local0, 0x04))
                        {
                            Break
                        }

                        Sleep (0x10)
                        Increment (Local0)
                    }
                }
            }
        }

        Method (GDEV, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (One, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (One, Local0)
            }

            Return (Local0)
        }

        Method (GFUN, 1, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Store (Zero, Local0)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Store (One, Local0)
            }

            If (LEqual (Arg0, 0x02))
            {
                Store (0x02, Local0)
            }

            Return (Local0)
        }

        Method (NTFY, 2, NotSerialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Notify (\_SB.PCI0.PEG0, Arg1)
            }
            ElseIf (LEqual (Arg0, One))
            {
                Notify (\_SB.PCI0.PEG1, Arg1)
            }
            ElseIf (LEqual (Arg0, 0x02))
            {
                Notify (\_SB.PCI0.PEG2, Arg1)
            }
        }
    }
}

