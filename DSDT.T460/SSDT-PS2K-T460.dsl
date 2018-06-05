// tjl - add T460 identifier
DefinitionBlock ("", "SSDT", 2, "T460", "PS2K", 0)
{
    External(\_SB.PCI0, DeviceObj)
    External(\_SB.PCI0.LPC, DeviceObj)
    External(\_SB.PCI0.LPC.PS2K, DeviceObj)
    Scope (\_SB.PCI0.LPC.PS2K)
    {
        // Select specific items in VoodooPS2Controller
        Method(_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "RM,oem-id", "LENOVO",
                "RM,oem-table-id", "T460",
            })
        }
        // Overrides for settings in the Info.plist files)
        Name(_SB.PCI0.LPC.PS2K.RMCF, Package()
        {
            "Keyboard", Package()
            {
                "ActionSwipeLeft",  "37 d, 21 d, 21 u, 37 u",
                "ActionSwipeRight", "37 d, 1e d, 1e u, 37 u",
                "SleepPressTime",   "1500",
                "Swap command and option", ">y",
            },
            "Synaptics TouchPad", Package()
            {
                "BogusDeltaThreshX", 800,
                "BogusDeltaThreshY", 800,
                "Clicking", ">y",
                "DragLockTempMask", 0x40004,
                "DynamicEWMode", ">n",
                "FakeMiddleButton", ">n",
                "HWResetOnStart", ">y",
                //"ForcePassThrough", ">y",
                //"SkipPassThrough", ">y",
                "PalmNoAction When Typing", ">y",
                "ScrollResolution", 800,
                "SmoothInput", ">y",
                "UnsmoothInput", ">y",
                "Thinkpad", ">y",
                "EdgeBottom", 0,
                "FingerZ", 30,
                "MaxTapTime", 100000000,
                "MouseMultiplierX", 2,
                "MouseMultiplierY", 2,
                "MouseScrollMultiplierX", 2,
                "MouseScrollMultiplierY", 2,
                "TrackpointScrollYMultiplier", 1, //Change this value to 0xFFFF in order to inverse the vertical scroll direction of the Trackpoint when holding the middle mouse button.
                "TrackpointScrollXMultiplier", 1, //Change this value to 0xFFFF in order to inverse the horizontal scroll direction of the Trackpoint when holding the middle mouse button.
            },
        })
    }
}
//EOF
