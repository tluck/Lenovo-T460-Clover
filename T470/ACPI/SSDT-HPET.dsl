DefinitionBlock ("", "SSDT", 2, "hack", "HPET", 0x00000000)
{
    External (_SB_.PCI0.LPCB, DeviceObj)    // (from opcode)

    Name (\_SB.PCI0.LPCB.HPET._CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
    {
        IRQNoFlags ()
            {0,8,11}
        Memory32Fixed (ReadWrite,
            0xFED00000,         // Address Base
            0x00000400,         // Address Length
            )
    })
}

