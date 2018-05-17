DefinitionBlock ("", "SSDT", 2, "T460", "HACK", 0x00000000)
{
    External (\_SB.PCI0, DeviceObj)    // (from opcode)
    External (\_SB.PCI0.LPCB, DeviceObj)    // (from opcode)
    External (\_SB.PCI0.XHC.PMEE, FieldUnitObj)    // (from opcode)
    External (\_SI._SST, MethodObj)    // 1 Arguments (from opcode)
    External (ZPTS, MethodObj)    // 1 Arguments (from opcode)
    External (ZWAK, MethodObj)    // 1 Arguments (from opcode)

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        If (0x05 == Arg0)
        {
            \_SB.PCI0.XHC.PMEE = 0
            Return (Zero)
        }

        ZPTS (Arg0)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If ((Arg0 < One) || (Arg0 > 0x05))
        {
            Arg0 = 0x03
        }

        Local0 = ZWAK (Arg0)
        \_SI._SST (One)
        Return (Local0)
    }
}

