// SSDT for T460 (Skylake)

DefinitionBlock ("", "SSDT", 2, "T460", "LPC", 0)
{

    External(\_SB.PCI0.LPC, DeviceObj)
    Method (\_SB.PCI0.LPC._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero)) { Return (Buffer() { 0x03 } ) }
        Return (Package()
        {
             "compatible", "pci8086,9cc1",
        })
    }

}
//EOF
