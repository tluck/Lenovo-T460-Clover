// Automatic injection of XHC properties

DefinitionBlock ("", "SSDT", 2, "T470", "XHC", 0)
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

/*
    Device(_SB.USBX)
    {
        Name(_ADR, 0)
        Method (_DSM, 4)
        {
            If (!Arg2) { Return (Buffer() { 0x03 } ) }
            Return (Package()
            {
                // these values from iMac17,1
                "kUSBSleepPortCurrentLimit", 2100,
                "kUSBSleepPowerSupply", 2600,
                "kUSBWakePortCurrentLimit", 2100,
                "kUSBWakePowerSupply", 3200,
            })
        }
    }
*/
    
    // USBInjectAll configuration/override for Lenovo T560
    // Override for USBInjectAll.kext - if UIAC exists, use it instead
    //
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // USB Power Properties for High Sierra (using USBInjectAll injection)
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
                "port-count", Buffer() { 26, 0, 0, 0 },
                "ports", Package()
                {
                    "HS01", Package()   // USB2_3 left side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 1, 0, 0, 0 },
                    },
                    "HS02", Package()   // USB2_3 right side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 2, 0, 0, 0 },
                    },
//                    "HS03", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 3, 0, 0, 0 },
//                    },
                    "HS04", Package()   // USB2_3 right side front external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 4, 0, 0, 0 },
                    },
//                    "HS05", Package()   // USB2 Sierra WWAN internal
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 5, 0, 0, 0 },
//                    },
//                    "HS06", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 6, 0, 0, 0 },
//                    },
                    "HS07", Package()   // USB2 Bluetooth internal
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 7, 0, 0, 0 },
                    },
                    "HS08", Package()   // USB2 Camera internal
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 8, 0, 0, 0 },
                    },
//                    "HS09", Package()   // ??? fingerprint ???
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 9, 0, 0, 0 },
//                    },
//                    "HS10", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 10, 0, 0, 0 },
//                    },
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
//                    "HS13", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 13, 0, 0, 0 },
//                    },
//                    "HS14", Package()   // Nothing
//                    {
//                        "UsbConnector", 255,
//                        "port", Buffer() { 14, 0, 0, 0 },
//                    },
//                    "USR1", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 15, 0, 0, 0 },
//                    },
//                    "USR2", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 16, 0, 0, 0 },
//                    },
                    "SS01", Package()    // USB2_3 left side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 13, 0, 0, 0 },
                    },
                    "SS02", Package()    // USB2_3 right side back external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 14, 0, 0, 0 },
                    },
                    "SS03", Package()    // Card Reader
                    {
                        "UsbConnector", 255,
                        "port", Buffer() { 15, 0, 0, 0 },
                    },
                    "SS04", Package()    // USB2_3 right side front external
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 16, 0, 0, 0 },
                    },
                    "SS05", Package()    // USB-c
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 17, 0, 0, 0 },
                    },
                    "SS06", Package()    // Nothing
                    {
                        "UsbConnector", 3,
                        "port", Buffer() { 22, 0, 0, 0 },
                    },
//                    "SS07", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 23, 0, 0, 0 },
//                    },
//                    "SS08", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 24, 0, 0, 0 },
//                    },
//                    "SS09", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 25, 0, 0, 0 },
//                    },
//                    "SS10", Package()    // Nothing
//                    {
//                        "UsbConnector", 3,
//                        "port", Buffer() { 26, 0, 0, 0 },
//                    },
                },
            },

        })
    }
}

//EOF
