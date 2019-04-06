/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20160422-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-2-Rmv_Batt.aml, Sat Apr  6 13:12:50 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000021C (540)
 *     Revision         0x01
 *     Checksum         0xD6
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "Rmv_Batt"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "LENOVO", "Rmv_Batt", 0x00001000)
{
    External (_SB_.PCI0.LPCB.EC__.BAT1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1.B1ST, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1.SBLI, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.BAT1.XB1S, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.CLPM, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HB1A, UnknownObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC__.HKEY.MHKQ, MethodObj)    // 1 Arguments (from opcode)

    Scope (\_SB.PCI0.LPCB.EC.BAT1)
    {
        Method (_Q4C, 0, NotSerialized)  // _Qxx: EC Query
        {
            \_SB.PCI0.LPCB.EC.CLPM ()
            If (\_SB.PCI0.LPCB.EC.HB1A)
            {
                \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x4010)
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.HKEY.MHKQ (0x4011)
                If (\_SB.PCI0.LPCB.EC.BAT1.XB1S)
                {
                    Notify (\_SB.PCI0.LPCB.EC.BAT1, 0x03)
                }
            }
        }

        Method (_EJ0, 1, NotSerialized)  // _EJx: Eject Device
        {
            If (Arg0)
            {
                Store (0x00, \_SB.PCI0.LPCB.EC.BAT1.B1ST)
                Store (0x01, \_SB.PCI0.LPCB.EC.BAT1.SBLI)
                Store (0x00, \_SB.PCI0.LPCB.EC.BAT1.XB1S)
            }
        }
    }
}

