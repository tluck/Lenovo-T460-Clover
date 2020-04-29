// ACPI Debugging SSDT with ACPIDebug.kext and RMDT Device
// RMDT device Methods P0 to P7 can be used to visualize

DefinitionBlock("", "SSDT", 2, "ACDT", "TEST", 0)
{
    External (RMDT.P1, MethodObj)   // 1 Arguments
    External (RMDT.P2, MethodObj)   // 2 Arguments
    External (RMDT.P3, MethodObj)   // 3 Arguments
    External (RMDT.P4, MethodObj)   // 4 Arguments
    External (RMDT.P5, MethodObj)   // 5 Arguments
    External (RMDT.P6, MethodObj)   // 6 Arguments
    External (RMDT.P7, MethodObj)   // 7 Arguments
    External (\_SB.PCI0.LPC.HPET._STA, MethodObj)   // 0 Argumnets
    External (\_SB.PCI0.LPC.EC.WACH, FieldUnitObj)     // 0 Arguments
//    External (XXXX, IntObj)
//    External (YYYY, IntObj)
//    External (WNTF, IntObj)
//    External (WXPF, IntObj)
    External (H8DR, IntObj)

    If (_OSI ("Darwin"))
    {
        \RMDT.P1 ("AAA001")
        \RMDT.P2 ("H8DR State: ", \H8DR)
        \RMDT.P2 ("WACH State: ", \_SB.PCI0.LPC.EC.WACH)
        \RMDT.P2 ("HPET Device Sate: ", \_SB.PCI0.LPC.HPET._STA ())
	    //\RMDT.P5 ("HPET disabling variables XXXX, YYYY, WNTF, WXPF: ", \XXXX, \YYYY, \WNTF, \WXPF)
    }
}
