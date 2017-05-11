// Adding SMBUS device

DefinitionBlock ("", "SSDT", 2, "T460", "SMBUS", 0)
{
    Device(\_SB.PCI0.SMBU.BUS0)
    {
        Name(_CID, "smbus")
        Name(_ADR, Zero)
        Device(DVL0)
        {
            Name(_ADR, 0x57)
            Name(_CID, "diagsvault")
            Method(_DSM, 4)
            {
                If (!Arg2) { Return (Buffer() { 0x03 } ) }
                Return (Package() { "address", 0x57 })
            }
        }
    }
}
//EOF
