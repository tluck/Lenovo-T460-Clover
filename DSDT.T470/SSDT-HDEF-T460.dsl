// SSDT for T460 (ALC 293 on x1916 8086)

DefinitionBlock ("", "SSDT", 2, "T460", "HDEF", 0)
{

//    Include("include/disable_HECI.asl")

    External(\_SB.PCI0.HDEF, DeviceObj)
    Method(\_SB.PCI0.HDEF._DSM, 4)
    {
        If (!Arg2) { Return (Buffer() { 0x03 } ) }
        Return(Package()
        {
        "AAPL,slot-name",    Buffer() { "Built in" },
        "layout-id",         Buffer() { 0x1C, 0x00, 0x00, 0x00 },
        "codec-id",          Buffer() { 0x93, 0x02, 0xEC, 0x10 },
        "model",             Buffer() { "Realtek ALC293 HD Audio" },
        "name",              Buffer() { "Realtek ALC293" },
        "device_type",       Buffer() { "Audio Controller" },
        "built-in",          Buffer() { 0x00 },
        "PinConfigurations", Buffer() { },
        "hda-gfx",           Buffer() { "onboard-1" },
        "MaximumBootBeepVolume",         47,
        })
    }

}
//EOF
