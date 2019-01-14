/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-8.aml, Sat May 12 16:24:26 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000011C1 (4545)
 *     Revision         0x01
 *     Checksum         0x11
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "NvOptTbl"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "NvOptTbl", 0x00001000)
{
    External (_PR_.CPPC, UnknownObj)    // (from opcode)
    External (_PR_.CPU0, UnknownObj)    // Warning: Unknown object
    External (_PR_.CPU0._PPC, IntObj)    // (from opcode)
    External (_PR_.CPU0._PSS, MethodObj)    // 0 Arguments (from opcode)
    External (_PR_.CPU0._TSS, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.GC6T, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.VPON, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.CEDR, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.DGCX, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.LNKD, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.LNKS, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.LREN, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.LTRE, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._ON_, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP._STA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.PEG2.PEGP.DGC6, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.PEG2.TDGC, UnknownObj)    // (from opcode)
    External (DLPW, UnknownObj)    // (from opcode)
    External (NVHA, UnknownObj)    // (from opcode)
    External (XBAS, UnknownObj)    // (from opcode)

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RTCO, SystemIO, 0x72, 0x02)
        Field (RTCO, ByteAcc, NoLock, Preserve)
        {
            CIND,   8, 
            CDAT,   8
        }

        IndexField (CIND, CDAT, ByteAcc, NoLock, Preserve)
        {
            Offset (0x70), 
            OPTF,   1
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (ISGC, Zero)
        Name (TGPC, Buffer (0x04)
        {
             0x00                                           
        })
        OperationRegion (PDW3, SystemMemory, 0xFDAE0730, 0x04)
        Field (PDW3, AnyAcc, NoLock, Preserve)
        {
            DGEV,   1, 
            Offset (0x04)
        }

        Method (GC6I, 0, Serialized)
        {
            Store ("<<< GC6I >>>", Debug)
            Store (One, \_SB.PCI0.LPCB.EC.GC6T)
            Sleep (0x0A)
            Store (\_SB.PCI0.PEG2.LREN, \_SB.PCI0.PEG2.LTRE)
            Store (One, \_SB.PCI0.PEG2.LNKD)
            While (LNotEqual (\_SB.PCI0.PEG2.LNKS, Zero))
            {
                Sleep (One)
            }

            While (LNotEqual (\_SB.PCI0.PEG2.PEGP.DGC6, One))
            {
                Sleep (One)
            }
        }

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)
            Store (Zero, \_SB.PCI0.PEG2.LNKD)
            Store (Zero, \_SB.PCI0.PEG2.PEGP.DGEV)
            While (LLess (\_SB.PCI0.PEG2.LNKS, 0x07))
            {
                Sleep (One)
            }

            Store (One, \_SB.PCI0.PEG2.PEGP.DGEV)
            Store (\_SB.PCI0.PEG2.LTRE, \_SB.PCI0.PEG2.LREN)
            Store (One, \_SB.PCI0.PEG2.CEDR)
            Store (Zero, \_SB.PCI0.LPCB.EC.GC6T)
            Sleep (0x0A)
        }

        Method (GETS, 0, Serialized)
        {
            If (LEqual (\_SB.PCI0.PEG2.PEGP.DGC6, Zero))
            {
                Store ("<<< GETS() return 0x9 >>>", Debug)
                Return (0x09)
            }
            Else
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)
                Return (0x03)
            }
        }

        Method (NGC6, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- NV GC6 DSM --------", Debug)
            If (LLess (Arg1, 0x0100))
            {
                Return (Buffer (0x04)
                {
                     0x01, 0x00, 0x00, 0x80                         
                })
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                         
                    })
                }
                ElseIf (LEqual (_T_0, One))
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN)
                    Store (One, GC6R)
                    Store (One, PTRH)
                    Store (One, SREN)
                    Store (One, MHYB)
                    Store (One, RPCL)
                    Store (0x0103, JTRV)
                    Return (JTB1)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Store ("GPS fun 19", Debug)
                    Return (Arg3)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x06, 0x02, ECOC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (ToInteger (Arg3), TGPC)
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC), Zero)))
                    {
                        Store (ToInteger (DFGC), \_SB.PCI0.PEG2.TDGC)
                        Store (ToInteger (GPCX), \_SB.PCI0.PEG2.DGCX)
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00                                           
                    })
                    CreateField (JTB3, Zero, 0x04, GUPS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (0x09, GUPS)
                        Return (JTB3)
                    }

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        Store (ToInteger (Arg3), TGPC)
                        GC6I ()
                        Store (One, PLST)
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        Store (ToInteger (Arg3), TGPC)
                        GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        Store (ToInteger (Arg3), TGPC)
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        Store (ToInteger (Arg3), TGPC)
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST)
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS)
                    }

                    Return (JTB3)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Return (Buffer (0x04)
                    {
                         0x02, 0x00, 0x00, 0x80                         
                    })
                }

                Break
            }

            Return (Buffer (0x04)
            {
                 0x02, 0x00, 0x00, 0x80                         
            })
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00030400)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            NVSG,   128, 
            NVSZ,   32, 
            NVVR,   32, 
            NVHO,   32, 
            RVBS,   32, 
            RBF1,   262144, 
            RBF2,   262144
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Method (_ROM, 2, NotSerialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Local0, 0x00010000))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            If (LGreater (Local0, RVBS))
            {
                Return (Buffer (Local1)
                {
                     0x00                                           
                })
            }

            Multiply (Local1, 0x08, Local3)
            Name (ROM1, Buffer (0x8000)
            {
                 0x00                                           
            })
            Name (ROM2, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LLess (Local0, 0x8000))
            {
                Store (RBF1, ROM1)
            }
            Else
            {
                Subtract (Local0, 0x8000, Local0)
                Store (RBF2, ROM1)
            }

            Multiply (Local0, 0x08, Local2)
            CreateField (ROM1, Local2, Local3, TMPB)
            Store (TMPB, ROM2)
            Return (ROM2)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                /* 00E0 */  0x00, 0x00                                     
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK)
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (OMPR, 0x02)
        Method (NVOP, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("------- NV OPTIMUS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            While (One)
            {
                Store (ToInteger (Arg2), _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1B, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1A))
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, Zero, One, FLCH)
                    If (ToInteger (FLCH))
                    {
                        Store (OPCE, OMPR)
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                         
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN)
                    Store (One, SHPC)
                    Store (0x02, HDAC)
                    Store (One, DGPC)
                    If (\_SB.PCI0.PEG2.PEGP._STA ())
                    {
                        Store (0x03, CGCS)
                    }

                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x1B))
                {
                    Store (Arg3, Local0)
                    CreateField (Local0, Zero, One, OPFL)
                    CreateField (Local0, One, One, OPVL)
                    If (ToInteger (OPVL))
                    {
                        Store (Zero, \_SB.PCI0.OPTF)
                        If (ToInteger (OPFL))
                        {
                            Store (One, \_SB.PCI0.OPTF)
                        }
                    }

                    Store (\_SB.PCI0.OPTF, Local0)
                    Return (Local0)
                }
                ElseIf (LEqual (_T_0, 0x10))
                {
                    Return (\_SB.PCI0.PEG2.PEGP.GOBT (Arg3))
                }

                Break
            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (DGOS, Zero)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.PEG2.PEGP._ON ()
                Store (Zero, DGOS)
                Store (Zero, MLTF)
            }
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (\_SB.PCI0.PEG2.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.PEG2.PEGP._OFF ()
                Store (One, DGOS)
                Store (0x02, \_SB.PCI0.PEG2.PEGP.OMPR)
            }
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (GPSP, Buffer (0x24) {})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (SUBF, Zero)
        Name (PSAP, Zero)
        Name (CPPC, Zero)
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }

        Method (NVGS, 4, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store ("<<< GPS >>>", Debug)
            Store (Zero, Local0)
            Store (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0, Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, One)), 0x08), Local0, Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, Zero)), Zero), Local0, Local0)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                         
                })
            }

            Store (Arg2, SUBF)
            If (LEqual (SUBF, Zero))
            {
                Store ("GPS fun 0", Debug)
                Return (Buffer (0x08)
                {
                     0x01, 0x00, 0x00, 0x00, 0x0F, 0x04, 0x00, 0x00 
                })
            }
            ElseIf (LEqual (SUBF, 0x2A))
            {
                Store ("GPS fun 2a", Debug)
                CreateByteField (Arg3, Zero, PSH0)
                CreateByteField (Arg3, One, PSH1)
                CreateBitField (Arg3, 0x08, GPUT)
                CreateBitField (Arg3, 0x09, CPUT)
                While (One)
                {
                    Store (PSH0, _T_0)
                    If (LEqual (_T_0, Zero))
                    {
                        If (CPUT)
                        {
                            Store (0x0200, RETN)
                            Or (RETN, PSH0, RETN)
                        }

                        Return (GPSP)
                    }
                    ElseIf (LEqual (_T_0, One))
                    {
                        If (GPUT)
                        {
                            Or (RETN, 0x0100, RETN)
                        }

                        If (CPUT)
                        {
                            Or (RETN, 0x0200, RETN)
                            Store (0x01F4, CPUT)
                        }

                        Return (GPSP)
                    }
                    ElseIf (LEqual (_T_0, 0x02))
                    {
                        Store (Zero, RETN)
                        Store (Zero, VRV1)
                        Store (Zero, TGPU)
                        Store (Zero, PDTS)
                        Store (Zero, SFAN)
                        Store (Zero, CPUE)
                        Store (Zero, SKNT)
                        Store (Zero, TMP1)
                        Store (Zero, TMP2)
                        Return (GPSP)
                    }

                    Break
                }
            }
            ElseIf (LEqual (SUBF, 0x20))
            {
                Store ("GPS fun 20", Debug)
                Name (RET1, Zero)
                CreateBitField (Arg3, 0x18, NRIT)
                CreateBitField (Arg3, 0x19, NRIS)
                If (NRIS)
                {
                    If (NRIT)
                    {
                        Or (RET1, 0x01000000, RET1)
                    }
                    Else
                    {
                        And (RET1, 0xFEFFFFFF, RET1)
                    }
                }

                Or (RET1, 0x40000000, RET1)
                Return (RET1)
            }
            ElseIf (LEqual (SUBF, 0x21))
            {
                Store ("GPS fun 21", Debug)
                Return (\_PR.CPU0._PSS ())
            }
            ElseIf (LEqual (SUBF, 0x22))
            {
                Store ("GPS fun 22", Debug)
                CreateDWordField (Arg3, Zero, PCAP)
                Store (PCAP, CPPC)
                Notify (\_PR.CPU0, 0x80)
                Store (PCAP, PSAP)
                Return (PCAP)
            }
            ElseIf (LEqual (SUBF, 0x23))
            {
                Store ("GPS fun 23", Debug)
                Return (PSAP)
            }
            ElseIf (LEqual (SUBF, 0x25))
            {
                Store ("GPS fun 25", Debug)
                Return (\_PR.CPU0._TSS ())
            }
            ElseIf (LEqual (SUBF, 0x26))
            {
                Store ("GPS fun 26", Debug)
                CreateDWordField (Arg3, Zero, TCAP)
                Notify (\_PR.CPU0, 0x80)
                Return (TCAP)
            }
            Else
            {
                Return (0x80000002)
            }

            Return (Zero)
        }
    }

    Scope (\)
    {
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.PEG2.PEGP)
    {
        Name (MXM3, Buffer (0x55)
        {
            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x4D, 0x00,
            /* 0008 */  0x60, 0x7C, 0x68, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0010 */  0x60, 0x6B, 0x62, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0018 */  0x20, 0x6B, 0x62, 0xFD, 0xF9, 0x3E, 0x00, 0x00,
            /* 0020 */  0x60, 0x69, 0x52, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0028 */  0x20, 0x69, 0x52, 0xFD, 0xF9, 0x3E, 0x00, 0x00,
            /* 0030 */  0x60, 0x6A, 0x5A, 0xFF, 0xF9, 0x3E, 0x00, 0x00,
            /* 0038 */  0x20, 0x6A, 0x5A, 0xFD, 0xF9, 0x3E, 0x00, 0x00,
            /* 0040 */  0x01, 0xE8, 0x03, 0x00, 0x02, 0x4C, 0x04, 0x00,
            /* 0048 */  0x12, 0x1A, 0x04, 0x00, 0x03, 0x00, 0xE8, 0x03,
            /* 0050 */  0x13, 0x01, 0xF4, 0x01, 0x2A                   
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0")))
            {
                Return (\_SB.PCI0.PEG2.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            Store ("<<< _DSM - Perf >>>", Debug)
            Store (Arg0, Debug)
            Store (Arg1, Debug)
            Store (Arg2, Debug)
            Store (Arg3, Debug)
            If (LEqual (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81")))
            {
                Return (NVGS (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34")))
            {
                Return (\_SB.PCI0.PEG2.PEGP.NGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665")))
            {
                Store (ToInteger (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                         
                    })
                }

                If (LEqual (Local0, 0x18))
                {
                    Return (Buffer (0x04)
                    {
                         0x30, 0x00, 0x00, 0x00                         
                    })
                }

                If (LEqual (Local0, 0x10))
                {
                    If (LEqual (Arg1, 0x0300))
                    {
                        Return (MXM3)
                    }
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }
}

