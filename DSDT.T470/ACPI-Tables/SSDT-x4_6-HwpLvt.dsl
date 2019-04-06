/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-x4_6-HwpLvt.aml, Sat Apr  6 13:12:51 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000628 (1576)
 *     Revision         0x02
 *     Checksum         0x85
 *     OEM ID           "PmRef"
 *     OEM Table ID     "HwpLvt"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "HwpLvt", 0x00003000)
{
    External (_PR_.PR00, DeviceObj)    // (from opcode)
    External (_PR_.PR01, ProcessorObj)    // (from opcode)
    External (_PR_.PR02, ProcessorObj)    // (from opcode)
    External (_PR_.PR03, ProcessorObj)    // (from opcode)
    External (_PR_.PR04, ProcessorObj)    // (from opcode)
    External (_PR_.PR05, ProcessorObj)    // (from opcode)
    External (_PR_.PR06, ProcessorObj)    // (from opcode)
    External (_PR_.PR07, ProcessorObj)    // (from opcode)
    External (_PR_.PR08, ProcessorObj)    // (from opcode)
    External (_PR_.PR09, ProcessorObj)    // (from opcode)
    External (_PR_.PR10, ProcessorObj)    // (from opcode)
    External (_PR_.PR11, ProcessorObj)    // (from opcode)
    External (_PR_.PR12, ProcessorObj)    // (from opcode)
    External (_PR_.PR13, ProcessorObj)    // (from opcode)
    External (_PR_.PR14, ProcessorObj)    // (from opcode)
    External (_PR_.PR15, ProcessorObj)    // (from opcode)
    External (TCNT, FieldUnitObj)    // (from opcode)

    Scope (\_GPE)
    {
        Method (HLVT, 0, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            While (One)
            {
                Store (ToInteger (TCNT), _T_0)
                If (LEqual (_T_0, 0x10))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                    Notify (\_PR.PR07, 0x83)
                    Notify (\_PR.PR08, 0x83)
                    Notify (\_PR.PR09, 0x83)
                    Notify (\_PR.PR10, 0x83)
                    Notify (\_PR.PR11, 0x83)
                    Notify (\_PR.PR12, 0x83)
                    Notify (\_PR.PR13, 0x83)
                    Notify (\_PR.PR14, 0x83)
                    Notify (\_PR.PR15, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x0E))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                    Notify (\_PR.PR07, 0x83)
                    Notify (\_PR.PR08, 0x83)
                    Notify (\_PR.PR09, 0x83)
                    Notify (\_PR.PR10, 0x83)
                    Notify (\_PR.PR11, 0x83)
                    Notify (\_PR.PR12, 0x83)
                    Notify (\_PR.PR13, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x0C))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                    Notify (\_PR.PR07, 0x83)
                    Notify (\_PR.PR08, 0x83)
                    Notify (\_PR.PR09, 0x83)
                    Notify (\_PR.PR10, 0x83)
                    Notify (\_PR.PR11, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x0A))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                    Notify (\_PR.PR07, 0x83)
                    Notify (\_PR.PR08, 0x83)
                    Notify (\_PR.PR09, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x08))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                    Notify (\_PR.PR07, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x07))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                    Notify (\_PR.PR06, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x06))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                    Notify (\_PR.PR05, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x05))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                    Notify (\_PR.PR04, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x04))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                    Notify (\_PR.PR03, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x03))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                    Notify (\_PR.PR02, 0x83)
                }
                ElseIf (LEqual (_T_0, 0x02))
                {
                    Notify (\_PR.PR00, 0x83)
                    Notify (\_PR.PR01, 0x83)
                }
                Else
                {
                    Notify (\_PR.PR00, 0x83)
                }

                Break
            }
        }
    }
}

