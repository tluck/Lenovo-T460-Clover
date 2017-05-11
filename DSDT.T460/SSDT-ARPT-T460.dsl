// SSDT for T460 BCM4352 as BCM4360

DefinitionBlock ("", "SSDT", 2, "T460", "ARPT", 0)
{
    External(\_SB.PCI0.EXP3.PXSX, DeviceObj)
    Method(\_SB.PCI0.EXP3.PXSX._DSM, 4, NotSerialized)
    {
        If (LEqual (Arg2, Zero)) { Return (Buffer () { 0x03 } ) }
        Return (Package ()
        {
        "vendor-id", Buffer()           { 0xe4, 0x14, 0x00, 0x00 },
        "device-id", Buffer()           { 0xa0, 0x43, 0x00, 0x00 },
        "subsystem-vendor-id", Buffer() { 0x6b, 0x10, 0x00, 0x00 },
        "subsystem-id", Buffer()        { 0x34, 0x01, 0x00, 0x00 },
        "compatible", "pci14e4,43a0",
        "IOName",     "pci14e4,43a0",
        "name",       "pci14e4,43a0"
        })
    }
}
//EOF
