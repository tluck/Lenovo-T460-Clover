// Automatic injection of XHC properties

DefinitionBlock ("", "SSDT", 2, "T460", "XHC", 0)
{
    External(\_SB.PCI0.XHC, DeviceObj)

    // inject properties for XHCI
        Method(\_SB.PCI0.XHC._DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Local0 = Package()
            {
                "AAPL,current-available", Buffer() { 0x34, 0x08, 0, 0 },
                "AAPL,current-extra", Buffer() { 0x98, 0x08, 0, 0, },
                "AAPL,current-extra-in-sleep", Buffer() { 0x40, 0x06, 0, 0, },
                "AAPL,max-port-current-in-sleep", Buffer() { 0x34, 0x08, 0, 0 },
            }
            Return(Local0)
        }

// USB power properties via USBX device
// these values are same as MacBookPro12,1
/* this device and properties seem to be redundant with method below
    Device(\_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 3200,
            })
        }
    }
*/
// USBInjectAll configuration/override for Lenovo T460
// Override for USBInjectAll.kext - if UIAC exists, use it instead
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // USB Power Properties for Sierra (using USBInjectAll injection)
            "AppleBusPowerControllerUSB", Package()
            {
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 3200,
            },
            // XHC overrides
            "8086_9d2f", Package()
            {
                "port-count", Buffer() { 18, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()   // USB2 left side front external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()   // USB2 right side external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
                    "HS03", Package()   // Nothing
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 3, 0, 0, 0 },
                    },
                    "HS04", Package()   // HUB
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
//                    "HS05", Package()   // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
                    "HS06", Package()   // USB2 left side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 6, 0, 0, 0 },
                    },
                    "HS07", Package()   // Bluetooth
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()   // Touch Screen
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
                    "HS09", Package()   // Finger Print
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 9, 0, 0, 0 },
                    },
                    "HS10", Package()   // Camera HSP9
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 10, 0, 0, 0 },
                    },
//                    "HS11", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 11, 0, 0, 0 },
//                    },
//                    "HS12", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 12, 0, 0, 0 },
//                    },
                    "SS13", Package()    // USB3 left side front external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
//                    "SS14", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 14, 0, 0, 0 },
//                    },
                    "SS15", Package()   // USB3 right side port external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "SS16", Package()   // USB3 on Dock Hub
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
//                    "SS17", Package()   // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 17, 0, 0, 0 },
//                    },
                    "SS18", Package()   // USB3 left side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 18, 0, 0, 0 },
                    },
                    //USR1/USR2 not used
                },
            },

        })
    }
}

//EOF
