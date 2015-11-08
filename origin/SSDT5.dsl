/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT5.aml, Sun Sep 27 03:37:15 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001BF5 (7157)
 *     Revision         0x01
 *     Checksum         0x22
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "CB-01   "
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "ACPI"
 *     Compiler Version 0x00040000 (262144)
 */
DefinitionBlock ("SSDT5.aml", "SSDT", 1, "LENOVO", "CB-01   ", 0x00000001)
{

    External (_SB_.OSCO, IntObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.GATY, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LSTE, FieldUnitObj)
    External (_SB_.PCI0.RP05, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX, DeviceObj)
    External (_SB_.PCI0.RP05.PXSX._ADR, IntObj)
    External (ECON, FieldUnitObj)
    External (H2OP, MethodObj)    // 1 Arguments
    External (NXD1, FieldUnitObj)
    External (NXD2, FieldUnitObj)
    External (NXD3, FieldUnitObj)
    External (NXD4, FieldUnitObj)
    External (NXD5, FieldUnitObj)
    External (NXD6, FieldUnitObj)
    External (NXD7, FieldUnitObj)
    External (NXD8, FieldUnitObj)
    External (OSYS, FieldUnitObj)

    Name (\_SB.PCI0.RP05.PXSX.GSTP, Zero)
    Name (\_SB.PCI0.RP05.PXSX.TGXA, Zero)
    Name (\_SB.PCI0.RP05.PXSX.AGXA, Zero)
    Name (\_SB.PCI0.RP05.PXSX.DSWR, Zero)
    Name (\_SB.PCI0.RP05.PXSX.EMDR, Zero)
    Name (\_SB.PCI0.RP05.PXSX.PXGS, Zero)
    Name (\_SB.PCI0.RP05.PXSX.CACD, Zero)
    Name (\_SB.PCI0.RP05.PXSX.CCND, Zero)
    Name (\_SB.PCI0.RP05.PXSX.NACD, Zero)
    Name (\_SB.PCI0.RP05.PXSX.TLSN, Zero)
    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (VBOR, SystemMemory, 0x9CF0F018, 0x00040004)
        Field (VBOR, DWordAcc, Lock, Preserve)
        {
            RVBS,   32, 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   262144, 
            VBS4,   262144, 
            VBS5,   262144, 
            VBS6,   262144, 
            VBS7,   262144, 
            VBS8,   262144
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (SGOP, SystemMemory, 0x9CDDEF98, 0x00000030)
        Field (SGOP, AnyAcc, Lock, Preserve)
        {
            XBAS,   32, 
            EBAS,   32, 
            EECP,   32, 
            DBPA,   32, 
            SGGP,   8, 
            SGMD,   8, 
            PWOK,   8, 
            HLRS,   8, 
            DSEL,   8, 
            ESEL,   8, 
            PSEL,   8, 
            PWEN,   8, 
            PRST,   8, 
            GBAS,   16, 
            APDT,   32, 
            AHDT,   32, 
            IHDT,   32, 
            DSSV,   32, 
            NVVD,   32, 
            OPTF,   8
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        OperationRegion (AOPR, SystemMemory, 0x9CF7BF18, 0x00000005)
        Field (AOPR, AnyAcc, Lock, Preserve)
        {
            SLVS,   8, 
            EXPM,   8, 
            PXDY,   8, 
            PXFD,   8, 
            FDPD,   8
        }
    }

    Scope (\_SB.PCI0.RP05)
    {
        OperationRegion (RPCX, SystemMemory, \_SB.PCI0.RP05.PXSX.DBPA, 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }

        Name (WKEN, Zero)
        OperationRegion (PEGB, SystemMemory, \_SB.PCI0.RP05.PXSX.DBPA, 0x0100)
        Field (PEGB, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
            PCMR,   8, 
            Offset (0xA4), 
            PMST,   2
        }

        OperationRegion (DGPU, SystemMemory, \_SB.PCI0.RP05.PXSX.EBAS, 0x50)
        Field (DGPU, DWordAcc, NoLock, Preserve)
        {
            DDID,   16, 
            Offset (0x4C), 
            SSSV,   32
        }

        OperationRegion (GPXX, SystemIO, 0x0A00, 0x0100)
        Field (GPXX, DWordAcc, NoLock, Preserve)
        {
            Offset (0x80), 
                ,   30, 
            PRGD,   1, 
            Offset (0x98), 
                ,   31, 
            PRRT,   1, 
            Offset (0xB0), 
                ,   31, 
            PREN,   1
        }

        PowerResource (PC05, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Name (MSD3, Zero)
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (MSD3, 0x03))
                {
                    Store (0x07, PCMR)
                    Store (Zero, PMST)
                    \_SB.PCI0.RP05.PXSX.HGON ()
                    Store (\_SB.PCI0.RP05.PXSX.DSSV, SSSV)
                    Store (One, _STA)
                    Store (Zero, MSD3)
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (MSD3, Zero))
                {
                    \_SB.PCI0.RP05.PXSX.HGOF ()
                    Store (Zero, _STA)
                    Store (0x03, MSD3)
                }
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PC05
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PC05
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PC05
        })
        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
        {
        }

        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
        {
        }

        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            If (And (\_SB.OSCO, 0x04))
            {
                Return (0x04)
            }
            Else
            {
                Return (0x03)
            }
        }

        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
        {
            If (Arg1)
            {
                Store (Zero, WKEN)
            }
            Else
            {
                If (LAnd (Arg0, Arg2))
                {
                    Store (One, WKEN)
                }
                Else
                {
                    Store (Zero, WKEN)
                }
            }
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
            {
                0x09, 
                0x04
            })
            OperationRegion (ACAP, PCI_Config, \_SB.PCI0.RP05.PXSX.EECP, 0x14)
            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }
        }
    }

    Scope (\_SB.PCI0.RP05.PXSX)
    {
        Name (ONOF, One)
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        OperationRegion (PCIS, PCI_Config, Zero, 0x0100)
        Field (PCIS, DWordAcc, Lock, Preserve)
        {
            DVID,   16, 
            Offset (0x0B), 
            CBCC,   8
        }

        OperationRegion (PCIM, SystemMemory, \_SB.PCI0.RP05.PXSX.EBAS, 0x0100)
        Field (PCIM, DWordAcc, NoLock, Preserve)
        {
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x4C), 
            WVID,   16, 
            WDID,   16
        }

        OperationRegion (PCAP, PCI_Config, EECP, 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP05.PXSX._ADR)
        }

        Method (HGON, 0, Serialized)
        {
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            Store (One, ONOF)
            If (LEqual (DDID, 0xFFFF))
            {
                H2OP (0xF0)
                Store (One, PREN)
                While (LNot (PRGD))
                {
                    Sleep (One)
                    H2OP (0x55)
                }

                Sleep (0x6F)
                Store (One, PRRT)
                Sleep (0x64)
                Store (Zero, \_SB.PCI0.RP05.LNKD)
                While (LLess (\_SB.PCI0.RP05.LNKS, 0x07))
                {
                    H2OP (0x66)
                    Sleep (0x0A)
                    H2OP (0x33)
                }

                While (LEqual (DDID, 0xFFFF))
                {
                    Sleep (One)
                    H2OP (0xAA)
                }

                Sleep (0x14)
                If (\ECON)
                {
                    Store (One, \_SB.PCI0.LPCB.EC0.GATY)
                }

                Sleep (0x0A)
                H2OP (0xF1)
            }

            Return (Zero)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            HGON ()
            Store (HVID, WVID)
            Store (HDID, WDID)
            Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL)
            Or (And (ELCT, 0x43), And (\_SB.PCI0.RP05.PEGA.LCT1, 0xFFBC), \_SB.PCI0.RP05.PEGA.LCT1)
            Notify (\_SB.PCI0.RP05, Zero)
            H2OP (0xF3)
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            Store (Zero, ONOF)
            H2OP (0xF3)
            If (\ECON)
            {
                Store (Zero, \_SB.PCI0.LPCB.EC0.GATY)
            }

            Sleep (0x0A)
            H2OP (0xF2)
            Store (Zero, PRRT)
            Sleep (0x02)
            Store (Zero, PREN)
            Sleep (0x14)
            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            Store (SVID, HVID)
            Store (SDID, HDID)
            Store (LCTL, ELCT)
            HGOF ()
            Notify (\_SB.PCI0.RP05, Zero)
            Return (Zero)
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            Return (0x0F)
        }

        Method (EPON, 0, Serialized)
        {
            Store (One, ONOF)
            Return (Zero)
        }

        Method (SGPI, 1, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local1)
                    And (Arg0, 0x7F, Arg0)
                    If (LLessEqual (Arg0, 0x5E))
                    {
                        Store (Add (Add (\_SB.PCI0.RP05.PXSX.GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                        OperationRegion (LGPI, SystemIO, Local0, 0x08)
                        Field (LGPI, ByteAcc, NoLock, Preserve)
                        {
                                ,   30, 
                            TEMP,   1
                        }

                        Store (TEMP, Local2)
                    }

                    If (LEqual (Local1, Zero))
                    {
                        Not (Local2, Local2)
                    }

                    Return (And (Local2, One))
                }
            }

            Return (Zero)
        }

        Method (SGPO, 2, Serialized)
        {
            If (And (SGMD, 0x0F))
            {
                If (LEqual (SGGP, One))
                {
                    ShiftRight (Arg0, 0x07, Local1)
                    And (Arg0, 0x7F, Arg0)
                    If (LEqual (Local1, Zero))
                    {
                        Not (Arg1, Arg1)
                    }

                    And (Arg1, One, Arg1)
                    If (LLessEqual (Arg0, 0x5E))
                    {
                        Store (Add (Add (\_SB.PCI0.RP05.PXSX.GBAS, 0x0100), Multiply (Arg0, 0x08)), Local0)
                        OperationRegion (LGPI, SystemIO, Local0, 0x08)
                        Field (LGPI, ByteAcc, NoLock, Preserve)
                        {
                                ,   31, 
                            TEMP,   1
                        }

                        Store (Arg1, TEMP)
                    }
                }
            }
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (\_SB.PCI0.RP05.PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (ONOF, Zero))
                {
                    Return (Zero)
                }
            }
            Else
            {
                If (LEqual (Arg0, One))
                {
                    If (LEqual (ONOF, One))
                    {
                        Return (Zero)
                    }
                }
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Method (ATPX, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP1, Zero, F0SS)
                CreateWordField (TMP1, 0x02, F0IV)
                CreateDWordField (TMP1, 0x04, F0SF)
                Store (0x08, F0SS)
                Store (One, F0IV)
                Store (0xBF, F0SF)
                If (LEqual (And (\_SB.PCI0.RP05.PXSX.SGMD, 0x0F), Zero))
                {
                    Store (Zero, F0SF)
                    Return (TMP1)
                }

                If (LEqual (And (\_SB.PCI0.RP05.PXSX.SGMD, 0x0F), 0x03))
                {
                    Store (Zero, F0SF)
                    Return (TMP1)
                }

                If (LEqual (And (\_SB.PCI0.RP05.PXSX.SGMD, 0x0F), 0x02))
                {
                    Store (0x33, F0SF)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.PXDY, One))
                {
                    And (F0SF, 0xFFFFFFFD, F0SF)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.PXFD, One))
                {
                    Or (F0SF, 0x02, F0SF)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.FDPD, One))
                {
                    Or (F0SF, 0x02, F0SF)
                }

                Return (TMP1)
            }

            If (LEqual (Arg0, One))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP2, Zero, F1SS)
                CreateDWordField (TMP2, 0x02, F1VM)
                CreateDWordField (TMP2, 0x06, F1FG)
                Store (0x0A, F1SS)
                Store (0x7FC0, F1VM)
                If (LEqual (And (\_SB.PCI0.RP05.PXSX.SGMD, 0x0F), 0x02))
                {
                    Store (Zero, F1FG)
                    Store (Zero, F1VM)
                    If (LEqual (\_SB.PCI0.RP05.PXSX.PXDY, One))
                    {
                        Or (F1FG, 0x80, F1FG)
                        Or (F1VM, 0x80, F1VM)
                    }

                    If (LEqual (\_SB.PCI0.RP05.PXSX.PXFD, Zero))
                    {
                        Or (F1FG, 0x0200, F1FG)
                        Or (F1VM, 0x0200, F1VM)
                    }

                    If (LEqual (\_SB.PCI0.RP05.PXSX.FDPD, One))
                    {
                        Or (F1FG, 0x0400, F1FG)
                        Or (F1VM, 0x0400, F1VM)
                        Or (F1FG, 0x0800, F1FG)
                        Or (F1VM, 0x0800, F1VM)
                    }

                    If (LGreaterEqual (OSYS, 0x07DD))
                    {
                        Or (F1FG, 0x4000, F1FG)
                        Or (F1VM, 0x4000, F1VM)
                    }
                }
                Else
                {
                    Store (0x40, F1FG)
                    Store (0x40, F1VM)
                }

                Return (TMP2)
            }

            If (LEqual (Arg0, 0x02))
            {
                CreateWordField (Arg1, Zero, FN2S)
                CreateByteField (Arg1, 0x02, DGPR)
                If (LEqual (DGPR, Zero))
                {
                    \_SB.PCI0.RP05.PXSX._OFF ()
                }

                If (LEqual (DGPR, One))
                {
                    \_SB.PCI0.RP05.PXSX._ON ()
                }

                Return (Zero)
            }

            If (LEqual (Arg0, 0x03))
            {
                CreateWordField (Arg1, Zero, FN3S)
                CreateWordField (Arg1, 0x02, SDMG)
                If (LEqual (SDMG, Zero))
                {
                    \_SB.PCI0.RP05.PXSX.SGPO (\_SB.PCI0.RP05.PXSX.DSEL, Zero)
                }

                If (LEqual (SDMG, One))
                {
                    \_SB.PCI0.RP05.PXSX.SGPO (\_SB.PCI0.RP05.PXSX.DSEL, One)
                }

                Return (Zero)
            }

            If (LEqual (Arg0, 0x04))
            {
                CreateWordField (Arg1, Zero, FN4S)
                CreateWordField (Arg1, 0x02, SIMG)
                If (LEqual (SIMG, Zero))
                {
                    \_SB.PCI0.RP05.PXSX.SGPO (\_SB.PCI0.RP05.PXSX.ESEL, Zero)
                }

                If (LEqual (SIMG, One))
                {
                    \_SB.PCI0.RP05.PXSX.SGPO (\_SB.PCI0.RP05.PXSX.ESEL, One)
                }

                Return (Zero)
            }

            If (LEqual (Arg0, 0x05))
            {
                CreateWordField (Arg1, Zero, FN5S)
                CreateWordField (Arg1, 0x02, TGFX)
                Store (TGFX, \_SB.PCI0.RP05.PXSX.TGXA)
                Store (One, \_SB.PCI0.RP05.PXSX.GSTP)
                Return (Zero)
            }

            If (LEqual (Arg0, 0x06))
            {
                CreateWordField (Arg1, Zero, FN6S)
                CreateWordField (Arg1, 0x02, AGFX)
                Store (AGFX, \_SB.PCI0.RP05.PXSX.AGXA)
                Store (Zero, \_SB.PCI0.RP05.PXSX.GSTP)
                Return (Zero)
            }

            If (LEqual (Arg0, 0x08))
            {
                Name (TMP3, Buffer (0x0100)
                {
                    /* 0000 */  0x0E, 0x00, 0x46, 0x00, 0x07, 0x01, 0x00, 0x00,
                    /* 0008 */  0x01, 0x07, 0x01, 0x01, 0x00, 0x01, 0x05, 0x00,
                    /* 0010 */  0x00, 0x00, 0x04, 0x05, 0x00, 0x01, 0x10, 0x01,
                    /* 0018 */  0x07, 0x03, 0x00, 0x00, 0x03, 0x07, 0x03, 0x01,
                    /* 0020 */  0x10, 0x02, 0x07, 0x07, 0x00, 0x01, 0x03, 0x07,
                    /* 0028 */  0x07, 0x01, 0x10, 0x02, 0x07, 0x09, 0x00, 0x02,
                    /* 0030 */  0x03, 0x07, 0x09, 0x01, 0x20, 0x02, 0x07, 0x0A,
                    /* 0038 */  0x00, 0x03, 0x03, 0x07, 0x0A, 0x01, 0x30, 0x02,
                    /* 0040 */  0x07, 0x0B, 0x00, 0x04, 0x03, 0x07, 0x0B, 0x01,
                    /* 0048 */  0x30, 0x02, 0x07, 0x0C, 0x00, 0x06, 0x03       
                })
                Name (SGFL, One)
                Name (MXD1, 0x00030301)
                Name (MXD2, 0x00030307)
                Name (MXD3, 0x03030308)
                Name (MXD4, 0x03030304)
                Name (MXD5, 0x03030305)
                Name (MXD6, 0x0303030A)
                Name (MXD7, 0x03030306)
                Name (MXD8, 0x00030302)
                Name (MXD9, Zero)
                CreateWordField (TMP3, Zero, ATNO)
                CreateWordField (TMP3, 0x02, ATSZ)
                Store (ADPM (MXD2, One), Index (TMP3, 0x0E))
                Store (ADPM (MXD2, One), Index (TMP3, 0x13))
                Store (ADPM (MXD3, One), Index (TMP3, 0x18))
                Store (ADPM (MXD3, 0x02), Index (TMP3, 0x1D))
                Store (ADPM (MXD4, One), Index (TMP3, 0x22))
                Store (ADPM (MXD4, 0x02), Index (TMP3, 0x27))
                Store (ADPM (MXD5, One), Index (TMP3, 0x2C))
                Store (ADPM (MXD5, 0x02), Index (TMP3, 0x31))
                Store (ADPM (MXD6, One), Index (TMP3, 0x36))
                Store (ADPM (MXD6, 0x02), Index (TMP3, 0x3B))
                Store (ADPM (MXD7, One), Index (TMP3, 0x40))
                Store (ADPM (MXD7, 0x02), Index (TMP3, 0x45))
                If (And (SGFL, One))
                {
                    Store (Add (ATNO, One), ATNO)
                    Store (Add (ATSZ, 0x05), ATSZ)
                }

                Return (TMP3)
            }

            Return (Zero)
        }

        Method (ADPM, 2, Serialized)
        {
            Store (Zero, Local1)
            ShiftRight (Arg0, 0x10, Local0)
            If (LEqual (Arg1, One))
            {
                Or (And (Local0, One), Local1, Local1)
            }
            Else
            {
                Or (ShiftRight (And (Local0, 0x02), One), Local1, Local1)
            }

            ShiftLeft (Local1, One, Local1)
            ShiftRight (Arg0, 0x18, Local0)
            If (LEqual (Arg1, One))
            {
                Or (And (Local0, One), Local1, Local1)
            }
            Else
            {
                Or (ShiftRight (And (Local0, 0x02), One), Local1, Local1)
            }

            ShiftLeft (Local1, One, Local1)
            ShiftRight (Arg0, 0x08, Local0)
            If (LEqual (Arg1, One))
            {
                Or (And (Local0, One), Local1, Local1)
            }
            Else
            {
                Or (ShiftRight (And (Local0, 0x02), One), Local1, Local1)
            }

            Return (Local1)
        }

        Method (ATRM, 2, Serialized)
        {
            Name (_T_0, Zero)  // _T_x: Emitted by ASL Compiler
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            Name (VROM, Buffer (Local1)
            {
                 0x00                                           
            })
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Arg0, \_SB.PCI0.RP05.PXSX.RVBS))
            {
                Return (VROM)
            }

            Add (Arg0, Arg1, Local2)
            If (LGreater (Local2, \_SB.PCI0.RP05.PXSX.RVBS))
            {
                Subtract (\_SB.PCI0.RP05.PXSX.RVBS, Local0, Local1)
            }

            Divide (Local0, 0x8000, Local3, Local4)
            While (One)
            {
                Store (Local4, _T_0)
                If (LEqual (_T_0, Zero))
                {
                    Store (\_SB.PCI0.RP05.PXSX.VBS1, Local5)
                }
                Else
                {
                    If (LEqual (_T_0, One))
                    {
                        Store (\_SB.PCI0.RP05.PXSX.VBS2, Local5)
                    }
                    Else
                    {
                        If (LEqual (_T_0, 0x02))
                        {
                            Store (\_SB.PCI0.RP05.PXSX.VBS3, Local5)
                        }
                        Else
                        {
                            If (LEqual (_T_0, 0x03))
                            {
                                Store (\_SB.PCI0.RP05.PXSX.VBS4, Local5)
                            }
                            Else
                            {
                                If (LEqual (_T_0, 0x04))
                                {
                                    Store (\_SB.PCI0.RP05.PXSX.VBS5, Local5)
                                }
                                Else
                                {
                                    If (LEqual (_T_0, 0x05))
                                    {
                                        Store (\_SB.PCI0.RP05.PXSX.VBS6, Local5)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x06))
                                        {
                                            Store (\_SB.PCI0.RP05.PXSX.VBS7, Local5)
                                        }
                                        Else
                                        {
                                            If (LEqual (_T_0, 0x07))
                                            {
                                                Store (\_SB.PCI0.RP05.PXSX.VBS8, Local5)
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }

                Break
            }

            Multiply (0x8000, Local4, Local4)
            Subtract (Local0, Local4, Local0)
            Mid (Local5, Local0, Local1, VROM)
            Return (VROM)
        }
    }

    Scope (\_SB.PCI0.GFX0)
    {
        Name (\_SB.PCI0.RP05.PXSX.NTLE, 0x0F)
        Name (\_SB.PCI0.RP05.PXSX.TLE1, 0x02)
        Name (\_SB.PCI0.RP05.PXSX.TLE2, One)
        Name (\_SB.PCI0.RP05.PXSX.TLE3, 0x08)
        Name (\_SB.PCI0.RP05.PXSX.TLE4, 0x80)
        Name (\_SB.PCI0.RP05.PXSX.TLE5, 0x0200)
        Name (\_SB.PCI0.RP05.PXSX.TLE6, 0x0400)
        Name (\_SB.PCI0.RP05.PXSX.TLE7, 0x0800)
        Name (\_SB.PCI0.RP05.PXSX.TLE8, 0x03)
        Name (\_SB.PCI0.RP05.PXSX.TLE9, 0x09)
        Name (\_SB.PCI0.RP05.PXSX.TL10, 0x81)
        Name (\_SB.PCI0.RP05.PXSX.TL11, 0x0201)
        Name (\_SB.PCI0.RP05.PXSX.TL12, 0x0401)
        Name (\_SB.PCI0.RP05.PXSX.TL13, 0x0801)
        Name (\_SB.PCI0.RP05.PXSX.TL14, Zero)
        Name (\_SB.PCI0.RP05.PXSX.TL15, Zero)
        Method (ATIF, 2, Serialized)
        {
            If (LEqual (Arg0, Zero))
            {
                Name (TMP0, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP0, Zero, F0SS)
                CreateWordField (TMP0, 0x02, F0IV)
                CreateDWordField (TMP0, 0x04, F0SN)
                CreateDWordField (TMP0, 0x08, F0SF)
                Store (0x0C, F0SS)
                Store (One, F0IV)
                Store (0x0141, F0SN)
                Store (0x07, F0SF)
                If (LEqual (And (\_SB.PCI0.RP05.PXSX.SGMD, 0x0F), 0x02))
                {
                    Store (Zero, F0SN)
                    Store (Zero, F0SF)
                }

                Return (TMP0)
            }

            If (LEqual (Arg0, One))
            {
                Name (TMP1, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP1, Zero, F1SS)
                CreateDWordField (TMP1, 0x02, F1VF)
                CreateDWordField (TMP1, 0x06, F1FG)
                Store (0x0A, F1SS)
                Store (0x03, F1VF)
                Store (One, F1FG)
                Return (TMP1)
            }

            If (LEqual (Arg0, 0x02))
            {
                Name (TMP2, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP2, Zero, F2SS)
                CreateDWordField (TMP2, 0x02, F2PR)
                CreateByteField (TMP2, 0x06, F2EM)
                CreateByteField (TMP2, 0x07, F2TG)
                CreateByteField (TMP2, 0x08, F2SI)
                CreateByteField (TMP2, 0x09, F2FG)
                CreateByteField (TMP2, 0x0A, F2FI)
                CreateByteField (TMP2, 0x0B, F2SP)
                Store (0x0A, F2SS)
                Name (STS2, Zero)
                Or (\_SB.PCI0.RP05.PXSX.DSWR, STS2, STS2)
                Or (ShiftLeft (\_SB.PCI0.RP05.PXSX.PXGS, 0x06), STS2, STS2)
                Store (STS2, F2PR)
                Store (Zero, \_SB.PCI0.RP05.PXSX.DSWR)
                Store (Zero, \_SB.PCI0.RP05.PXSX.PXGS)
                Or (F2PR, 0x0100, F2PR)
                Return (TMP2)
            }

            If (LEqual (Arg0, 0x03))
            {
                Name (TMP3, Buffer (0x0100)
                {
                     0x00                                           
                })
                CreateWordField (TMP3, Zero, F3SS)
                CreateWordField (TMP3, 0x02, F3SD)
                CreateWordField (Arg1, Zero, AI3S)
                CreateWordField (Arg1, 0x02, SLDS)
                CreateWordField (Arg1, 0x04, CODS)
                Store (SLDS, \_SB.PCI0.RP05.PXSX.CACD)
                Store (CODS, \_SB.PCI0.RP05.PXSX.CCND)
                If (\ECON)
                {
                    If (LEqual (\_SB.PCI0.LPCB.EC0.LSTE, One))
                    {
                        Or (\_SB.PCI0.RP05.PXSX.CCND, One, \_SB.PCI0.RP05.PXSX.CCND)
                    }
                }

                Store (0x04, F3SS)
                Store (CTOI (\_SB.PCI0.RP05.PXSX.CACD), \_SB.PCI0.RP05.PXSX.TLSN)
                Store (\_SB.PCI0.RP05.PXSX.CACD, Local1)
                Store (\_SB.PCI0.RP05.PXSX.NTLE, Local0)
                While (Local0)
                {
                    Store (NATL (\_SB.PCI0.RP05.PXSX.TLSN), Local1)
                    If (LNotEqual (Local1, Zero))
                    {
                        If (LEqual (And (Local1, \_SB.PCI0.RP05.PXSX.CCND), Local1))
                        {
                            Store (One, Local0)
                        }
                    }

                    Decrement (Local0)
                    Increment (\_SB.PCI0.RP05.PXSX.TLSN)
                    If (LGreater (\_SB.PCI0.RP05.PXSX.TLSN, \_SB.PCI0.RP05.PXSX.NTLE))
                    {
                        Store (One, \_SB.PCI0.RP05.PXSX.TLSN)
                    }
                }

                SNXD (Local1)
                Store (Local1, \_SB.PCI0.RP05.PXSX.NACD)
                Store (\_SB.PCI0.RP05.PXSX.NACD, F3SD)
                Return (TMP3)
            }

            Return (Zero)
        }

        Method (CTOI, 1, NotSerialized)
        {
            If (LNotEqual (\_SB.PCI0.RP05.PXSX.NTLE, Zero))
            {
                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE1, Arg0))
                {
                    Return (One)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE2, Arg0))
                {
                    Return (0x02)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE3, Arg0))
                {
                    Return (0x03)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE4, Arg0))
                {
                    Return (0x04)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE5, Arg0))
                {
                    Return (0x05)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE6, Arg0))
                {
                    Return (0x06)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE7, Arg0))
                {
                    Return (0x07)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE8, Arg0))
                {
                    Return (0x08)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TLE9, Arg0))
                {
                    Return (0x09)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL10, Arg0))
                {
                    Return (0x0A)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL11, Arg0))
                {
                    Return (0x0B)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL12, Arg0))
                {
                    Return (0x0C)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL13, Arg0))
                {
                    Return (0x0D)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL14, Arg0))
                {
                    Return (0x0E)
                }

                If (LEqual (\_SB.PCI0.RP05.PXSX.TL15, Arg0))
                {
                    Return (0x0F)
                }
            }

            Return (Zero)
        }

        Method (NATL, 1, NotSerialized)
        {
            If (LNotEqual (\_SB.PCI0.RP05.PXSX.NTLE, Zero))
            {
                If (LEqual (Arg0, One))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE2)
                }

                If (LEqual (Arg0, 0x02))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE3)
                }

                If (LEqual (Arg0, 0x03))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE4)
                }

                If (LEqual (Arg0, 0x04))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE5)
                }

                If (LEqual (Arg0, 0x05))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE6)
                }

                If (LEqual (Arg0, 0x06))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE7)
                }

                If (LEqual (Arg0, 0x07))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE8)
                }

                If (LEqual (Arg0, 0x08))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE9)
                }

                If (LEqual (Arg0, 0x09))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL10)
                }

                If (LEqual (Arg0, 0x0A))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL11)
                }

                If (LEqual (Arg0, 0x0B))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL12)
                }

                If (LEqual (Arg0, 0x0C))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL13)
                }

                If (LEqual (Arg0, 0x0D))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL14)
                }

                If (LEqual (Arg0, 0x0E))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TL15)
                }

                If (LEqual (Arg0, 0x0F))
                {
                    Return (\_SB.PCI0.RP05.PXSX.TLE1)
                }
            }

            Return (Zero)
        }

        Method (INDL, 0, Serialized)
        {
            Store (Zero, NXD1)
            Store (Zero, NXD2)
            Store (Zero, NXD3)
            Store (Zero, NXD4)
            Store (Zero, NXD5)
            Store (Zero, NXD6)
            Store (Zero, NXD7)
            Store (Zero, NXD8)
        }

        Method (SNXD, 1, Serialized)
        {
            INDL ()
            Store (Arg0, Local0)
            If (And (Local0, 0x02))
            {
                Store (One, NXD1)
            }

            If (And (Local0, One))
            {
                Store (One, NXD2)
            }

            If (And (Local0, 0x08))
            {
                Store (One, NXD3)
            }

            If (And (Local0, 0x80))
            {
                Store (One, NXD4)
            }

            If (And (Local0, 0x0200))
            {
                Store (One, NXD5)
            }

            If (And (Local0, 0x0400))
            {
                Store (One, NXD6)
            }

            If (And (Local0, 0x0800))
            {
                Store (One, NXD7)
            }
        }
    }
}

