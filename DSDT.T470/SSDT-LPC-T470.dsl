// SSDT for T460 (Skylake)

DefinitionBlock ("", "SSDT", 2, "T460", "LPCB", 0)
{

    External(\_SB.PCI0.LPCB, DeviceObj)
    Method (\_SB.PCI0.LPCB._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
             "compatible", "pci8086,9cc1",
        })
    }

}
//EOF
