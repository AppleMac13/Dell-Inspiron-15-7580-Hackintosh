/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20210930 (64-bit version)
 * Copyright (c) 2000 - 2021 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Volumes/EFI/EFI/OC/ACPI/SSDT-Display.aml, Fri Mar 13 09:23:51 2026
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000024D (589)
 *     Revision         0x02
 *     Checksum         0x33
 *     OEM ID           "ACDT"
 *     OEM Table ID     "Display"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20210930 (539035952)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "Display", 0x00000000)
{
    External (_SB_.PCI0.GFX0, DeviceObj)

    Scope (_SB.PCI0.GFX0)
    {
        If (_OSI ("Darwin"))
        {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x20)
                {
                    "device-id", 
                    Buffer (0x04)
                    {
                         0x9B, 0x3E, 0x00, 0x00                           // .>..
                    }, 

                    "AAPL,ig-platform-id", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x1B, 0x59                           // ...Y
                    }, 

                    "AAPL,ig-platform-id-alt", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x9B, 0x3E                           // ...>
                    }, 

                    "AAPL,force-vram-size", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x80                           // ....
                    }, 

                    "framebuffer-patch-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-stolenmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x10                           // ....
                    }, 

                    "framebuffer-fbmem", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x04                           // ....
                    }, 

                    "framebuffer-con0-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con0-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con1-enable", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "framebuffer-con1-type", 
                    Buffer (0x04)
                    {
                         0x00, 0x00, 0x00, 0x01                           // ....
                    }, 

                    "enable-hdmi20", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "enable-lspcon-support", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "enable-backlight-registers-fix", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "enable-metal", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }, 

                    "disable-external-gpu", 
                    Buffer (0x04)
                    {
                         0x01, 0x00, 0x00, 0x00                           // ....
                    }
                })
            }
        }
    }
}

