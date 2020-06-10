//
DefinitionBlock("", "SSDT", 2, "OCLT", "EXT3", 0)
{
    External(_SB_.PCI0.LPCB.EC__.LED_, MethodObj)    // 2 Arguments (from opcode)
    External(_SI._SST, MethodObj)
    Method (EXT3, 1, NotSerialized)
    {
        If ((3 == Arg0) && CondRefOf (\_SI._SST))
        {
            \_SI._SST (1)
	    \_SB.PCI0.LPCB.EC.LED (Zero, 0x80)
            \_SB.PCI0.LPCB.EC.LED (0x0A, 0x80)
        }
    }
}
//EOF
