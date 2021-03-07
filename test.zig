// generated using gen_zig_from_svd.py
// DO NOT EDIT
// based on STM32F411.svd version 1.1
const assert = @import("std").testing.expectEqual;
const MMIO = @import("../../common/mmio.zig").MMIO;
const name = "STM32F411";
pub const ADC_Common = extern struct {
    pub const Address: u32 = 0x40012300;
    pub const CSR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 ADC Common status register
        AWD1: bool, // bit offset: 0 desc: Analog watchdog flag of ADC 1
        EOC1: bool, // bit offset: 1 desc: End of conversion of ADC 1
        JEOC1: bool, // bit offset: 2 desc: Injected channel end of conversion of ADC 1
        JSTRT1: bool, // bit offset: 3 desc: Injected channel Start flag of ADC 1
        STRT1: bool, // bit offset: 4 desc: Regular channel Start flag of ADC 1
        OVR1: bool, // bit offset: 5 desc: Overrun flag of ADC 1
        reserved0: u2,
        AWD2: bool, // bit offset: 8 desc: Analog watchdog flag of ADC 2
        EOC2: bool, // bit offset: 9 desc: End of conversion of ADC 2
        JEOC2: bool, // bit offset: 10 desc: Injected channel end of conversion of ADC 2
        JSTRT2: bool, // bit offset: 11 desc: Injected channel Start flag of ADC 2
        STRT2: bool, // bit offset: 12 desc: Regular channel Start flag of ADC 2
        OVR2: bool, // bit offset: 13 desc: Overrun flag of ADC 2
        reserved1: u2,
        AWD3: bool, // bit offset: 16 desc: Analog watchdog flag of ADC 3
        EOC3: bool, // bit offset: 17 desc: End of conversion of ADC 3
        JEOC3: bool, // bit offset: 18 desc: Injected channel end of conversion of ADC 3
        JSTRT3: bool, // bit offset: 19 desc: Injected channel Start flag of ADC 3
        STRT3: bool, // bit offset: 20 desc: Regular channel Start flag of ADC 3
        OVR3: bool, // bit offset: 21 desc: Overrun flag of ADC3
        padding: u9,
    });
    pub const CCR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 ADC common control register
        reserved0: u8,
        DELAY: u4, // bit offset: 8 desc: Delay between 2 sampling phases
        reserved1: u1,
        DDS: bool, // bit offset: 13 desc: DMA disable selection for multi-ADC mode
        DMA: u2, // bit offset: 14 desc: Direct memory access mode for multi ADC mode
        ADCPRE: u2, // bit offset: 16 desc: ADC prescaler
        reserved2: u4,
        VBATE: bool, // bit offset: 22 desc: VBAT enable
        TSVREFE: bool, // bit offset: 23 desc: Temperature sensor and VREFINT enable
        padding: u7,
    });
};
pub const ADC1 = extern struct {
    pub const Address: u32 = 0x40012000;
    pub const SR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 status register
        AWD: bool, // bit offset: 0 desc: Analog watchdog flag
        EOC: bool, // bit offset: 1 desc: Regular channel end of conversion
        JEOC: bool, // bit offset: 2 desc: Injected channel end of conversion
        JSTRT: bool, // bit offset: 3 desc: Injected channel start flag
        STRT: bool, // bit offset: 4 desc: Regular channel start flag
        OVR: bool, // bit offset: 5 desc: Overrun
        padding: u25,
    });
    pub const CR1 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 1
        AWDCH: u5, // bit offset: 0 desc: Analog watchdog channel select bits
        EOCIE: bool, // bit offset: 5 desc: Interrupt enable for EOC
        AWDIE: bool, // bit offset: 6 desc: Analog watchdog interrupt enable
        JEOCIE: bool, // bit offset: 7 desc: Interrupt enable for injected channels
        SCAN: bool, // bit offset: 8 desc: Scan mode
        AWDSGL: bool, // bit offset: 9 desc: Enable the watchdog on a single channel in scan mode
        JAUTO: bool, // bit offset: 10 desc: Automatic injected group conversion
        DISCEN: bool, // bit offset: 11 desc: Discontinuous mode on regular channels
        JDISCEN: bool, // bit offset: 12 desc: Discontinuous mode on injected channels
        DISCNUM: u3, // bit offset: 13 desc: Discontinuous mode channel count
        reserved0: u6,
        JAWDEN: bool, // bit offset: 22 desc: Analog watchdog enable on injected channels
        AWDEN: bool, // bit offset: 23 desc: Analog watchdog enable on regular channels
        RES: u2, // bit offset: 24 desc: Resolution
        OVRIE: bool, // bit offset: 26 desc: Overrun interrupt enable
        padding: u4,
    });
    pub const CR2 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 control register 2
        ADON: bool, // bit offset: 0 desc: A/D Converter ON / OFF
        CONT: bool, // bit offset: 1 desc: Continuous conversion
        reserved0: u6,
        DMA: bool, // bit offset: 8 desc: Direct memory access mode (for single ADC mode)
        DDS: bool, // bit offset: 9 desc: DMA disable selection (for single ADC mode)
        EOCS: bool, // bit offset: 10 desc: End of conversion selection
        ALIGN: bool, // bit offset: 11 desc: Data alignment
        reserved1: u4,
        JEXTSEL: u4, // bit offset: 16 desc: External event select for injected group
        JEXTEN: u2, // bit offset: 20 desc: External trigger enable for injected channels
        JSWSTART: bool, // bit offset: 22 desc: Start conversion of injected channels
        reserved2: u1,
        EXTSEL: u4, // bit offset: 24 desc: External event select for regular group
        EXTEN: u2, // bit offset: 28 desc: External trigger enable for regular channels
        SWSTART: bool, // bit offset: 30 desc: Start conversion of regular channels
        padding: u0,
    });
    pub const SMPR1 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 sample time register 1
        SMPx_x: u32, // bit offset: 0 desc: Sample time bits
    });
    pub const SMPR2 = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 sample time register 2
        SMPx_x: u32, // bit offset: 0 desc: Sample time bits
    });
    pub const JOFR1 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 injected channel data offset register x
        JOFFSET1: u12, // bit offset: 0 desc: Data offset for injected channel x
        padding: u19,
    });
    pub const JOFR2 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 injected channel data offset register x
        JOFFSET2: u12, // bit offset: 0 desc: Data offset for injected channel x
        padding: u19,
    });
    pub const JOFR3 = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 injected channel data offset register x
        JOFFSET3: u12, // bit offset: 0 desc: Data offset for injected channel x
        padding: u19,
    });
    pub const JOFR4 = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 injected channel data offset register x
        JOFFSET4: u12, // bit offset: 0 desc: Data offset for injected channel x
        padding: u19,
    });
    pub const HTR = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 watchdog higher threshold register
        HT: u12, // bit offset: 0 desc: Analog watchdog higher threshold
        padding: u19,
    });
    pub const LTR = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 watchdog lower threshold register
        LT: u12, // bit offset: 0 desc: Analog watchdog lower threshold
        padding: u19,
    });
    pub const SQR1 = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 regular sequence register 1
        SQ13: u5, // bit offset: 0 desc: 13th conversion in regular sequence
        SQ14: u5, // bit offset: 5 desc: 14th conversion in regular sequence
        SQ15: u5, // bit offset: 10 desc: 15th conversion in regular sequence
        SQ16: u5, // bit offset: 15 desc: 16th conversion in regular sequence
        L: u4, // bit offset: 20 desc: Regular channel sequence length
        padding: u7,
    });
    pub const SQR2 = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 regular sequence register 2
        SQ7: u5, // bit offset: 0 desc: 7th conversion in regular sequence
        SQ8: u5, // bit offset: 5 desc: 8th conversion in regular sequence
        SQ9: u5, // bit offset: 10 desc: 9th conversion in regular sequence
        SQ10: u5, // bit offset: 15 desc: 10th conversion in regular sequence
        SQ11: u5, // bit offset: 20 desc: 11th conversion in regular sequence
        SQ12: u5, // bit offset: 25 desc: 12th conversion in regular sequence
        padding: u1,
    });
    pub const SQR3 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 regular sequence register 3
        SQ1: u5, // bit offset: 0 desc: 1st conversion in regular sequence
        SQ2: u5, // bit offset: 5 desc: 2nd conversion in regular sequence
        SQ3: u5, // bit offset: 10 desc: 3rd conversion in regular sequence
        SQ4: u5, // bit offset: 15 desc: 4th conversion in regular sequence
        SQ5: u5, // bit offset: 20 desc: 5th conversion in regular sequence
        SQ6: u5, // bit offset: 25 desc: 6th conversion in regular sequence
        padding: u1,
    });
    pub const JSQR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 injected sequence register
        JSQ1: u5, // bit offset: 0 desc: 1st conversion in injected sequence
        JSQ2: u5, // bit offset: 5 desc: 2nd conversion in injected sequence
        JSQ3: u5, // bit offset: 10 desc: 3rd conversion in injected sequence
        JSQ4: u5, // bit offset: 15 desc: 4th conversion in injected sequence
        JL: u2, // bit offset: 20 desc: Injected sequence length
        padding: u9,
    });
    pub const JDR1 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 injected data register x
        JDATA: u16, // bit offset: 0 desc: Injected data
        padding: u15,
    });
    pub const JDR2 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 injected data register x
        JDATA: u16, // bit offset: 0 desc: Injected data
        padding: u15,
    });
    pub const JDR3 = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 injected data register x
        JDATA: u16, // bit offset: 0 desc: Injected data
        padding: u15,
    });
    pub const JDR4 = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 injected data register x
        JDATA: u16, // bit offset: 0 desc: Injected data
        padding: u15,
    });
    pub const DR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 regular data register
        DATA: u16, // bit offset: 0 desc: Regular data
        padding: u15,
    });
};
pub const CRC = extern struct {
    pub const Address: u32 = 0x40023000;
    pub const DR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Data register
        DR: u32, // bit offset: 0 desc: Data Register
    });
    pub const IDR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Independent Data register
        IDR: u8, // bit offset: 0 desc: Independent Data register
        padding: u23,
    });
    pub const CR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Control register
        CR: bool, // bit offset: 0 desc: Control regidter
        padding: u30,
    });
};
pub const DBG = extern struct {
    pub const Address: u32 = 0xe0042000;
    pub const DBGMCU_IDCODE = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 IDCODE
        DEV_ID: u12, // bit offset: 0 desc: DEV_ID
        reserved0: u4,
        REV_ID: u16, // bit offset: 16 desc: REV_ID
    });
    pub const DBGMCU_CR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Control Register
        DBG_SLEEP: bool, // bit offset: 0 desc: DBG_SLEEP
        DBG_STOP: bool, // bit offset: 1 desc: DBG_STOP
        DBG_STANDBY: bool, // bit offset: 2 desc: DBG_STANDBY
        reserved0: u2,
        TRACE_IOEN: bool, // bit offset: 5 desc: TRACE_IOEN
        TRACE_MODE: u2, // bit offset: 6 desc: TRACE_MODE
        padding: u23,
    });
    pub const DBGMCU_APB1_FZ = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Debug MCU APB1 Freeze registe
        DBG_TIM2_STOP: bool, // bit offset: 0 desc: DBG_TIM2_STOP
        DBG_TIM3_STOP: bool, // bit offset: 1 desc: DBG_TIM3 _STOP
        DBG_TIM4_STOP: bool, // bit offset: 2 desc: DBG_TIM4_STOP
        DBG_TIM5_STOP: bool, // bit offset: 3 desc: DBG_TIM5_STOP
        reserved0: u6,
        DBG_RTC_Stop: bool, // bit offset: 10 desc: RTC stopped when Core is halted
        DBG_WWDG_STOP: bool, // bit offset: 11 desc: DBG_WWDG_STOP
        DBG_IWDEG_STOP: bool, // bit offset: 12 desc: DBG_IWDEG_STOP
        reserved1: u8,
        DBG_I2C1_SMBUS_TIMEOUT: bool, // bit offset: 21 desc: DBG_J2C1_SMBUS_TIMEOUT
        DBG_I2C2_SMBUS_TIMEOUT: bool, // bit offset: 22 desc: DBG_J2C2_SMBUS_TIMEOUT
        DBG_I2C3SMBUS_TIMEOUT: bool, // bit offset: 23 desc: DBG_J2C3SMBUS_TIMEOUT
        padding: u7,
    });
    pub const DBGMCU_APB2_FZ = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Debug MCU APB2 Freeze registe
        DBG_TIM1_STOP: bool, // bit offset: 0 desc: TIM1 counter stopped when core is halted
        reserved0: u15,
        DBG_TIM9_STOP: bool, // bit offset: 16 desc: TIM9 counter stopped when core is halted
        DBG_TIM10_STOP: bool, // bit offset: 17 desc: TIM10 counter stopped when core is halted
        DBG_TIM11_STOP: bool, // bit offset: 18 desc: TIM11 counter stopped when core is halted
        padding: u12,
    });
};
pub const EXTI = extern struct {
    pub const Address: u32 = 0x40013c00;
    pub const IMR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Interrupt mask register (EXTI_IMR)
        MR0: bool, // bit offset: 0 desc: Interrupt Mask on line 0
        MR1: bool, // bit offset: 1 desc: Interrupt Mask on line 1
        MR2: bool, // bit offset: 2 desc: Interrupt Mask on line 2
        MR3: bool, // bit offset: 3 desc: Interrupt Mask on line 3
        MR4: bool, // bit offset: 4 desc: Interrupt Mask on line 4
        MR5: bool, // bit offset: 5 desc: Interrupt Mask on line 5
        MR6: bool, // bit offset: 6 desc: Interrupt Mask on line 6
        MR7: bool, // bit offset: 7 desc: Interrupt Mask on line 7
        MR8: bool, // bit offset: 8 desc: Interrupt Mask on line 8
        MR9: bool, // bit offset: 9 desc: Interrupt Mask on line 9
        MR10: bool, // bit offset: 10 desc: Interrupt Mask on line 10
        MR11: bool, // bit offset: 11 desc: Interrupt Mask on line 11
        MR12: bool, // bit offset: 12 desc: Interrupt Mask on line 12
        MR13: bool, // bit offset: 13 desc: Interrupt Mask on line 13
        MR14: bool, // bit offset: 14 desc: Interrupt Mask on line 14
        MR15: bool, // bit offset: 15 desc: Interrupt Mask on line 15
        MR16: bool, // bit offset: 16 desc: Interrupt Mask on line 16
        MR17: bool, // bit offset: 17 desc: Interrupt Mask on line 17
        MR18: bool, // bit offset: 18 desc: Interrupt Mask on line 18
        MR19: bool, // bit offset: 19 desc: Interrupt Mask on line 19
        MR20: bool, // bit offset: 20 desc: Interrupt Mask on line 20
        MR21: bool, // bit offset: 21 desc: Interrupt Mask on line 21
        MR22: bool, // bit offset: 22 desc: Interrupt Mask on line 22
        padding: u8,
    });
    pub const EMR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Event mask register (EXTI_EMR)
        MR0: bool, // bit offset: 0 desc: Event Mask on line 0
        MR1: bool, // bit offset: 1 desc: Event Mask on line 1
        MR2: bool, // bit offset: 2 desc: Event Mask on line 2
        MR3: bool, // bit offset: 3 desc: Event Mask on line 3
        MR4: bool, // bit offset: 4 desc: Event Mask on line 4
        MR5: bool, // bit offset: 5 desc: Event Mask on line 5
        MR6: bool, // bit offset: 6 desc: Event Mask on line 6
        MR7: bool, // bit offset: 7 desc: Event Mask on line 7
        MR8: bool, // bit offset: 8 desc: Event Mask on line 8
        MR9: bool, // bit offset: 9 desc: Event Mask on line 9
        MR10: bool, // bit offset: 10 desc: Event Mask on line 10
        MR11: bool, // bit offset: 11 desc: Event Mask on line 11
        MR12: bool, // bit offset: 12 desc: Event Mask on line 12
        MR13: bool, // bit offset: 13 desc: Event Mask on line 13
        MR14: bool, // bit offset: 14 desc: Event Mask on line 14
        MR15: bool, // bit offset: 15 desc: Event Mask on line 15
        MR16: bool, // bit offset: 16 desc: Event Mask on line 16
        MR17: bool, // bit offset: 17 desc: Event Mask on line 17
        MR18: bool, // bit offset: 18 desc: Event Mask on line 18
        MR19: bool, // bit offset: 19 desc: Event Mask on line 19
        MR20: bool, // bit offset: 20 desc: Event Mask on line 20
        MR21: bool, // bit offset: 21 desc: Event Mask on line 21
        MR22: bool, // bit offset: 22 desc: Event Mask on line 22
        padding: u8,
    });
    pub const RTSR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Rising Trigger selection register (EXTI_RTSR)
        TR0: bool, // bit offset: 0 desc: Rising trigger event configuration of line 0
        TR1: bool, // bit offset: 1 desc: Rising trigger event configuration of line 1
        TR2: bool, // bit offset: 2 desc: Rising trigger event configuration of line 2
        TR3: bool, // bit offset: 3 desc: Rising trigger event configuration of line 3
        TR4: bool, // bit offset: 4 desc: Rising trigger event configuration of line 4
        TR5: bool, // bit offset: 5 desc: Rising trigger event configuration of line 5
        TR6: bool, // bit offset: 6 desc: Rising trigger event configuration of line 6
        TR7: bool, // bit offset: 7 desc: Rising trigger event configuration of line 7
        TR8: bool, // bit offset: 8 desc: Rising trigger event configuration of line 8
        TR9: bool, // bit offset: 9 desc: Rising trigger event configuration of line 9
        TR10: bool, // bit offset: 10 desc: Rising trigger event configuration of line 10
        TR11: bool, // bit offset: 11 desc: Rising trigger event configuration of line 11
        TR12: bool, // bit offset: 12 desc: Rising trigger event configuration of line 12
        TR13: bool, // bit offset: 13 desc: Rising trigger event configuration of line 13
        TR14: bool, // bit offset: 14 desc: Rising trigger event configuration of line 14
        TR15: bool, // bit offset: 15 desc: Rising trigger event configuration of line 15
        TR16: bool, // bit offset: 16 desc: Rising trigger event configuration of line 16
        TR17: bool, // bit offset: 17 desc: Rising trigger event configuration of line 17
        TR18: bool, // bit offset: 18 desc: Rising trigger event configuration of line 18
        TR19: bool, // bit offset: 19 desc: Rising trigger event configuration of line 19
        TR20: bool, // bit offset: 20 desc: Rising trigger event configuration of line 20
        TR21: bool, // bit offset: 21 desc: Rising trigger event configuration of line 21
        TR22: bool, // bit offset: 22 desc: Rising trigger event configuration of line 22
        padding: u8,
    });
    pub const FTSR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Falling Trigger selection register (EXTI_FTSR)
        TR0: bool, // bit offset: 0 desc: Falling trigger event configuration of line 0
        TR1: bool, // bit offset: 1 desc: Falling trigger event configuration of line 1
        TR2: bool, // bit offset: 2 desc: Falling trigger event configuration of line 2
        TR3: bool, // bit offset: 3 desc: Falling trigger event configuration of line 3
        TR4: bool, // bit offset: 4 desc: Falling trigger event configuration of line 4
        TR5: bool, // bit offset: 5 desc: Falling trigger event configuration of line 5
        TR6: bool, // bit offset: 6 desc: Falling trigger event configuration of line 6
        TR7: bool, // bit offset: 7 desc: Falling trigger event configuration of line 7
        TR8: bool, // bit offset: 8 desc: Falling trigger event configuration of line 8
        TR9: bool, // bit offset: 9 desc: Falling trigger event configuration of line 9
        TR10: bool, // bit offset: 10 desc: Falling trigger event configuration of line 10
        TR11: bool, // bit offset: 11 desc: Falling trigger event configuration of line 11
        TR12: bool, // bit offset: 12 desc: Falling trigger event configuration of line 12
        TR13: bool, // bit offset: 13 desc: Falling trigger event configuration of line 13
        TR14: bool, // bit offset: 14 desc: Falling trigger event configuration of line 14
        TR15: bool, // bit offset: 15 desc: Falling trigger event configuration of line 15
        TR16: bool, // bit offset: 16 desc: Falling trigger event configuration of line 16
        TR17: bool, // bit offset: 17 desc: Falling trigger event configuration of line 17
        TR18: bool, // bit offset: 18 desc: Falling trigger event configuration of line 18
        TR19: bool, // bit offset: 19 desc: Falling trigger event configuration of line 19
        TR20: bool, // bit offset: 20 desc: Falling trigger event configuration of line 20
        TR21: bool, // bit offset: 21 desc: Falling trigger event configuration of line 21
        TR22: bool, // bit offset: 22 desc: Falling trigger event configuration of line 22
        padding: u8,
    });
    pub const SWIER = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Software interrupt event register (EXTI_SWIER)
        SWIER0: bool, // bit offset: 0 desc: Software Interrupt on line 0
        SWIER1: bool, // bit offset: 1 desc: Software Interrupt on line 1
        SWIER2: bool, // bit offset: 2 desc: Software Interrupt on line 2
        SWIER3: bool, // bit offset: 3 desc: Software Interrupt on line 3
        SWIER4: bool, // bit offset: 4 desc: Software Interrupt on line 4
        SWIER5: bool, // bit offset: 5 desc: Software Interrupt on line 5
        SWIER6: bool, // bit offset: 6 desc: Software Interrupt on line 6
        SWIER7: bool, // bit offset: 7 desc: Software Interrupt on line 7
        SWIER8: bool, // bit offset: 8 desc: Software Interrupt on line 8
        SWIER9: bool, // bit offset: 9 desc: Software Interrupt on line 9
        SWIER10: bool, // bit offset: 10 desc: Software Interrupt on line 10
        SWIER11: bool, // bit offset: 11 desc: Software Interrupt on line 11
        SWIER12: bool, // bit offset: 12 desc: Software Interrupt on line 12
        SWIER13: bool, // bit offset: 13 desc: Software Interrupt on line 13
        SWIER14: bool, // bit offset: 14 desc: Software Interrupt on line 14
        SWIER15: bool, // bit offset: 15 desc: Software Interrupt on line 15
        SWIER16: bool, // bit offset: 16 desc: Software Interrupt on line 16
        SWIER17: bool, // bit offset: 17 desc: Software Interrupt on line 17
        SWIER18: bool, // bit offset: 18 desc: Software Interrupt on line 18
        SWIER19: bool, // bit offset: 19 desc: Software Interrupt on line 19
        SWIER20: bool, // bit offset: 20 desc: Software Interrupt on line 20
        SWIER21: bool, // bit offset: 21 desc: Software Interrupt on line 21
        SWIER22: bool, // bit offset: 22 desc: Software Interrupt on line 22
        padding: u8,
    });
    pub const PR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Pending register (EXTI_PR)
        PR0: bool, // bit offset: 0 desc: Pending bit 0
        PR1: bool, // bit offset: 1 desc: Pending bit 1
        PR2: bool, // bit offset: 2 desc: Pending bit 2
        PR3: bool, // bit offset: 3 desc: Pending bit 3
        PR4: bool, // bit offset: 4 desc: Pending bit 4
        PR5: bool, // bit offset: 5 desc: Pending bit 5
        PR6: bool, // bit offset: 6 desc: Pending bit 6
        PR7: bool, // bit offset: 7 desc: Pending bit 7
        PR8: bool, // bit offset: 8 desc: Pending bit 8
        PR9: bool, // bit offset: 9 desc: Pending bit 9
        PR10: bool, // bit offset: 10 desc: Pending bit 10
        PR11: bool, // bit offset: 11 desc: Pending bit 11
        PR12: bool, // bit offset: 12 desc: Pending bit 12
        PR13: bool, // bit offset: 13 desc: Pending bit 13
        PR14: bool, // bit offset: 14 desc: Pending bit 14
        PR15: bool, // bit offset: 15 desc: Pending bit 15
        PR16: bool, // bit offset: 16 desc: Pending bit 16
        PR17: bool, // bit offset: 17 desc: Pending bit 17
        PR18: bool, // bit offset: 18 desc: Pending bit 18
        PR19: bool, // bit offset: 19 desc: Pending bit 19
        PR20: bool, // bit offset: 20 desc: Pending bit 20
        PR21: bool, // bit offset: 21 desc: Pending bit 21
        PR22: bool, // bit offset: 22 desc: Pending bit 22
        padding: u8,
    });
};
pub const FLASH = extern struct {
    pub const Address: u32 = 0x40023c00;
    pub const ACR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Flash access control register
        LATENCY: u3, // bit offset: 0 desc: Latency
        reserved0: u5,
        PRFTEN: bool, // bit offset: 8 desc: Prefetch enable
        ICEN: bool, // bit offset: 9 desc: Instruction cache enable
        DCEN: bool, // bit offset: 10 desc: Data cache enable
        ICRST: bool, // bit offset: 11 desc: Instruction cache reset
        DCRST: bool, // bit offset: 12 desc: Data cache reset
        padding: u18,
    });
    pub const KEYR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Flash key register
        KEY: u32, // bit offset: 0 desc: FPEC key
    });
    pub const OPTKEYR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Flash option key register
        OPTKEY: u32, // bit offset: 0 desc: Option byte key
    });
    pub const SR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Status register
        EOP: bool, // bit offset: 0 desc: End of operation
        OPERR: bool, // bit offset: 1 desc: Operation error
        reserved0: u2,
        WRPERR: bool, // bit offset: 4 desc: Write protection error
        PGAERR: bool, // bit offset: 5 desc: Programming alignment error
        PGPERR: bool, // bit offset: 6 desc: Programming parallelism error
        PGSERR: bool, // bit offset: 7 desc: Programming sequence error
        reserved1: u8,
        BSY: bool, // bit offset: 16 desc: Busy
        padding: u14,
    });
    pub const CR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Control register
        PG: bool, // bit offset: 0 desc: Programming
        SER: bool, // bit offset: 1 desc: Sector Erase
        MER: bool, // bit offset: 2 desc: Mass Erase
        SNB: u4, // bit offset: 3 desc: Sector number
        reserved0: u1,
        PSIZE: u2, // bit offset: 8 desc: Program size
        reserved1: u6,
        STRT: bool, // bit offset: 16 desc: Start
        reserved2: u7,
        EOPIE: bool, // bit offset: 24 desc: End of operation interrupt enable
        ERRIE: bool, // bit offset: 25 desc: Error interrupt enable
        reserved3: u5,
        LOCK: bool, // bit offset: 31 desc: Lock
    });
    pub const OPTCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Flash option control register
        OPTLOCK: bool, // bit offset: 0 desc: Option lock
        OPTSTRT: bool, // bit offset: 1 desc: Option start
        BOR_LEV: u2, // bit offset: 2 desc: BOR reset Level
        reserved0: u1,
        WDG_SW: bool, // bit offset: 5 desc: WDG_SW User option bytes
        nRST_STOP: bool, // bit offset: 6 desc: nRST_STOP User option bytes
        nRST_STDBY: bool, // bit offset: 7 desc: nRST_STDBY User option bytes
        RDP: u8, // bit offset: 8 desc: Read protect
        nWRP: u12, // bit offset: 16 desc: Not write protect
        padding: u3,
    });
};
pub const IWDG = extern struct {
    pub const Address: u32 = 0x40003000;
    pub const KR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Key register
        KEY: u16, // bit offset: 0 desc: Key value
        padding: u15,
    });
    pub const PR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Prescaler register
        PR: u3, // bit offset: 0 desc: Prescaler divider
        padding: u28,
    });
    pub const RLR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Reload register
        RL: u12, // bit offset: 0 desc: Watchdog counter reload value
        padding: u19,
    });
    pub const SR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Status register
        PVU: bool, // bit offset: 0 desc: Watchdog prescaler value update
        RVU: bool, // bit offset: 1 desc: Watchdog counter reload value update
        padding: u29,
    });
};
pub const OTG_FS_DEVICE = extern struct {
    pub const Address: u32 = 0x50000800;
    pub const FS_DCFG = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 OTG_FS device configuration register (OTG_FS_DCFG)
        DSPD: u2, // bit offset: 0 desc: Device speed
        NZLSOHSK: bool, // bit offset: 2 desc: Non-zero-length status OUT handshake
        reserved0: u1,
        DAD: u7, // bit offset: 4 desc: Device address
        PFIVL: u2, // bit offset: 11 desc: Periodic frame interval
        padding: u18,
    });
    pub const FS_DCTL = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 OTG_FS device control register (OTG_FS_DCTL)
        RWUSIG: bool, // bit offset: 0 desc: Remote wakeup signaling
        SDIS: bool, // bit offset: 1 desc: Soft disconnect
        GINSTS: bool, // bit offset: 2 desc: Global IN NAK status
        GONSTS: bool, // bit offset: 3 desc: Global OUT NAK status
        TCTL: u3, // bit offset: 4 desc: Test control
        SGINAK: bool, // bit offset: 7 desc: Set global IN NAK
        CGINAK: bool, // bit offset: 8 desc: Clear global IN NAK
        SGONAK: bool, // bit offset: 9 desc: Set global OUT NAK
        CGONAK: bool, // bit offset: 10 desc: Clear global OUT NAK
        POPRGDNE: bool, // bit offset: 11 desc: Power-on programming done
        padding: u19,
    });
    pub const FS_DSTS = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 OTG_FS device status register (OTG_FS_DSTS)
        SUSPSTS: bool, // bit offset: 0 desc: Suspend status
        ENUMSPD: u2, // bit offset: 1 desc: Enumerated speed
        EERR: bool, // bit offset: 3 desc: Erratic error
        reserved0: u4,
        FNSOF: u14, // bit offset: 8 desc: Frame number of the received SOF
        padding: u9,
    });
    pub const FS_DIEPMSK = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 OTG_FS device IN endpoint common interrupt mask register (OTG_FS_DIEPMSK)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed interrupt mask
        EPDM: bool, // bit offset: 1 desc: Endpoint disabled interrupt mask
        reserved0: u1,
        TOM: bool, // bit offset: 3 desc: Timeout condition mask (Non-isochronous endpoints)
        ITTXFEMSK: bool, // bit offset: 4 desc: IN token received when TxFIFO empty mask
        INEPNMM: bool, // bit offset: 5 desc: IN token received with EP mismatch mask
        INEPNEM: bool, // bit offset: 6 desc: IN endpoint NAK effective mask
        padding: u24,
    });
    pub const FS_DOEPMSK = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 OTG_FS device OUT endpoint common interrupt mask register (OTG_FS_DOEPMSK)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed interrupt mask
        EPDM: bool, // bit offset: 1 desc: Endpoint disabled interrupt mask
        reserved0: u1,
        STUPM: bool, // bit offset: 3 desc: SETUP phase done mask
        OTEPDM: bool, // bit offset: 4 desc: OUT token received when endpoint disabled mask
        padding: u26,
    });
    pub const FS_DAINT = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 OTG_FS device all endpoints interrupt register (OTG_FS_DAINT)
        IEPINT: u16, // bit offset: 0 desc: IN endpoint interrupt bits
        OEPINT: u16, // bit offset: 16 desc: OUT endpoint interrupt bits
    });
    pub const FS_DAINTMSK = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 OTG_FS all endpoints interrupt mask register (OTG_FS_DAINTMSK)
        IEPM: u16, // bit offset: 0 desc: IN EP interrupt mask bits
        OEPINT: u16, // bit offset: 16 desc: OUT endpoint interrupt bits
    });
    pub const DVBUSDIS = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 OTG_FS device VBUS discharge time register
        VBUSDT: u16, // bit offset: 0 desc: Device VBUS discharge time
        padding: u15,
    });
    pub const DVBUSPULSE = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 OTG_FS device VBUS pulsing time register
        DVBUSP: u12, // bit offset: 0 desc: Device VBUS pulsing time
        padding: u19,
    });
    pub const DIEPEMPMSK = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 OTG_FS device IN endpoint FIFO empty interrupt mask register
        INEPTXFEM: u16, // bit offset: 0 desc: IN EP Tx FIFO empty interrupt mask bits
        padding: u15,
    });
    pub const FS_DIEPCTL0 = MMIO(Address + 0x00000100, u32, packed struct { // byte offset: 256 OTG_FS device control IN endpoint 0 control register (OTG_FS_DIEPCTL0)
        MPSIZ: u2, // bit offset: 0 desc: Maximum packet size
        reserved0: u13,
        USBAEP: bool, // bit offset: 15 desc: USB active endpoint
        reserved1: u1,
        NAKSTS: bool, // bit offset: 17 desc: NAK status
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        reserved2: u1,
        STALL: bool, // bit offset: 21 desc: STALL handshake
        TXFNUM: u4, // bit offset: 22 desc: TxFIFO number
        CNAK: bool, // bit offset: 26 desc: Clear NAK
        SNAK: bool, // bit offset: 27 desc: Set NAK
        reserved3: u2,
        EPDIS: bool, // bit offset: 30 desc: Endpoint disable
        EPENA: bool, // bit offset: 31 desc: Endpoint enable
    });
    pub const DIEPINT0 = MMIO(Address + 0x00000108, u32, packed struct { // byte offset: 264 device endpoint-x interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        TOC: bool, // bit offset: 3 desc: TOC
        ITTXFE: bool, // bit offset: 4 desc: ITTXFE
        reserved1: u1,
        INEPNE: bool, // bit offset: 6 desc: INEPNE
        TXFE: bool, // bit offset: 7 desc: TXFE
        padding: u23,
    });
    pub const DIEPTSIZ0 = MMIO(Address + 0x00000110, u32, packed struct { // byte offset: 272 device endpoint-0 transfer size register
        XFRSIZ: u7, // bit offset: 0 desc: Transfer size
        reserved0: u12,
        PKTCNT: u2, // bit offset: 19 desc: Packet count
        padding: u10,
    });
    pub const DTXFSTS0 = MMIO(Address + 0x00000118, u32, packed struct { // byte offset: 280 OTG_FS device IN endpoint transmit FIFO status register
        INEPTFSAV: u16, // bit offset: 0 desc: IN endpoint TxFIFO space available
        padding: u15,
    });
    pub const DIEPCTL1 = MMIO(Address + 0x00000120, u32, packed struct { // byte offset: 288 OTG device endpoint-1 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        reserved1: u1,
        Stall: bool, // bit offset: 21 desc: Stall
        TXFNUM: u4, // bit offset: 22 desc: TXFNUM
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM_SD1PID: bool, // bit offset: 29 desc: SODDFRM/SD1PID
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DIEPINT1 = MMIO(Address + 0x00000128, u32, packed struct { // byte offset: 296 device endpoint-1 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        TOC: bool, // bit offset: 3 desc: TOC
        ITTXFE: bool, // bit offset: 4 desc: ITTXFE
        reserved1: u1,
        INEPNE: bool, // bit offset: 6 desc: INEPNE
        TXFE: bool, // bit offset: 7 desc: TXFE
        padding: u23,
    });
    pub const DIEPTSIZ1 = MMIO(Address + 0x00000130, u32, packed struct { // byte offset: 304 device endpoint-1 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        MCNT: u2, // bit offset: 29 desc: Multi count
        padding: u0,
    });
    pub const DTXFSTS1 = MMIO(Address + 0x00000138, u32, packed struct { // byte offset: 312 OTG_FS device IN endpoint transmit FIFO status register
        INEPTFSAV: u16, // bit offset: 0 desc: IN endpoint TxFIFO space available
        padding: u15,
    });
    pub const DIEPCTL2 = MMIO(Address + 0x00000140, u32, packed struct { // byte offset: 320 OTG device endpoint-2 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        reserved1: u1,
        Stall: bool, // bit offset: 21 desc: Stall
        TXFNUM: u4, // bit offset: 22 desc: TXFNUM
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM: bool, // bit offset: 29 desc: SODDFRM
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DIEPINT2 = MMIO(Address + 0x00000148, u32, packed struct { // byte offset: 328 device endpoint-2 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        TOC: bool, // bit offset: 3 desc: TOC
        ITTXFE: bool, // bit offset: 4 desc: ITTXFE
        reserved1: u1,
        INEPNE: bool, // bit offset: 6 desc: INEPNE
        TXFE: bool, // bit offset: 7 desc: TXFE
        padding: u23,
    });
    pub const DIEPTSIZ2 = MMIO(Address + 0x00000150, u32, packed struct { // byte offset: 336 device endpoint-2 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        MCNT: u2, // bit offset: 29 desc: Multi count
        padding: u0,
    });
    pub const DTXFSTS2 = MMIO(Address + 0x00000158, u32, packed struct { // byte offset: 344 OTG_FS device IN endpoint transmit FIFO status register
        INEPTFSAV: u16, // bit offset: 0 desc: IN endpoint TxFIFO space available
        padding: u15,
    });
    pub const DIEPCTL3 = MMIO(Address + 0x00000160, u32, packed struct { // byte offset: 352 OTG device endpoint-3 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        reserved1: u1,
        Stall: bool, // bit offset: 21 desc: Stall
        TXFNUM: u4, // bit offset: 22 desc: TXFNUM
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM: bool, // bit offset: 29 desc: SODDFRM
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DIEPINT3 = MMIO(Address + 0x00000168, u32, packed struct { // byte offset: 360 device endpoint-3 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        TOC: bool, // bit offset: 3 desc: TOC
        ITTXFE: bool, // bit offset: 4 desc: ITTXFE
        reserved1: u1,
        INEPNE: bool, // bit offset: 6 desc: INEPNE
        TXFE: bool, // bit offset: 7 desc: TXFE
        padding: u23,
    });
    pub const DIEPTSIZ3 = MMIO(Address + 0x00000170, u32, packed struct { // byte offset: 368 device endpoint-3 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        MCNT: u2, // bit offset: 29 desc: Multi count
        padding: u0,
    });
    pub const DTXFSTS3 = MMIO(Address + 0x00000178, u32, packed struct { // byte offset: 376 OTG_FS device IN endpoint transmit FIFO status register
        INEPTFSAV: u16, // bit offset: 0 desc: IN endpoint TxFIFO space available
        padding: u15,
    });
    pub const DOEPCTL0 = MMIO(Address + 0x00000300, u32, packed struct { // byte offset: 768 device endpoint-0 control register
        MPSIZ: u2, // bit offset: 0 desc: MPSIZ
        reserved0: u13,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        reserved1: u1,
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        SNPM: bool, // bit offset: 20 desc: SNPM
        Stall: bool, // bit offset: 21 desc: Stall
        reserved2: u4,
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        reserved3: u2,
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DOEPINT0 = MMIO(Address + 0x00000308, u32, packed struct { // byte offset: 776 device endpoint-0 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        STUP: bool, // bit offset: 3 desc: STUP
        OTEPDIS: bool, // bit offset: 4 desc: OTEPDIS
        reserved1: u1,
        B2BSTUP: bool, // bit offset: 6 desc: B2BSTUP
        padding: u24,
    });
    pub const DOEPTSIZ0 = MMIO(Address + 0x00000310, u32, packed struct { // byte offset: 784 device OUT endpoint-0 transfer size register
        XFRSIZ: u7, // bit offset: 0 desc: Transfer size
        reserved0: u12,
        PKTCNT: bool, // bit offset: 19 desc: Packet count
        reserved1: u9,
        STUPCNT: u2, // bit offset: 29 desc: SETUP packet count
        padding: u0,
    });
    pub const DOEPCTL1 = MMIO(Address + 0x00000320, u32, packed struct { // byte offset: 800 device endpoint-1 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        SNPM: bool, // bit offset: 20 desc: SNPM
        Stall: bool, // bit offset: 21 desc: Stall
        reserved1: u4,
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM: bool, // bit offset: 29 desc: SODDFRM
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DOEPINT1 = MMIO(Address + 0x00000328, u32, packed struct { // byte offset: 808 device endpoint-1 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        STUP: bool, // bit offset: 3 desc: STUP
        OTEPDIS: bool, // bit offset: 4 desc: OTEPDIS
        reserved1: u1,
        B2BSTUP: bool, // bit offset: 6 desc: B2BSTUP
        padding: u24,
    });
    pub const DOEPTSIZ1 = MMIO(Address + 0x00000330, u32, packed struct { // byte offset: 816 device OUT endpoint-1 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        RXDPID_STUPCNT: u2, // bit offset: 29 desc: Received data PID/SETUP packet count
        padding: u0,
    });
    pub const DOEPCTL2 = MMIO(Address + 0x00000340, u32, packed struct { // byte offset: 832 device endpoint-2 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        SNPM: bool, // bit offset: 20 desc: SNPM
        Stall: bool, // bit offset: 21 desc: Stall
        reserved1: u4,
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM: bool, // bit offset: 29 desc: SODDFRM
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DOEPINT2 = MMIO(Address + 0x00000348, u32, packed struct { // byte offset: 840 device endpoint-2 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        STUP: bool, // bit offset: 3 desc: STUP
        OTEPDIS: bool, // bit offset: 4 desc: OTEPDIS
        reserved1: u1,
        B2BSTUP: bool, // bit offset: 6 desc: B2BSTUP
        padding: u24,
    });
    pub const DOEPTSIZ2 = MMIO(Address + 0x00000350, u32, packed struct { // byte offset: 848 device OUT endpoint-2 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        RXDPID_STUPCNT: u2, // bit offset: 29 desc: Received data PID/SETUP packet count
        padding: u0,
    });
    pub const DOEPCTL3 = MMIO(Address + 0x00000360, u32, packed struct { // byte offset: 864 device endpoint-3 control register
        MPSIZ: u11, // bit offset: 0 desc: MPSIZ
        reserved0: u4,
        USBAEP: bool, // bit offset: 15 desc: USBAEP
        EONUM_DPID: bool, // bit offset: 16 desc: EONUM/DPID
        NAKSTS: bool, // bit offset: 17 desc: NAKSTS
        EPTYP: u2, // bit offset: 18 desc: EPTYP
        SNPM: bool, // bit offset: 20 desc: SNPM
        Stall: bool, // bit offset: 21 desc: Stall
        reserved1: u4,
        CNAK: bool, // bit offset: 26 desc: CNAK
        SNAK: bool, // bit offset: 27 desc: SNAK
        SD0PID_SEVNFRM: bool, // bit offset: 28 desc: SD0PID/SEVNFRM
        SODDFRM: bool, // bit offset: 29 desc: SODDFRM
        EPDIS: bool, // bit offset: 30 desc: EPDIS
        EPENA: bool, // bit offset: 31 desc: EPENA
    });
    pub const DOEPINT3 = MMIO(Address + 0x00000368, u32, packed struct { // byte offset: 872 device endpoint-3 interrupt register
        XFRC: bool, // bit offset: 0 desc: XFRC
        EPDISD: bool, // bit offset: 1 desc: EPDISD
        reserved0: u1,
        STUP: bool, // bit offset: 3 desc: STUP
        OTEPDIS: bool, // bit offset: 4 desc: OTEPDIS
        reserved1: u1,
        B2BSTUP: bool, // bit offset: 6 desc: B2BSTUP
        padding: u24,
    });
    pub const DOEPTSIZ3 = MMIO(Address + 0x00000370, u32, packed struct { // byte offset: 880 device OUT endpoint-3 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        RXDPID_STUPCNT: u2, // bit offset: 29 desc: Received data PID/SETUP packet count
        padding: u0,
    });
};
pub const OTG_FS_GLOBAL = extern struct {
    pub const Address: u32 = 0x50000000;
    pub const FS_GOTGCTL = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 OTG_FS control and status register (OTG_FS_GOTGCTL)
        SRQSCS: bool, // bit offset: 0 desc: Session request success
        SRQ: bool, // bit offset: 1 desc: Session request
        reserved0: u6,
        HNGSCS: bool, // bit offset: 8 desc: Host negotiation success
        HNPRQ: bool, // bit offset: 9 desc: HNP request
        HSHNPEN: bool, // bit offset: 10 desc: Host set HNP enable
        DHNPEN: bool, // bit offset: 11 desc: Device HNP enabled
        reserved1: u4,
        CIDSTS: bool, // bit offset: 16 desc: Connector ID status
        DBCT: bool, // bit offset: 17 desc: Long/short debounce time
        ASVLD: bool, // bit offset: 18 desc: A-session valid
        BSVLD: bool, // bit offset: 19 desc: B-session valid
        padding: u11,
    });
    pub const FS_GOTGINT = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 OTG_FS interrupt register (OTG_FS_GOTGINT)
        reserved0: u2,
        SEDET: bool, // bit offset: 2 desc: Session end detected
        reserved1: u5,
        SRSSCHG: bool, // bit offset: 8 desc: Session request success status change
        HNSSCHG: bool, // bit offset: 9 desc: Host negotiation success status change
        reserved2: u7,
        HNGDET: bool, // bit offset: 17 desc: Host negotiation detected
        ADTOCHG: bool, // bit offset: 18 desc: A-device timeout change
        DBCDNE: bool, // bit offset: 19 desc: Debounce done
        padding: u11,
    });
    pub const FS_GAHBCFG = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 OTG_FS AHB configuration register (OTG_FS_GAHBCFG)
        GINT: bool, // bit offset: 0 desc: Global interrupt mask
        reserved0: u6,
        TXFELVL: bool, // bit offset: 7 desc: TxFIFO empty level
        PTXFELVL: bool, // bit offset: 8 desc: Periodic TxFIFO empty level
        padding: u22,
    });
    pub const FS_GUSBCFG = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 OTG_FS USB configuration register (OTG_FS_GUSBCFG)
        TOCAL: u3, // bit offset: 0 desc: FS timeout calibration
        reserved0: u3,
        PHYSEL: bool, // bit offset: 6 desc: Full Speed serial transceiver select
        reserved1: u1,
        SRPCAP: bool, // bit offset: 8 desc: SRP-capable
        HNPCAP: bool, // bit offset: 9 desc: HNP-capable
        TRDT: u4, // bit offset: 10 desc: USB turnaround time
        reserved2: u15,
        FHMOD: bool, // bit offset: 29 desc: Force host mode
        FDMOD: bool, // bit offset: 30 desc: Force device mode
        CTXPKT: bool, // bit offset: 31 desc: Corrupt Tx packet
    });
    pub const FS_GRSTCTL = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 OTG_FS reset register (OTG_FS_GRSTCTL)
        CSRST: bool, // bit offset: 0 desc: Core soft reset
        HSRST: bool, // bit offset: 1 desc: HCLK soft reset
        FCRST: bool, // bit offset: 2 desc: Host frame counter reset
        reserved0: u1,
        RXFFLSH: bool, // bit offset: 4 desc: RxFIFO flush
        TXFFLSH: bool, // bit offset: 5 desc: TxFIFO flush
        TXFNUM: u5, // bit offset: 6 desc: TxFIFO number
        reserved1: u20,
        AHBIDL: bool, // bit offset: 31 desc: AHB master idle
    });
    pub const FS_GINTSTS = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 OTG_FS core interrupt register (OTG_FS_GINTSTS)
        CMOD: bool, // bit offset: 0 desc: Current mode of operation
        MMIS: bool, // bit offset: 1 desc: Mode mismatch interrupt
        OTGINT: bool, // bit offset: 2 desc: OTG interrupt
        SOF: bool, // bit offset: 3 desc: Start of frame
        RXFLVL: bool, // bit offset: 4 desc: RxFIFO non-empty
        NPTXFE: bool, // bit offset: 5 desc: Non-periodic TxFIFO empty
        GINAKEFF: bool, // bit offset: 6 desc: Global IN non-periodic NAK effective
        GOUTNAKEFF: bool, // bit offset: 7 desc: Global OUT NAK effective
        reserved0: u2,
        ESUSP: bool, // bit offset: 10 desc: Early suspend
        USBSUSP: bool, // bit offset: 11 desc: USB suspend
        USBRST: bool, // bit offset: 12 desc: USB reset
        ENUMDNE: bool, // bit offset: 13 desc: Enumeration done
        ISOODRP: bool, // bit offset: 14 desc: Isochronous OUT packet dropped interrupt
        EOPF: bool, // bit offset: 15 desc: End of periodic frame interrupt
        reserved1: u2,
        IEPINT: bool, // bit offset: 18 desc: IN endpoint interrupt
        OEPINT: bool, // bit offset: 19 desc: OUT endpoint interrupt
        IISOIXFR: bool, // bit offset: 20 desc: Incomplete isochronous IN transfer
        IPXFR_INCOMPISOOUT: bool, // bit offset: 21 desc: Incomplete periodic transfer(Host mode)/Incomplete isochronous OUT transfer(Device mode)
        reserved2: u2,
        HPRTINT: bool, // bit offset: 24 desc: Host port interrupt
        HCINT: bool, // bit offset: 25 desc: Host channels interrupt
        PTXFE: bool, // bit offset: 26 desc: Periodic TxFIFO empty
        reserved3: u1,
        CIDSCHG: bool, // bit offset: 28 desc: Connector ID status change
        DISCINT: bool, // bit offset: 29 desc: Disconnect detected interrupt
        SRQINT: bool, // bit offset: 30 desc: Session request/new session detected interrupt
        WKUPINT: bool, // bit offset: 31 desc: Resume/remote wakeup detected interrupt
    });
    pub const FS_GINTMSK = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 OTG_FS interrupt mask register (OTG_FS_GINTMSK)
        reserved0: u1,
        MMISM: bool, // bit offset: 1 desc: Mode mismatch interrupt mask
        OTGINT: bool, // bit offset: 2 desc: OTG interrupt mask
        SOFM: bool, // bit offset: 3 desc: Start of frame mask
        RXFLVLM: bool, // bit offset: 4 desc: Receive FIFO non-empty mask
        NPTXFEM: bool, // bit offset: 5 desc: Non-periodic TxFIFO empty mask
        GINAKEFFM: bool, // bit offset: 6 desc: Global non-periodic IN NAK effective mask
        GONAKEFFM: bool, // bit offset: 7 desc: Global OUT NAK effective mask
        reserved1: u2,
        ESUSPM: bool, // bit offset: 10 desc: Early suspend mask
        USBSUSPM: bool, // bit offset: 11 desc: USB suspend mask
        USBRST: bool, // bit offset: 12 desc: USB reset mask
        ENUMDNEM: bool, // bit offset: 13 desc: Enumeration done mask
        ISOODRPM: bool, // bit offset: 14 desc: Isochronous OUT packet dropped interrupt mask
        EOPFM: bool, // bit offset: 15 desc: End of periodic frame interrupt mask
        reserved2: u1,
        EPMISM: bool, // bit offset: 17 desc: Endpoint mismatch interrupt mask
        IEPINT: bool, // bit offset: 18 desc: IN endpoints interrupt mask
        OEPINT: bool, // bit offset: 19 desc: OUT endpoints interrupt mask
        IISOIXFRM: bool, // bit offset: 20 desc: Incomplete isochronous IN transfer mask
        IPXFRM_IISOOXFRM: bool, // bit offset: 21 desc: Incomplete periodic transfer mask(Host mode)/Incomplete isochronous OUT transfer mask(Device mode)
        reserved3: u2,
        PRTIM: bool, // bit offset: 24 desc: Host port interrupt mask
        HCIM: bool, // bit offset: 25 desc: Host channels interrupt mask
        PTXFEM: bool, // bit offset: 26 desc: Periodic TxFIFO empty mask
        reserved4: u1,
        CIDSCHGM: bool, // bit offset: 28 desc: Connector ID status change mask
        DISCINT: bool, // bit offset: 29 desc: Disconnect detected interrupt mask
        SRQIM: bool, // bit offset: 30 desc: Session request/new session detected interrupt mask
        WUIM: bool, // bit offset: 31 desc: Resume/remote wakeup detected interrupt mask
    });
    pub const FS_GRXSTSR_Device = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 OTG_FS Receive status debug read(Device mode)
        EPNUM: u4, // bit offset: 0 desc: Endpoint number
        BCNT: u11, // bit offset: 4 desc: Byte count
        DPID: u2, // bit offset: 15 desc: Data PID
        PKTSTS: u4, // bit offset: 17 desc: Packet status
        FRMNUM: u4, // bit offset: 21 desc: Frame number
        padding: u6,
    });
    pub const FS_GRXSTSR_Host = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 OTG_FS Receive status debug read(Host mode)
        EPNUM: u4, // bit offset: 0 desc: Endpoint number
        BCNT: u11, // bit offset: 4 desc: Byte count
        DPID: u2, // bit offset: 15 desc: Data PID
        PKTSTS: u4, // bit offset: 17 desc: Packet status
        FRMNUM: u4, // bit offset: 21 desc: Frame number
        padding: u6,
    });
    pub const FS_GRXFSIZ = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 OTG_FS Receive FIFO size register (OTG_FS_GRXFSIZ)
        RXFD: u16, // bit offset: 0 desc: RxFIFO depth
        padding: u15,
    });
    pub const FS_GNPTXFSIZ_Device = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 OTG_FS non-periodic transmit FIFO size register (Device mode)
        TX0FSA: u16, // bit offset: 0 desc: Endpoint 0 transmit RAM start address
        TX0FD: u16, // bit offset: 16 desc: Endpoint 0 TxFIFO depth
    });
    pub const FS_GNPTXFSIZ_Host = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 OTG_FS non-periodic transmit FIFO size register (Host mode)
        NPTXFSA: u16, // bit offset: 0 desc: Non-periodic transmit RAM start address
        NPTXFD: u16, // bit offset: 16 desc: Non-periodic TxFIFO depth
    });
    pub const FS_GNPTXSTS = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 OTG_FS non-periodic transmit FIFO/queue status register (OTG_FS_GNPTXSTS)
        NPTXFSAV: u16, // bit offset: 0 desc: Non-periodic TxFIFO space available
        NPTQXSAV: u8, // bit offset: 16 desc: Non-periodic transmit request queue space available
        NPTXQTOP: u7, // bit offset: 24 desc: Top of the non-periodic transmit request queue
        padding: u0,
    });
    pub const FS_GCCFG = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 OTG_FS general core configuration register (OTG_FS_GCCFG)
        reserved0: u16,
        PWRDWN: bool, // bit offset: 16 desc: Power down
        reserved1: u1,
        VBUSASEN: bool, // bit offset: 18 desc: Enable the VBUS sensing device
        VBUSBSEN: bool, // bit offset: 19 desc: Enable the VBUS sensing device
        SOFOUTEN: bool, // bit offset: 20 desc: SOF output enable
        padding: u10,
    });
    pub const FS_CID = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 core ID register
        PRODUCT_ID: u32, // bit offset: 0 desc: Product ID field
    });
    pub const FS_HPTXFSIZ = MMIO(Address + 0x00000100, u32, packed struct { // byte offset: 256 OTG_FS Host periodic transmit FIFO size register (OTG_FS_HPTXFSIZ)
        PTXSA: u16, // bit offset: 0 desc: Host periodic TxFIFO start address
        PTXFSIZ: u16, // bit offset: 16 desc: Host periodic TxFIFO depth
    });
    pub const FS_DIEPTXF1 = MMIO(Address + 0x00000104, u32, packed struct { // byte offset: 260 OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF2)
        INEPTXSA: u16, // bit offset: 0 desc: IN endpoint FIFO2 transmit RAM start address
        INEPTXFD: u16, // bit offset: 16 desc: IN endpoint TxFIFO depth
    });
    pub const FS_DIEPTXF2 = MMIO(Address + 0x00000108, u32, packed struct { // byte offset: 264 OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF3)
        INEPTXSA: u16, // bit offset: 0 desc: IN endpoint FIFO3 transmit RAM start address
        INEPTXFD: u16, // bit offset: 16 desc: IN endpoint TxFIFO depth
    });
    pub const FS_DIEPTXF3 = MMIO(Address + 0x0000010c, u32, packed struct { // byte offset: 268 OTG_FS device IN endpoint transmit FIFO size register (OTG_FS_DIEPTXF4)
        INEPTXSA: u16, // bit offset: 0 desc: IN endpoint FIFO4 transmit RAM start address
        INEPTXFD: u16, // bit offset: 16 desc: IN endpoint TxFIFO depth
    });
};
pub const OTG_FS_HOST = extern struct {
    pub const Address: u32 = 0x50000400;
    pub const FS_HCFG = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 OTG_FS host configuration register (OTG_FS_HCFG)
        FSLSPCS: u2, // bit offset: 0 desc: FS/LS PHY clock select
        FSLSS: bool, // bit offset: 2 desc: FS- and LS-only support
        padding: u28,
    });
    pub const HFIR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 OTG_FS Host frame interval register
        FRIVL: u16, // bit offset: 0 desc: Frame interval
        padding: u15,
    });
    pub const FS_HFNUM = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 OTG_FS host frame number/frame time remaining register (OTG_FS_HFNUM)
        FRNUM: u16, // bit offset: 0 desc: Frame number
        FTREM: u16, // bit offset: 16 desc: Frame time remaining
    });
    pub const FS_HPTXSTS = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 OTG_FS_Host periodic transmit FIFO/queue status register (OTG_FS_HPTXSTS)
        PTXFSAVL: u16, // bit offset: 0 desc: Periodic transmit data FIFO space available
        PTXQSAV: u8, // bit offset: 16 desc: Periodic transmit request queue space available
        PTXQTOP: u8, // bit offset: 24 desc: Top of the periodic transmit request queue
    });
    pub const HAINT = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 OTG_FS Host all channels interrupt register
        HAINT: u16, // bit offset: 0 desc: Channel interrupts
        padding: u15,
    });
    pub const HAINTMSK = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 OTG_FS host all channels interrupt mask register
        HAINTM: u16, // bit offset: 0 desc: Channel interrupt mask
        padding: u15,
    });
    pub const FS_HPRT = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 OTG_FS host port control and status register (OTG_FS_HPRT)
        PCSTS: bool, // bit offset: 0 desc: Port connect status
        PCDET: bool, // bit offset: 1 desc: Port connect detected
        PENA: bool, // bit offset: 2 desc: Port enable
        PENCHNG: bool, // bit offset: 3 desc: Port enable/disable change
        POCA: bool, // bit offset: 4 desc: Port overcurrent active
        POCCHNG: bool, // bit offset: 5 desc: Port overcurrent change
        PRES: bool, // bit offset: 6 desc: Port resume
        PSUSP: bool, // bit offset: 7 desc: Port suspend
        PRST: bool, // bit offset: 8 desc: Port reset
        reserved0: u1,
        PLSTS: u2, // bit offset: 10 desc: Port line status
        PPWR: bool, // bit offset: 12 desc: Port power
        PTCTL: u4, // bit offset: 13 desc: Port test control
        PSPD: u2, // bit offset: 17 desc: Port speed
        padding: u12,
    });
    pub const FS_HCCHAR0 = MMIO(Address + 0x00000100, u32, packed struct { // byte offset: 256 OTG_FS host channel-0 characteristics register (OTG_FS_HCCHAR0)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT0 = MMIO(Address + 0x00000108, u32, packed struct { // byte offset: 264 OTG_FS host channel-0 interrupt register (OTG_FS_HCINT0)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK0 = MMIO(Address + 0x0000010c, u32, packed struct { // byte offset: 268 OTG_FS host channel-0 mask register (OTG_FS_HCINTMSK0)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ0 = MMIO(Address + 0x00000110, u32, packed struct { // byte offset: 272 OTG_FS host channel-0 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR1 = MMIO(Address + 0x00000120, u32, packed struct { // byte offset: 288 OTG_FS host channel-1 characteristics register (OTG_FS_HCCHAR1)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT1 = MMIO(Address + 0x00000128, u32, packed struct { // byte offset: 296 OTG_FS host channel-1 interrupt register (OTG_FS_HCINT1)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK1 = MMIO(Address + 0x0000012c, u32, packed struct { // byte offset: 300 OTG_FS host channel-1 mask register (OTG_FS_HCINTMSK1)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ1 = MMIO(Address + 0x00000130, u32, packed struct { // byte offset: 304 OTG_FS host channel-1 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR2 = MMIO(Address + 0x00000140, u32, packed struct { // byte offset: 320 OTG_FS host channel-2 characteristics register (OTG_FS_HCCHAR2)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT2 = MMIO(Address + 0x00000148, u32, packed struct { // byte offset: 328 OTG_FS host channel-2 interrupt register (OTG_FS_HCINT2)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK2 = MMIO(Address + 0x0000014c, u32, packed struct { // byte offset: 332 OTG_FS host channel-2 mask register (OTG_FS_HCINTMSK2)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ2 = MMIO(Address + 0x00000150, u32, packed struct { // byte offset: 336 OTG_FS host channel-2 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR3 = MMIO(Address + 0x00000160, u32, packed struct { // byte offset: 352 OTG_FS host channel-3 characteristics register (OTG_FS_HCCHAR3)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT3 = MMIO(Address + 0x00000168, u32, packed struct { // byte offset: 360 OTG_FS host channel-3 interrupt register (OTG_FS_HCINT3)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK3 = MMIO(Address + 0x0000016c, u32, packed struct { // byte offset: 364 OTG_FS host channel-3 mask register (OTG_FS_HCINTMSK3)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ3 = MMIO(Address + 0x00000170, u32, packed struct { // byte offset: 368 OTG_FS host channel-3 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR4 = MMIO(Address + 0x00000180, u32, packed struct { // byte offset: 384 OTG_FS host channel-4 characteristics register (OTG_FS_HCCHAR4)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT4 = MMIO(Address + 0x00000188, u32, packed struct { // byte offset: 392 OTG_FS host channel-4 interrupt register (OTG_FS_HCINT4)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK4 = MMIO(Address + 0x0000018c, u32, packed struct { // byte offset: 396 OTG_FS host channel-4 mask register (OTG_FS_HCINTMSK4)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ4 = MMIO(Address + 0x00000190, u32, packed struct { // byte offset: 400 OTG_FS host channel-x transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR5 = MMIO(Address + 0x000001a0, u32, packed struct { // byte offset: 416 OTG_FS host channel-5 characteristics register (OTG_FS_HCCHAR5)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT5 = MMIO(Address + 0x000001a8, u32, packed struct { // byte offset: 424 OTG_FS host channel-5 interrupt register (OTG_FS_HCINT5)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK5 = MMIO(Address + 0x000001ac, u32, packed struct { // byte offset: 428 OTG_FS host channel-5 mask register (OTG_FS_HCINTMSK5)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ5 = MMIO(Address + 0x000001b0, u32, packed struct { // byte offset: 432 OTG_FS host channel-5 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR6 = MMIO(Address + 0x000001c0, u32, packed struct { // byte offset: 448 OTG_FS host channel-6 characteristics register (OTG_FS_HCCHAR6)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT6 = MMIO(Address + 0x000001c8, u32, packed struct { // byte offset: 456 OTG_FS host channel-6 interrupt register (OTG_FS_HCINT6)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK6 = MMIO(Address + 0x000001cc, u32, packed struct { // byte offset: 460 OTG_FS host channel-6 mask register (OTG_FS_HCINTMSK6)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ6 = MMIO(Address + 0x000001d0, u32, packed struct { // byte offset: 464 OTG_FS host channel-6 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
    pub const FS_HCCHAR7 = MMIO(Address + 0x000001e0, u32, packed struct { // byte offset: 480 OTG_FS host channel-7 characteristics register (OTG_FS_HCCHAR7)
        MPSIZ: u11, // bit offset: 0 desc: Maximum packet size
        EPNUM: u4, // bit offset: 11 desc: Endpoint number
        EPDIR: bool, // bit offset: 15 desc: Endpoint direction
        reserved0: u1,
        LSDEV: bool, // bit offset: 17 desc: Low-speed device
        EPTYP: u2, // bit offset: 18 desc: Endpoint type
        MCNT: u2, // bit offset: 20 desc: Multicount
        DAD: u7, // bit offset: 22 desc: Device address
        ODDFRM: bool, // bit offset: 29 desc: Odd frame
        CHDIS: bool, // bit offset: 30 desc: Channel disable
        CHENA: bool, // bit offset: 31 desc: Channel enable
    });
    pub const FS_HCINT7 = MMIO(Address + 0x000001e8, u32, packed struct { // byte offset: 488 OTG_FS host channel-7 interrupt register (OTG_FS_HCINT7)
        XFRC: bool, // bit offset: 0 desc: Transfer completed
        CHH: bool, // bit offset: 1 desc: Channel halted
        reserved0: u1,
        STALL: bool, // bit offset: 3 desc: STALL response received interrupt
        NAK: bool, // bit offset: 4 desc: NAK response received interrupt
        ACK: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt
        reserved1: u1,
        TXERR: bool, // bit offset: 7 desc: Transaction error
        BBERR: bool, // bit offset: 8 desc: Babble error
        FRMOR: bool, // bit offset: 9 desc: Frame overrun
        DTERR: bool, // bit offset: 10 desc: Data toggle error
        padding: u20,
    });
    pub const FS_HCINTMSK7 = MMIO(Address + 0x000001ec, u32, packed struct { // byte offset: 492 OTG_FS host channel-7 mask register (OTG_FS_HCINTMSK7)
        XFRCM: bool, // bit offset: 0 desc: Transfer completed mask
        CHHM: bool, // bit offset: 1 desc: Channel halted mask
        reserved0: u1,
        STALLM: bool, // bit offset: 3 desc: STALL response received interrupt mask
        NAKM: bool, // bit offset: 4 desc: NAK response received interrupt mask
        ACKM: bool, // bit offset: 5 desc: ACK response received/transmitted interrupt mask
        NYET: bool, // bit offset: 6 desc: response received interrupt mask
        TXERRM: bool, // bit offset: 7 desc: Transaction error mask
        BBERRM: bool, // bit offset: 8 desc: Babble error mask
        FRMORM: bool, // bit offset: 9 desc: Frame overrun mask
        DTERRM: bool, // bit offset: 10 desc: Data toggle error mask
        padding: u20,
    });
    pub const FS_HCTSIZ7 = MMIO(Address + 0x000001f0, u32, packed struct { // byte offset: 496 OTG_FS host channel-7 transfer size register
        XFRSIZ: u19, // bit offset: 0 desc: Transfer size
        PKTCNT: u10, // bit offset: 19 desc: Packet count
        DPID: u2, // bit offset: 29 desc: Data PID
        padding: u0,
    });
};
pub const OTG_FS_PWRCLK = extern struct {
    pub const Address: u32 = 0x50000e00;
    pub const FS_PCGCCTL = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 OTG_FS power and clock gating control register
        STPPCLK: bool, // bit offset: 0 desc: Stop PHY clock
        GATEHCLK: bool, // bit offset: 1 desc: Gate HCLK
        reserved0: u2,
        PHYSUSP: bool, // bit offset: 4 desc: PHY Suspended
        padding: u26,
    });
};
pub const PWR = extern struct {
    pub const Address: u32 = 0x40007000;
    pub const CR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 power control register
        LPDS: bool, // bit offset: 0 desc: Low-power deep sleep
        PDDS: bool, // bit offset: 1 desc: Power down deepsleep
        CWUF: bool, // bit offset: 2 desc: Clear wakeup flag
        CSBF: bool, // bit offset: 3 desc: Clear standby flag
        PVDE: bool, // bit offset: 4 desc: Power voltage detector enable
        PLS: u3, // bit offset: 5 desc: PVD level selection
        DBP: bool, // bit offset: 8 desc: Disable backup domain write protection
        FPDS: bool, // bit offset: 9 desc: Flash power down in Stop mode
        reserved0: u3,
        ADCDC1: bool, // bit offset: 13 desc: ADCDC1
        VOS: u2, // bit offset: 14 desc: Regulator voltage scaling output selection
        padding: u15,
    });
    pub const CSR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 power control/status register
        WUF: bool, // bit offset: 0 desc: Wakeup flag
        SBF: bool, // bit offset: 1 desc: Standby flag
        PVDO: bool, // bit offset: 2 desc: PVD output
        BRR: bool, // bit offset: 3 desc: Backup regulator ready
        reserved0: u4,
        EWUP: bool, // bit offset: 8 desc: Enable WKUP pin
        BRE: bool, // bit offset: 9 desc: Backup regulator enable
        reserved1: u4,
        VOSRDY: bool, // bit offset: 14 desc: Regulator voltage scaling output selection ready bit
        padding: u16,
    });
};
pub const RCC = extern struct {
    pub const Address: u32 = 0x40023800;
    pub const CR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 clock control register
        HSION: bool, // bit offset: 0 desc: Internal high-speed clock enable
        HSIRDY: bool, // bit offset: 1 desc: Internal high-speed clock ready flag
        reserved0: u1,
        HSITRIM: u5, // bit offset: 3 desc: Internal high-speed clock trimming
        HSICAL: u8, // bit offset: 8 desc: Internal high-speed clock calibration
        HSEON: bool, // bit offset: 16 desc: HSE clock enable
        HSERDY: bool, // bit offset: 17 desc: HSE clock ready flag
        HSEBYP: bool, // bit offset: 18 desc: HSE clock bypass
        CSSON: bool, // bit offset: 19 desc: Clock security system enable
        reserved1: u4,
        PLLON: bool, // bit offset: 24 desc: Main PLL (PLL) enable
        PLLRDY: bool, // bit offset: 25 desc: Main PLL (PLL) clock ready flag
        PLLI2SON: bool, // bit offset: 26 desc: PLLI2S enable
        PLLI2SRDY: bool, // bit offset: 27 desc: PLLI2S clock ready flag
        padding: u3,
    });
    pub const PLLCFGR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 PLL configuration register
        PLLM0: bool, // bit offset: 0 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLM1: bool, // bit offset: 1 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLM2: bool, // bit offset: 2 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLM3: bool, // bit offset: 3 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLM4: bool, // bit offset: 4 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLM5: bool, // bit offset: 5 desc: Division factor for the main PLL (PLL) and audio PLL (PLLI2S) input clock
        PLLN0: bool, // bit offset: 6 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN1: bool, // bit offset: 7 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN2: bool, // bit offset: 8 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN3: bool, // bit offset: 9 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN4: bool, // bit offset: 10 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN5: bool, // bit offset: 11 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN6: bool, // bit offset: 12 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN7: bool, // bit offset: 13 desc: Main PLL (PLL) multiplication factor for VCO
        PLLN8: bool, // bit offset: 14 desc: Main PLL (PLL) multiplication factor for VCO
        reserved0: u1,
        PLLP0: bool, // bit offset: 16 desc: Main PLL (PLL) division factor for main system clock
        PLLP1: bool, // bit offset: 17 desc: Main PLL (PLL) division factor for main system clock
        reserved1: u4,
        PLLSRC: bool, // bit offset: 22 desc: Main PLL(PLL) and audio PLL (PLLI2S) entry clock source
        reserved2: u1,
        PLLQ0: bool, // bit offset: 24 desc: Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
        PLLQ1: bool, // bit offset: 25 desc: Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
        PLLQ2: bool, // bit offset: 26 desc: Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
        PLLQ3: bool, // bit offset: 27 desc: Main PLL (PLL) division factor for USB OTG FS, SDIO and random number generator clocks
        padding: u3,
    });
    pub const CFGR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 clock configuration register
        SW0: bool, // bit offset: 0 desc: System clock switch
        SW1: bool, // bit offset: 1 desc: System clock switch
        SWS0: bool, // bit offset: 2 desc: System clock switch status
        SWS1: bool, // bit offset: 3 desc: System clock switch status
        HPRE: u4, // bit offset: 4 desc: AHB prescaler
        reserved0: u2,
        PPRE1: u3, // bit offset: 10 desc: APB Low speed prescaler (APB1)
        PPRE2: u3, // bit offset: 13 desc: APB high-speed prescaler (APB2)
        RTCPRE: u5, // bit offset: 16 desc: HSE division factor for RTC clock
        MCO1: u2, // bit offset: 21 desc: Microcontroller clock output 1
        I2SSRC: bool, // bit offset: 23 desc: I2S clock selection
        MCO1PRE: u3, // bit offset: 24 desc: MCO1 prescaler
        MCO2PRE: u3, // bit offset: 27 desc: MCO2 prescaler
        MCO2: u2, // bit offset: 30 desc: Microcontroller clock output 2
    });
    pub const CIR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 clock interrupt register
        LSIRDYF: bool, // bit offset: 0 desc: LSI ready interrupt flag
        LSERDYF: bool, // bit offset: 1 desc: LSE ready interrupt flag
        HSIRDYF: bool, // bit offset: 2 desc: HSI ready interrupt flag
        HSERDYF: bool, // bit offset: 3 desc: HSE ready interrupt flag
        PLLRDYF: bool, // bit offset: 4 desc: Main PLL (PLL) ready interrupt flag
        PLLI2SRDYF: bool, // bit offset: 5 desc: PLLI2S ready interrupt flag
        reserved0: u1,
        CSSF: bool, // bit offset: 7 desc: Clock security system interrupt flag
        LSIRDYIE: bool, // bit offset: 8 desc: LSI ready interrupt enable
        LSERDYIE: bool, // bit offset: 9 desc: LSE ready interrupt enable
        HSIRDYIE: bool, // bit offset: 10 desc: HSI ready interrupt enable
        HSERDYIE: bool, // bit offset: 11 desc: HSE ready interrupt enable
        PLLRDYIE: bool, // bit offset: 12 desc: Main PLL (PLL) ready interrupt enable
        PLLI2SRDYIE: bool, // bit offset: 13 desc: PLLI2S ready interrupt enable
        reserved1: u2,
        LSIRDYC: bool, // bit offset: 16 desc: LSI ready interrupt clear
        LSERDYC: bool, // bit offset: 17 desc: LSE ready interrupt clear
        HSIRDYC: bool, // bit offset: 18 desc: HSI ready interrupt clear
        HSERDYC: bool, // bit offset: 19 desc: HSE ready interrupt clear
        PLLRDYC: bool, // bit offset: 20 desc: Main PLL(PLL) ready interrupt clear
        PLLI2SRDYC: bool, // bit offset: 21 desc: PLLI2S ready interrupt clear
        reserved2: u1,
        CSSC: bool, // bit offset: 23 desc: Clock security system interrupt clear
        padding: u7,
    });
    pub const AHB1RSTR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 AHB1 peripheral reset register
        GPIOARST: bool, // bit offset: 0 desc: IO port A reset
        GPIOBRST: bool, // bit offset: 1 desc: IO port B reset
        GPIOCRST: bool, // bit offset: 2 desc: IO port C reset
        GPIODRST: bool, // bit offset: 3 desc: IO port D reset
        GPIOERST: bool, // bit offset: 4 desc: IO port E reset
        reserved0: u2,
        GPIOHRST: bool, // bit offset: 7 desc: IO port H reset
        reserved1: u4,
        CRCRST: bool, // bit offset: 12 desc: CRC reset
        reserved2: u8,
        DMA1RST: bool, // bit offset: 21 desc: DMA2 reset
        DMA2RST: bool, // bit offset: 22 desc: DMA2 reset
        padding: u8,
    });
    pub const AHB2RSTR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 AHB2 peripheral reset register
        reserved0: u7,
        OTGFSRST: bool, // bit offset: 7 desc: USB OTG FS module reset
        padding: u23,
    });
    pub const APB1RSTR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 APB1 peripheral reset register
        TIM2RST: bool, // bit offset: 0 desc: TIM2 reset
        TIM3RST: bool, // bit offset: 1 desc: TIM3 reset
        TIM4RST: bool, // bit offset: 2 desc: TIM4 reset
        TIM5RST: bool, // bit offset: 3 desc: TIM5 reset
        reserved0: u7,
        WWDGRST: bool, // bit offset: 11 desc: Window watchdog reset
        reserved1: u2,
        SPI2RST: bool, // bit offset: 14 desc: SPI 2 reset
        SPI3RST: bool, // bit offset: 15 desc: SPI 3 reset
        reserved2: u1,
        UART2RST: bool, // bit offset: 17 desc: USART 2 reset
        reserved3: u3,
        I2C1RST: bool, // bit offset: 21 desc: I2C 1 reset
        I2C2RST: bool, // bit offset: 22 desc: I2C 2 reset
        I2C3RST: bool, // bit offset: 23 desc: I2C3 reset
        reserved4: u4,
        PWRRST: bool, // bit offset: 28 desc: Power interface reset
        padding: u2,
    });
    pub const APB2RSTR = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 APB2 peripheral reset register
        TIM1RST: bool, // bit offset: 0 desc: TIM1 reset
        reserved0: u3,
        USART1RST: bool, // bit offset: 4 desc: USART1 reset
        USART6RST: bool, // bit offset: 5 desc: USART6 reset
        reserved1: u2,
        ADCRST: bool, // bit offset: 8 desc: ADC interface reset (common to all ADCs)
        reserved2: u2,
        SDIORST: bool, // bit offset: 11 desc: SDIO reset
        SPI1RST: bool, // bit offset: 12 desc: SPI 1 reset
        reserved3: u1,
        SYSCFGRST: bool, // bit offset: 14 desc: System configuration controller reset
        reserved4: u1,
        TIM9RST: bool, // bit offset: 16 desc: TIM9 reset
        TIM10RST: bool, // bit offset: 17 desc: TIM10 reset
        TIM11RST: bool, // bit offset: 18 desc: TIM11 reset
        padding: u12,
    });
    pub const AHB1ENR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 AHB1 peripheral clock register
        GPIOAEN: bool, // bit offset: 0 desc: IO port A clock enable
        GPIOBEN: bool, // bit offset: 1 desc: IO port B clock enable
        GPIOCEN: bool, // bit offset: 2 desc: IO port C clock enable
        GPIODEN: bool, // bit offset: 3 desc: IO port D clock enable
        GPIOEEN: bool, // bit offset: 4 desc: IO port E clock enable
        reserved0: u2,
        GPIOHEN: bool, // bit offset: 7 desc: IO port H clock enable
        reserved1: u4,
        CRCEN: bool, // bit offset: 12 desc: CRC clock enable
        reserved2: u8,
        DMA1EN: bool, // bit offset: 21 desc: DMA1 clock enable
        DMA2EN: bool, // bit offset: 22 desc: DMA2 clock enable
        padding: u8,
    });
    pub const AHB2ENR = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 AHB2 peripheral clock enable register
        reserved0: u7,
        OTGFSEN: bool, // bit offset: 7 desc: USB OTG FS clock enable
        padding: u23,
    });
    pub const APB1ENR = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 APB1 peripheral clock enable register
        TIM2EN: bool, // bit offset: 0 desc: TIM2 clock enable
        TIM3EN: bool, // bit offset: 1 desc: TIM3 clock enable
        TIM4EN: bool, // bit offset: 2 desc: TIM4 clock enable
        TIM5EN: bool, // bit offset: 3 desc: TIM5 clock enable
        reserved0: u7,
        WWDGEN: bool, // bit offset: 11 desc: Window watchdog clock enable
        reserved1: u2,
        SPI2EN: bool, // bit offset: 14 desc: SPI2 clock enable
        SPI3EN: bool, // bit offset: 15 desc: SPI3 clock enable
        reserved2: u1,
        USART2EN: bool, // bit offset: 17 desc: USART 2 clock enable
        reserved3: u3,
        I2C1EN: bool, // bit offset: 21 desc: I2C1 clock enable
        I2C2EN: bool, // bit offset: 22 desc: I2C2 clock enable
        I2C3EN: bool, // bit offset: 23 desc: I2C3 clock enable
        reserved4: u4,
        PWREN: bool, // bit offset: 28 desc: Power interface clock enable
        padding: u2,
    });
    pub const APB2ENR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 APB2 peripheral clock enable register
        TIM1EN: bool, // bit offset: 0 desc: TIM1 clock enable
        reserved0: u3,
        USART1EN: bool, // bit offset: 4 desc: USART1 clock enable
        USART6EN: bool, // bit offset: 5 desc: USART6 clock enable
        reserved1: u2,
        ADC1EN: bool, // bit offset: 8 desc: ADC1 clock enable
        reserved2: u2,
        SDIOEN: bool, // bit offset: 11 desc: SDIO clock enable
        SPI1EN: bool, // bit offset: 12 desc: SPI1 clock enable
        SPI4EN: bool, // bit offset: 13 desc: SPI4 clock enable
        SYSCFGEN: bool, // bit offset: 14 desc: System configuration controller clock enable
        reserved3: u1,
        TIM9EN: bool, // bit offset: 16 desc: TIM9 clock enable
        TIM10EN: bool, // bit offset: 17 desc: TIM10 clock enable
        TIM11EN: bool, // bit offset: 18 desc: TIM11 clock enable
        padding: u12,
    });
    pub const AHB1LPENR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 AHB1 peripheral clock enable in low power mode register
        GPIOALPEN: bool, // bit offset: 0 desc: IO port A clock enable during sleep mode
        GPIOBLPEN: bool, // bit offset: 1 desc: IO port B clock enable during Sleep mode
        GPIOCLPEN: bool, // bit offset: 2 desc: IO port C clock enable during Sleep mode
        GPIODLPEN: bool, // bit offset: 3 desc: IO port D clock enable during Sleep mode
        GPIOELPEN: bool, // bit offset: 4 desc: IO port E clock enable during Sleep mode
        reserved0: u2,
        GPIOHLPEN: bool, // bit offset: 7 desc: IO port H clock enable during Sleep mode
        reserved1: u4,
        CRCLPEN: bool, // bit offset: 12 desc: CRC clock enable during Sleep mode
        reserved2: u2,
        FLITFLPEN: bool, // bit offset: 15 desc: Flash interface clock enable during Sleep mode
        SRAM1LPEN: bool, // bit offset: 16 desc: SRAM 1interface clock enable during Sleep mode
        reserved3: u4,
        DMA1LPEN: bool, // bit offset: 21 desc: DMA1 clock enable during Sleep mode
        DMA2LPEN: bool, // bit offset: 22 desc: DMA2 clock enable during Sleep mode
        padding: u8,
    });
    pub const AHB2LPENR = MMIO(Address + 0x00000054, u32, packed struct { // byte offset: 84 AHB2 peripheral clock enable in low power mode register
        reserved0: u7,
        OTGFSLPEN: bool, // bit offset: 7 desc: USB OTG FS clock enable during Sleep mode
        padding: u23,
    });
    pub const APB1LPENR = MMIO(Address + 0x00000060, u32, packed struct { // byte offset: 96 APB1 peripheral clock enable in low power mode register
        TIM2LPEN: bool, // bit offset: 0 desc: TIM2 clock enable during Sleep mode
        TIM3LPEN: bool, // bit offset: 1 desc: TIM3 clock enable during Sleep mode
        TIM4LPEN: bool, // bit offset: 2 desc: TIM4 clock enable during Sleep mode
        TIM5LPEN: bool, // bit offset: 3 desc: TIM5 clock enable during Sleep mode
        reserved0: u7,
        WWDGLPEN: bool, // bit offset: 11 desc: Window watchdog clock enable during Sleep mode
        reserved1: u2,
        SPI2LPEN: bool, // bit offset: 14 desc: SPI2 clock enable during Sleep mode
        SPI3LPEN: bool, // bit offset: 15 desc: SPI3 clock enable during Sleep mode
        reserved2: u1,
        USART2LPEN: bool, // bit offset: 17 desc: USART2 clock enable during Sleep mode
        reserved3: u3,
        I2C1LPEN: bool, // bit offset: 21 desc: I2C1 clock enable during Sleep mode
        I2C2LPEN: bool, // bit offset: 22 desc: I2C2 clock enable during Sleep mode
        I2C3LPEN: bool, // bit offset: 23 desc: I2C3 clock enable during Sleep mode
        reserved4: u4,
        PWRLPEN: bool, // bit offset: 28 desc: Power interface clock enable during Sleep mode
        padding: u2,
    });
    pub const APB2LPENR = MMIO(Address + 0x00000064, u32, packed struct { // byte offset: 100 APB2 peripheral clock enabled in low power mode register
        TIM1LPEN: bool, // bit offset: 0 desc: TIM1 clock enable during Sleep mode
        reserved0: u3,
        USART1LPEN: bool, // bit offset: 4 desc: USART1 clock enable during Sleep mode
        USART6LPEN: bool, // bit offset: 5 desc: USART6 clock enable during Sleep mode
        reserved1: u2,
        ADC1LPEN: bool, // bit offset: 8 desc: ADC1 clock enable during Sleep mode
        reserved2: u2,
        SDIOLPEN: bool, // bit offset: 11 desc: SDIO clock enable during Sleep mode
        SPI1LPEN: bool, // bit offset: 12 desc: SPI 1 clock enable during Sleep mode
        SPI4LPEN: bool, // bit offset: 13 desc: SPI4 clock enable during Sleep mode
        SYSCFGLPEN: bool, // bit offset: 14 desc: System configuration controller clock enable during Sleep mode
        reserved3: u1,
        TIM9LPEN: bool, // bit offset: 16 desc: TIM9 clock enable during sleep mode
        TIM10LPEN: bool, // bit offset: 17 desc: TIM10 clock enable during Sleep mode
        TIM11LPEN: bool, // bit offset: 18 desc: TIM11 clock enable during Sleep mode
        padding: u12,
    });
    pub const BDCR = MMIO(Address + 0x00000070, u32, packed struct { // byte offset: 112 Backup domain control register
        LSEON: bool, // bit offset: 0 desc: External low-speed oscillator enable
        LSERDY: bool, // bit offset: 1 desc: External low-speed oscillator ready
        LSEBYP: bool, // bit offset: 2 desc: External low-speed oscillator bypass
        reserved0: u5,
        RTCSEL0: bool, // bit offset: 8 desc: RTC clock source selection
        RTCSEL1: bool, // bit offset: 9 desc: RTC clock source selection
        reserved1: u5,
        RTCEN: bool, // bit offset: 15 desc: RTC clock enable
        BDRST: bool, // bit offset: 16 desc: Backup domain software reset
        padding: u14,
    });
    pub const CSR = MMIO(Address + 0x00000074, u32, packed struct { // byte offset: 116 clock control & status register
        LSION: bool, // bit offset: 0 desc: Internal low-speed oscillator enable
        LSIRDY: bool, // bit offset: 1 desc: Internal low-speed oscillator ready
        reserved0: u22,
        RMVF: bool, // bit offset: 24 desc: Remove reset flag
        BORRSTF: bool, // bit offset: 25 desc: BOR reset flag
        PADRSTF: bool, // bit offset: 26 desc: PIN reset flag
        PORRSTF: bool, // bit offset: 27 desc: POR/PDR reset flag
        SFTRSTF: bool, // bit offset: 28 desc: Software reset flag
        WDGRSTF: bool, // bit offset: 29 desc: Independent watchdog reset flag
        WWDGRSTF: bool, // bit offset: 30 desc: Window watchdog reset flag
        LPWRRSTF: bool, // bit offset: 31 desc: Low-power reset flag
    });
    pub const SSCGR = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 spread spectrum clock generation register
        MODPER: u13, // bit offset: 0 desc: Modulation period
        INCSTEP: u15, // bit offset: 13 desc: Incrementation step
        reserved0: u2,
        SPREADSEL: bool, // bit offset: 30 desc: Spread Select
        SSCGEN: bool, // bit offset: 31 desc: Spread spectrum modulation enable
    });
    pub const PLLI2SCFGR = MMIO(Address + 0x00000084, u32, packed struct { // byte offset: 132 PLLI2S configuration register
        reserved0: u6,
        PLLI2SNx: u9, // bit offset: 6 desc: PLLI2S multiplication factor for VCO
        reserved1: u13,
        PLLI2SRx: u3, // bit offset: 28 desc: PLLI2S division factor for I2S clocks
        padding: u0,
    });
};
pub const RTC = extern struct {
    pub const Address: u32 = 0x40002800;
    pub const TR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 time register
        SU: u4, // bit offset: 0 desc: Second units in BCD format
        ST: u3, // bit offset: 4 desc: Second tens in BCD format
        reserved0: u1,
        MNU: u4, // bit offset: 8 desc: Minute units in BCD format
        MNT: u3, // bit offset: 12 desc: Minute tens in BCD format
        reserved1: u1,
        HU: u4, // bit offset: 16 desc: Hour units in BCD format
        HT: u2, // bit offset: 20 desc: Hour tens in BCD format
        PM: bool, // bit offset: 22 desc: AM/PM notation
        padding: u8,
    });
    pub const DR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 date register
        DU: u4, // bit offset: 0 desc: Date units in BCD format
        DT: u2, // bit offset: 4 desc: Date tens in BCD format
        reserved0: u2,
        MU: u4, // bit offset: 8 desc: Month units in BCD format
        MT: bool, // bit offset: 12 desc: Month tens in BCD format
        WDU: u3, // bit offset: 13 desc: Week day units
        YU: u4, // bit offset: 16 desc: Year units in BCD format
        YT: u4, // bit offset: 20 desc: Year tens in BCD format
        padding: u7,
    });
    pub const CR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 control register
        WCKSEL: u3, // bit offset: 0 desc: Wakeup clock selection
        TSEDGE: bool, // bit offset: 3 desc: Time-stamp event active edge
        REFCKON: bool, // bit offset: 4 desc: Reference clock detection enable (50 or 60 Hz)
        BYPSHAD: bool, // bit offset: 5 desc: Bypass the shadow registers
        FMT: bool, // bit offset: 6 desc: Hour format
        DCE: bool, // bit offset: 7 desc: Coarse digital calibration enable
        ALRAE: bool, // bit offset: 8 desc: Alarm A enable
        ALRBE: bool, // bit offset: 9 desc: Alarm B enable
        WUTE: bool, // bit offset: 10 desc: Wakeup timer enable
        TSE: bool, // bit offset: 11 desc: Time stamp enable
        ALRAIE: bool, // bit offset: 12 desc: Alarm A interrupt enable
        ALRBIE: bool, // bit offset: 13 desc: Alarm B interrupt enable
        WUTIE: bool, // bit offset: 14 desc: Wakeup timer interrupt enable
        TSIE: bool, // bit offset: 15 desc: Time-stamp interrupt enable
        ADD1H: bool, // bit offset: 16 desc: Add 1 hour (summer time change)
        SUB1H: bool, // bit offset: 17 desc: Subtract 1 hour (winter time change)
        BKP: bool, // bit offset: 18 desc: Backup
        COSEL: bool, // bit offset: 19 desc: Calibration Output selection
        POL: bool, // bit offset: 20 desc: Output polarity
        OSEL: u2, // bit offset: 21 desc: Output selection
        COE: bool, // bit offset: 23 desc: Calibration output enable
        padding: u7,
    });
    pub const ISR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 initialization and status register
        ALRAWF: bool, // bit offset: 0 desc: Alarm A write flag
        ALRBWF: bool, // bit offset: 1 desc: Alarm B write flag
        WUTWF: bool, // bit offset: 2 desc: Wakeup timer write flag
        SHPF: bool, // bit offset: 3 desc: Shift operation pending
        INITS: bool, // bit offset: 4 desc: Initialization status flag
        RSF: bool, // bit offset: 5 desc: Registers synchronization flag
        INITF: bool, // bit offset: 6 desc: Initialization flag
        INIT: bool, // bit offset: 7 desc: Initialization mode
        ALRAF: bool, // bit offset: 8 desc: Alarm A flag
        ALRBF: bool, // bit offset: 9 desc: Alarm B flag
        WUTF: bool, // bit offset: 10 desc: Wakeup timer flag
        TSF: bool, // bit offset: 11 desc: Time-stamp flag
        TSOVF: bool, // bit offset: 12 desc: Time-stamp overflow flag
        TAMP1F: bool, // bit offset: 13 desc: Tamper detection flag
        TAMP2F: bool, // bit offset: 14 desc: TAMPER2 detection flag
        reserved0: u1,
        RECALPF: bool, // bit offset: 16 desc: Recalibration pending Flag
        padding: u14,
    });
    pub const PRER = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 prescaler register
        PREDIV_S: u15, // bit offset: 0 desc: Synchronous prescaler factor
        reserved0: u1,
        PREDIV_A: u7, // bit offset: 16 desc: Asynchronous prescaler factor
        padding: u8,
    });
    pub const WUTR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 wakeup timer register
        WUT: u16, // bit offset: 0 desc: Wakeup auto-reload value bits
        padding: u15,
    });
    pub const CALIBR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 calibration register
        DC: u5, // bit offset: 0 desc: Digital calibration
        reserved0: u2,
        DCS: bool, // bit offset: 7 desc: Digital calibration sign
        padding: u23,
    });
    pub const ALRMAR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 alarm A register
        SU: u4, // bit offset: 0 desc: Second units in BCD format
        ST: u3, // bit offset: 4 desc: Second tens in BCD format
        MSK1: bool, // bit offset: 7 desc: Alarm A seconds mask
        MNU: u4, // bit offset: 8 desc: Minute units in BCD format
        MNT: u3, // bit offset: 12 desc: Minute tens in BCD format
        MSK2: bool, // bit offset: 15 desc: Alarm A minutes mask
        HU: u4, // bit offset: 16 desc: Hour units in BCD format
        HT: u2, // bit offset: 20 desc: Hour tens in BCD format
        PM: bool, // bit offset: 22 desc: AM/PM notation
        MSK3: bool, // bit offset: 23 desc: Alarm A hours mask
        DU: u4, // bit offset: 24 desc: Date units or day in BCD format
        DT: u2, // bit offset: 28 desc: Date tens in BCD format
        WDSEL: bool, // bit offset: 30 desc: Week day selection
        MSK4: bool, // bit offset: 31 desc: Alarm A date mask
    });
    pub const ALRMBR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 alarm B register
        SU: u4, // bit offset: 0 desc: Second units in BCD format
        ST: u3, // bit offset: 4 desc: Second tens in BCD format
        MSK1: bool, // bit offset: 7 desc: Alarm B seconds mask
        MNU: u4, // bit offset: 8 desc: Minute units in BCD format
        MNT: u3, // bit offset: 12 desc: Minute tens in BCD format
        MSK2: bool, // bit offset: 15 desc: Alarm B minutes mask
        HU: u4, // bit offset: 16 desc: Hour units in BCD format
        HT: u2, // bit offset: 20 desc: Hour tens in BCD format
        PM: bool, // bit offset: 22 desc: AM/PM notation
        MSK3: bool, // bit offset: 23 desc: Alarm B hours mask
        DU: u4, // bit offset: 24 desc: Date units or day in BCD format
        DT: u2, // bit offset: 28 desc: Date tens in BCD format
        WDSEL: bool, // bit offset: 30 desc: Week day selection
        MSK4: bool, // bit offset: 31 desc: Alarm B date mask
    });
    pub const WPR = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 write protection register
        KEY: u8, // bit offset: 0 desc: Write protection key
        padding: u23,
    });
    pub const SSR = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 sub second register
        SS: u16, // bit offset: 0 desc: Sub second value
        padding: u15,
    });
    pub const SHIFTR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 shift control register
        SUBFS: u15, // bit offset: 0 desc: Subtract a fraction of a second
        reserved0: u16,
        ADD1S: bool, // bit offset: 31 desc: Add one second
    });
    pub const TSTR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 time stamp time register
        SU: u4, // bit offset: 0 desc: Second units in BCD format
        ST: u3, // bit offset: 4 desc: Second tens in BCD format
        reserved0: u1,
        MNU: u4, // bit offset: 8 desc: Minute units in BCD format
        MNT: u3, // bit offset: 12 desc: Minute tens in BCD format
        reserved1: u1,
        HU: u4, // bit offset: 16 desc: Hour units in BCD format
        HT: u2, // bit offset: 20 desc: Hour tens in BCD format
        PM: bool, // bit offset: 22 desc: AM/PM notation
        padding: u8,
    });
    pub const TSDR = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 time stamp date register
        DU: u4, // bit offset: 0 desc: Date units in BCD format
        DT: u2, // bit offset: 4 desc: Date tens in BCD format
        reserved0: u2,
        MU: u4, // bit offset: 8 desc: Month units in BCD format
        MT: bool, // bit offset: 12 desc: Month tens in BCD format
        WDU: u3, // bit offset: 13 desc: Week day units
        padding: u15,
    });
    pub const TSSSR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 timestamp sub second register
        SS: u16, // bit offset: 0 desc: Sub second value
        padding: u15,
    });
    pub const CALR = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 calibration register
        CALM: u9, // bit offset: 0 desc: Calibration minus
        reserved0: u4,
        CALW16: bool, // bit offset: 13 desc: Use a 16-second calibration cycle period
        CALW8: bool, // bit offset: 14 desc: Use an 8-second calibration cycle period
        CALP: bool, // bit offset: 15 desc: Increase frequency of RTC by 488.5 ppm
        padding: u15,
    });
    pub const TAFCR = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 tamper and alternate function configuration register
        TAMP1E: bool, // bit offset: 0 desc: Tamper 1 detection enable
        TAMP1TRG: bool, // bit offset: 1 desc: Active level for tamper 1
        TAMPIE: bool, // bit offset: 2 desc: Tamper interrupt enable
        TAMP2E: bool, // bit offset: 3 desc: Tamper 2 detection enable
        TAMP2TRG: bool, // bit offset: 4 desc: Active level for tamper 2
        reserved0: u2,
        TAMPTS: bool, // bit offset: 7 desc: Activate timestamp on tamper detection event
        TAMPFREQ: u3, // bit offset: 8 desc: Tamper sampling frequency
        TAMPFLT: u2, // bit offset: 11 desc: Tamper filter count
        TAMPPRCH: u2, // bit offset: 13 desc: Tamper precharge duration
        TAMPPUDIS: bool, // bit offset: 15 desc: TAMPER pull-up disable
        TAMP1INSEL: bool, // bit offset: 16 desc: TAMPER1 mapping
        TSINSEL: bool, // bit offset: 17 desc: TIMESTAMP mapping
        ALARMOUTTYPE: bool, // bit offset: 18 desc: AFO_ALARM output type
        padding: u12,
    });
    pub const ALRMASSR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 alarm A sub second register
        SS: u15, // bit offset: 0 desc: Sub seconds value
        reserved0: u9,
        MASKSS: u4, // bit offset: 24 desc: Mask the most-significant bits starting at this bit
        padding: u3,
    });
    pub const ALRMBSSR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 alarm B sub second register
        SS: u15, // bit offset: 0 desc: Sub seconds value
        reserved0: u9,
        MASKSS: u4, // bit offset: 24 desc: Mask the most-significant bits starting at this bit
        padding: u3,
    });
    pub const BKP0R = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP1R = MMIO(Address + 0x00000054, u32, packed struct { // byte offset: 84 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP2R = MMIO(Address + 0x00000058, u32, packed struct { // byte offset: 88 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP3R = MMIO(Address + 0x0000005c, u32, packed struct { // byte offset: 92 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP4R = MMIO(Address + 0x00000060, u32, packed struct { // byte offset: 96 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP5R = MMIO(Address + 0x00000064, u32, packed struct { // byte offset: 100 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP6R = MMIO(Address + 0x00000068, u32, packed struct { // byte offset: 104 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP7R = MMIO(Address + 0x0000006c, u32, packed struct { // byte offset: 108 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP8R = MMIO(Address + 0x00000070, u32, packed struct { // byte offset: 112 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP9R = MMIO(Address + 0x00000074, u32, packed struct { // byte offset: 116 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP10R = MMIO(Address + 0x00000078, u32, packed struct { // byte offset: 120 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP11R = MMIO(Address + 0x0000007c, u32, packed struct { // byte offset: 124 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP12R = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP13R = MMIO(Address + 0x00000084, u32, packed struct { // byte offset: 132 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP14R = MMIO(Address + 0x00000088, u32, packed struct { // byte offset: 136 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP15R = MMIO(Address + 0x0000008c, u32, packed struct { // byte offset: 140 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP16R = MMIO(Address + 0x00000090, u32, packed struct { // byte offset: 144 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP17R = MMIO(Address + 0x00000094, u32, packed struct { // byte offset: 148 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP18R = MMIO(Address + 0x00000098, u32, packed struct { // byte offset: 152 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
    pub const BKP19R = MMIO(Address + 0x0000009c, u32, packed struct { // byte offset: 156 backup register
        BKP: u32, // bit offset: 0 desc: BKP
    });
};
pub const SDIO = extern struct {
    pub const Address: u32 = 0x40012c00;
    pub const POWER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 power control register
        PWRCTRL: u2, // bit offset: 0 desc: PWRCTRL
        padding: u29,
    });
    pub const CLKCR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 SDI clock control register
        CLKDIV: u8, // bit offset: 0 desc: Clock divide factor
        CLKEN: bool, // bit offset: 8 desc: Clock enable bit
        PWRSAV: bool, // bit offset: 9 desc: Power saving configuration bit
        BYPASS: bool, // bit offset: 10 desc: Clock divider bypass enable bit
        WIDBUS: u2, // bit offset: 11 desc: Wide bus mode enable bit
        NEGEDGE: bool, // bit offset: 13 desc: SDIO_CK dephasing selection bit
        HWFC_EN: bool, // bit offset: 14 desc: HW Flow Control enable
        padding: u16,
    });
    pub const ARG = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 argument register
        CMDARG: u32, // bit offset: 0 desc: Command argument
    });
    pub const CMD = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 command register
        CMDINDEX: u6, // bit offset: 0 desc: Command index
        WAITRESP: u2, // bit offset: 6 desc: Wait for response bits
        WAITINT: bool, // bit offset: 8 desc: CPSM waits for interrupt request
        WAITPEND: bool, // bit offset: 9 desc: CPSM Waits for ends of data transfer (CmdPend internal signal).
        CPSMEN: bool, // bit offset: 10 desc: Command path state machine (CPSM) Enable bit
        SDIOSuspend: bool, // bit offset: 11 desc: SD I/O suspend command
        ENCMDcompl: bool, // bit offset: 12 desc: Enable CMD completion
        nIEN: bool, // bit offset: 13 desc: not Interrupt Enable
        CE_ATACMD: bool, // bit offset: 14 desc: CE-ATA command
        padding: u16,
    });
    pub const RESPCMD = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 command response register
        RESPCMD: u6, // bit offset: 0 desc: Response command index
        padding: u25,
    });
    pub const RESP1 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 response 1..4 register
        CARDSTATUS1: u32, // bit offset: 0 desc: Card Status
    });
    pub const RESP2 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 response 1..4 register
        CARDSTATUS2: u32, // bit offset: 0 desc: Card Status
    });
    pub const RESP3 = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 response 1..4 register
        CARDSTATUS3: u32, // bit offset: 0 desc: Card Status
    });
    pub const RESP4 = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 response 1..4 register
        CARDSTATUS4: u32, // bit offset: 0 desc: Card Status
    });
    pub const DTIMER = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 data timer register
        DATATIME: u32, // bit offset: 0 desc: Data timeout period
    });
    pub const DLEN = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 data length register
        DATALENGTH: u25, // bit offset: 0 desc: Data length value
        padding: u6,
    });
    pub const DCTRL = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 data control register
        DTEN: bool, // bit offset: 0 desc: DTEN
        DTDIR: bool, // bit offset: 1 desc: Data transfer direction selection
        DTMODE: bool, // bit offset: 2 desc: Data transfer mode selection 1: Stream or SDIO multibyte data transfer.
        DMAEN: bool, // bit offset: 3 desc: DMA enable bit
        DBLOCKSIZE: u4, // bit offset: 4 desc: Data block size
        RWSTART: bool, // bit offset: 8 desc: Read wait start
        RWSTOP: bool, // bit offset: 9 desc: Read wait stop
        RWMOD: bool, // bit offset: 10 desc: Read wait mode
        SDIOEN: bool, // bit offset: 11 desc: SD I/O enable functions
        padding: u19,
    });
    pub const DCOUNT = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 data counter register
        DATACOUNT: u25, // bit offset: 0 desc: Data count value
        padding: u6,
    });
    pub const STA = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 status register
        CCRCFAIL: bool, // bit offset: 0 desc: Command response received (CRC check failed)
        DCRCFAIL: bool, // bit offset: 1 desc: Data block sent/received (CRC check failed)
        CTIMEOUT: bool, // bit offset: 2 desc: Command response timeout
        DTIMEOUT: bool, // bit offset: 3 desc: Data timeout
        TXUNDERR: bool, // bit offset: 4 desc: Transmit FIFO underrun error
        RXOVERR: bool, // bit offset: 5 desc: Received FIFO overrun error
        CMDREND: bool, // bit offset: 6 desc: Command response received (CRC check passed)
        CMDSENT: bool, // bit offset: 7 desc: Command sent (no response required)
        DATAEND: bool, // bit offset: 8 desc: Data end (data counter, SDIDCOUNT, is zero)
        STBITERR: bool, // bit offset: 9 desc: Start bit not detected on all data signals in wide bus mode
        DBCKEND: bool, // bit offset: 10 desc: Data block sent/received (CRC check passed)
        CMDACT: bool, // bit offset: 11 desc: Command transfer in progress
        TXACT: bool, // bit offset: 12 desc: Data transmit in progress
        RXACT: bool, // bit offset: 13 desc: Data receive in progress
        TXFIFOHE: bool, // bit offset: 14 desc: Transmit FIFO half empty: at least 8 words can be written into the FIFO
        RXFIFOHF: bool, // bit offset: 15 desc: Receive FIFO half full: there are at least 8 words in the FIFO
        TXFIFOF: bool, // bit offset: 16 desc: Transmit FIFO full
        RXFIFOF: bool, // bit offset: 17 desc: Receive FIFO full
        TXFIFOE: bool, // bit offset: 18 desc: Transmit FIFO empty
        RXFIFOE: bool, // bit offset: 19 desc: Receive FIFO empty
        TXDAVL: bool, // bit offset: 20 desc: Data available in transmit FIFO
        RXDAVL: bool, // bit offset: 21 desc: Data available in receive FIFO
        SDIOIT: bool, // bit offset: 22 desc: SDIO interrupt received
        CEATAEND: bool, // bit offset: 23 desc: CE-ATA command completion signal received for CMD61
        padding: u7,
    });
    pub const ICR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 interrupt clear register
        CCRCFAILC: bool, // bit offset: 0 desc: CCRCFAIL flag clear bit
        DCRCFAILC: bool, // bit offset: 1 desc: DCRCFAIL flag clear bit
        CTIMEOUTC: bool, // bit offset: 2 desc: CTIMEOUT flag clear bit
        DTIMEOUTC: bool, // bit offset: 3 desc: DTIMEOUT flag clear bit
        TXUNDERRC: bool, // bit offset: 4 desc: TXUNDERR flag clear bit
        RXOVERRC: bool, // bit offset: 5 desc: RXOVERR flag clear bit
        CMDRENDC: bool, // bit offset: 6 desc: CMDREND flag clear bit
        CMDSENTC: bool, // bit offset: 7 desc: CMDSENT flag clear bit
        DATAENDC: bool, // bit offset: 8 desc: DATAEND flag clear bit
        STBITERRC: bool, // bit offset: 9 desc: STBITERR flag clear bit
        DBCKENDC: bool, // bit offset: 10 desc: DBCKEND flag clear bit
        reserved0: u11,
        SDIOITC: bool, // bit offset: 22 desc: SDIOIT flag clear bit
        CEATAENDC: bool, // bit offset: 23 desc: CEATAEND flag clear bit
        padding: u7,
    });
    pub const MASK = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 mask register
        CCRCFAILIE: bool, // bit offset: 0 desc: Command CRC fail interrupt enable
        DCRCFAILIE: bool, // bit offset: 1 desc: Data CRC fail interrupt enable
        CTIMEOUTIE: bool, // bit offset: 2 desc: Command timeout interrupt enable
        DTIMEOUTIE: bool, // bit offset: 3 desc: Data timeout interrupt enable
        TXUNDERRIE: bool, // bit offset: 4 desc: Tx FIFO underrun error interrupt enable
        RXOVERRIE: bool, // bit offset: 5 desc: Rx FIFO overrun error interrupt enable
        CMDRENDIE: bool, // bit offset: 6 desc: Command response received interrupt enable
        CMDSENTIE: bool, // bit offset: 7 desc: Command sent interrupt enable
        DATAENDIE: bool, // bit offset: 8 desc: Data end interrupt enable
        STBITERRIE: bool, // bit offset: 9 desc: Start bit error interrupt enable
        DBCKENDIE: bool, // bit offset: 10 desc: Data block end interrupt enable
        CMDACTIE: bool, // bit offset: 11 desc: Command acting interrupt enable
        TXACTIE: bool, // bit offset: 12 desc: Data transmit acting interrupt enable
        RXACTIE: bool, // bit offset: 13 desc: Data receive acting interrupt enable
        TXFIFOHEIE: bool, // bit offset: 14 desc: Tx FIFO half empty interrupt enable
        RXFIFOHFIE: bool, // bit offset: 15 desc: Rx FIFO half full interrupt enable
        TXFIFOFIE: bool, // bit offset: 16 desc: Tx FIFO full interrupt enable
        RXFIFOFIE: bool, // bit offset: 17 desc: Rx FIFO full interrupt enable
        TXFIFOEIE: bool, // bit offset: 18 desc: Tx FIFO empty interrupt enable
        RXFIFOEIE: bool, // bit offset: 19 desc: Rx FIFO empty interrupt enable
        TXDAVLIE: bool, // bit offset: 20 desc: Data available in Tx FIFO interrupt enable
        RXDAVLIE: bool, // bit offset: 21 desc: Data available in Rx FIFO interrupt enable
        SDIOITIE: bool, // bit offset: 22 desc: SDIO mode interrupt received interrupt enable
        CEATAENDIE: bool, // bit offset: 23 desc: CE-ATA command completion signal received interrupt enable
        padding: u7,
    });
    pub const FIFOCNT = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 FIFO counter register
        FIFOCOUNT: u24, // bit offset: 0 desc: Remaining number of words to be written to or read from the FIFO.
        padding: u7,
    });
    pub const FIFO = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 data FIFO register
        FIFOData: u32, // bit offset: 0 desc: Receive and transmit FIFO data
    });
};
pub const SYSCFG = extern struct {
    pub const Address: u32 = 0x40013800;
    pub const MEMRM = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 memory remap register
        MEM_MODE: u2, // bit offset: 0 desc: MEM_MODE
        padding: u29,
    });
    pub const PMC = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 peripheral mode configuration register
        reserved0: u16,
        ADC1DC2: bool, // bit offset: 16 desc: ADC1DC2
        padding: u14,
    });
    pub const EXTICR1 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 external interrupt configuration register 1
        EXTI0: u4, // bit offset: 0 desc: EXTI x configuration (x = 0 to 3)
        EXTI1: u4, // bit offset: 4 desc: EXTI x configuration (x = 0 to 3)
        EXTI2: u4, // bit offset: 8 desc: EXTI x configuration (x = 0 to 3)
        EXTI3: u4, // bit offset: 12 desc: EXTI x configuration (x = 0 to 3)
        padding: u15,
    });
    pub const EXTICR2 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 external interrupt configuration register 2
        EXTI4: u4, // bit offset: 0 desc: EXTI x configuration (x = 4 to 7)
        EXTI5: u4, // bit offset: 4 desc: EXTI x configuration (x = 4 to 7)
        EXTI6: u4, // bit offset: 8 desc: EXTI x configuration (x = 4 to 7)
        EXTI7: u4, // bit offset: 12 desc: EXTI x configuration (x = 4 to 7)
        padding: u15,
    });
    pub const EXTICR3 = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 external interrupt configuration register 3
        EXTI8: u4, // bit offset: 0 desc: EXTI x configuration (x = 8 to 11)
        EXTI9: u4, // bit offset: 4 desc: EXTI x configuration (x = 8 to 11)
        EXTI10: u4, // bit offset: 8 desc: EXTI10
        EXTI11: u4, // bit offset: 12 desc: EXTI x configuration (x = 8 to 11)
        padding: u15,
    });
    pub const EXTICR4 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 external interrupt configuration register 4
        EXTI12: u4, // bit offset: 0 desc: EXTI x configuration (x = 12 to 15)
        EXTI13: u4, // bit offset: 4 desc: EXTI x configuration (x = 12 to 15)
        EXTI14: u4, // bit offset: 8 desc: EXTI x configuration (x = 12 to 15)
        EXTI15: u4, // bit offset: 12 desc: EXTI x configuration (x = 12 to 15)
        padding: u15,
    });
    pub const CMPCR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 Compensation cell control register
        CMP_PD: bool, // bit offset: 0 desc: Compensation cell power-down
        reserved0: u7,
        READY: bool, // bit offset: 8 desc: READY
        padding: u22,
    });
};
pub const TIM1 = extern struct {
    pub const Address: u32 = 0x40010000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        CCPC: bool, // bit offset: 0 desc: Capture/compare preloaded control
        reserved0: u1,
        CCUS: bool, // bit offset: 2 desc: Capture/compare control update selection
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        OIS1: bool, // bit offset: 8 desc: Output Idle state 1
        OIS1N: bool, // bit offset: 9 desc: Output Idle state 1
        OIS2: bool, // bit offset: 10 desc: Output Idle state 2
        OIS2N: bool, // bit offset: 11 desc: Output Idle state 2
        OIS3: bool, // bit offset: 12 desc: Output Idle state 3
        OIS3N: bool, // bit offset: 13 desc: Output Idle state 3
        OIS4: bool, // bit offset: 14 desc: Output Idle state 4
        padding: u16,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        COMIE: bool, // bit offset: 5 desc: COM interrupt enable
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        BIE: bool, // bit offset: 7 desc: Break interrupt enable
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        COMDE: bool, // bit offset: 13 desc: COM DMA request enable
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        COMIF: bool, // bit offset: 5 desc: COM interrupt flag
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        BIF: bool, // bit offset: 7 desc: Break interrupt flag
        reserved0: u1,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        COMG: bool, // bit offset: 5 desc: Capture/Compare control update generation
        TG: bool, // bit offset: 6 desc: Trigger generation
        BG: bool, // bit offset: 7 desc: Break generation
        padding: u23,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        OC1FE: bool, // bit offset: 2 desc: Output Compare 1 fast enable
        OC1PE: bool, // bit offset: 3 desc: Output Compare 1 preload enable
        OC1M: u3, // bit offset: 4 desc: Output Compare 1 mode
        OC1CE: bool, // bit offset: 7 desc: Output Compare 1 clear enable
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        OC2FE: bool, // bit offset: 10 desc: Output Compare 2 fast enable
        OC2PE: bool, // bit offset: 11 desc: Output Compare 2 preload enable
        OC2M: u3, // bit offset: 12 desc: Output Compare 2 mode
        OC2CE: bool, // bit offset: 15 desc: Output Compare 2 clear enable
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: Capture/Compare 3 selection
        OC3FE: bool, // bit offset: 2 desc: Output compare 3 fast enable
        OC3PE: bool, // bit offset: 3 desc: Output compare 3 preload enable
        OC3M: u3, // bit offset: 4 desc: Output compare 3 mode
        OC3CE: bool, // bit offset: 7 desc: Output compare 3 clear enable
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        OC4FE: bool, // bit offset: 10 desc: Output compare 4 fast enable
        OC4PE: bool, // bit offset: 11 desc: Output compare 4 preload enable
        OC4M: u3, // bit offset: 12 desc: Output compare 4 mode
        OC4CE: bool, // bit offset: 15 desc: Output compare 4 clear enable
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        CC1NE: bool, // bit offset: 2 desc: Capture/Compare 1 complementary output enable
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        CC2NE: bool, // bit offset: 6 desc: Capture/Compare 2 complementary output enable
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        CC3NE: bool, // bit offset: 10 desc: Capture/Compare 3 complementary output enable
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        padding: u17,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT: u16, // bit offset: 0 desc: counter value
        padding: u15,
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR: u16, // bit offset: 0 desc: Auto-reload value
        padding: u15,
    });
    pub const RCR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 repetition counter register
        REP: u8, // bit offset: 0 desc: Repetition counter value
        padding: u23,
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1: u16, // bit offset: 0 desc: Capture/Compare 1 value
        padding: u15,
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2: u16, // bit offset: 0 desc: Capture/Compare 2 value
        padding: u15,
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3: u16, // bit offset: 0 desc: Capture/Compare value
        padding: u15,
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4: u16, // bit offset: 0 desc: Capture/Compare value
        padding: u15,
    });
    pub const BDTR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 break and dead-time register
        DTG: u8, // bit offset: 0 desc: Dead-time generator setup
        LOCK: u2, // bit offset: 8 desc: Lock configuration
        OSSI: bool, // bit offset: 10 desc: Off-state selection for Idle mode
        OSSR: bool, // bit offset: 11 desc: Off-state selection for Run mode
        BKE: bool, // bit offset: 12 desc: Break enable
        BKP: bool, // bit offset: 13 desc: Break polarity
        AOE: bool, // bit offset: 14 desc: Automatic output enable
        MOE: bool, // bit offset: 15 desc: Main output enable
        padding: u15,
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
};
pub const TIM8 = extern struct {
    pub const Address: u32 = 0x40010400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        CCPC: bool, // bit offset: 0 desc: Capture/compare preloaded control
        reserved0: u1,
        CCUS: bool, // bit offset: 2 desc: Capture/compare control update selection
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        OIS1: bool, // bit offset: 8 desc: Output Idle state 1
        OIS1N: bool, // bit offset: 9 desc: Output Idle state 1
        OIS2: bool, // bit offset: 10 desc: Output Idle state 2
        OIS2N: bool, // bit offset: 11 desc: Output Idle state 2
        OIS3: bool, // bit offset: 12 desc: Output Idle state 3
        OIS3N: bool, // bit offset: 13 desc: Output Idle state 3
        OIS4: bool, // bit offset: 14 desc: Output Idle state 4
        padding: u16,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        COMIE: bool, // bit offset: 5 desc: COM interrupt enable
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        BIE: bool, // bit offset: 7 desc: Break interrupt enable
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        COMDE: bool, // bit offset: 13 desc: COM DMA request enable
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        COMIF: bool, // bit offset: 5 desc: COM interrupt flag
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        BIF: bool, // bit offset: 7 desc: Break interrupt flag
        reserved0: u1,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        COMG: bool, // bit offset: 5 desc: Capture/Compare control update generation
        TG: bool, // bit offset: 6 desc: Trigger generation
        BG: bool, // bit offset: 7 desc: Break generation
        padding: u23,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        OC1FE: bool, // bit offset: 2 desc: Output Compare 1 fast enable
        OC1PE: bool, // bit offset: 3 desc: Output Compare 1 preload enable
        OC1M: u3, // bit offset: 4 desc: Output Compare 1 mode
        OC1CE: bool, // bit offset: 7 desc: Output Compare 1 clear enable
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        OC2FE: bool, // bit offset: 10 desc: Output Compare 2 fast enable
        OC2PE: bool, // bit offset: 11 desc: Output Compare 2 preload enable
        OC2M: u3, // bit offset: 12 desc: Output Compare 2 mode
        OC2CE: bool, // bit offset: 15 desc: Output Compare 2 clear enable
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: Capture/Compare 3 selection
        OC3FE: bool, // bit offset: 2 desc: Output compare 3 fast enable
        OC3PE: bool, // bit offset: 3 desc: Output compare 3 preload enable
        OC3M: u3, // bit offset: 4 desc: Output compare 3 mode
        OC3CE: bool, // bit offset: 7 desc: Output compare 3 clear enable
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        OC4FE: bool, // bit offset: 10 desc: Output compare 4 fast enable
        OC4PE: bool, // bit offset: 11 desc: Output compare 4 preload enable
        OC4M: u3, // bit offset: 12 desc: Output compare 4 mode
        OC4CE: bool, // bit offset: 15 desc: Output compare 4 clear enable
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        CC1NE: bool, // bit offset: 2 desc: Capture/Compare 1 complementary output enable
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        CC2NE: bool, // bit offset: 6 desc: Capture/Compare 2 complementary output enable
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        CC3NE: bool, // bit offset: 10 desc: Capture/Compare 3 complementary output enable
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        padding: u17,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT: u16, // bit offset: 0 desc: counter value
        padding: u15,
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR: u16, // bit offset: 0 desc: Auto-reload value
        padding: u15,
    });
    pub const RCR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 repetition counter register
        REP: u8, // bit offset: 0 desc: Repetition counter value
        padding: u23,
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1: u16, // bit offset: 0 desc: Capture/Compare 1 value
        padding: u15,
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2: u16, // bit offset: 0 desc: Capture/Compare 2 value
        padding: u15,
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3: u16, // bit offset: 0 desc: Capture/Compare value
        padding: u15,
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4: u16, // bit offset: 0 desc: Capture/Compare value
        padding: u15,
    });
    pub const BDTR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 break and dead-time register
        DTG: u8, // bit offset: 0 desc: Dead-time generator setup
        LOCK: u2, // bit offset: 8 desc: Lock configuration
        OSSI: bool, // bit offset: 10 desc: Off-state selection for Idle mode
        OSSR: bool, // bit offset: 11 desc: Off-state selection for Run mode
        BKE: bool, // bit offset: 12 desc: Break enable
        BKP: bool, // bit offset: 13 desc: Break polarity
        AOE: bool, // bit offset: 14 desc: Automatic output enable
        MOE: bool, // bit offset: 15 desc: Main output enable
        padding: u15,
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
};
pub const TIM10 = extern struct {
    pub const Address: u32 = 0x40014400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        reserved0: u4,
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        padding: u29,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        reserved0: u7,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        padding: u21,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        padding: u29,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        OC1FE: bool, // bit offset: 2 desc: Output Compare 1 fast enable
        OC1PE: bool, // bit offset: 3 desc: Output Compare 1 preload enable
        OC1M: u3, // bit offset: 4 desc: Output Compare 1 mode
        padding: u24,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        padding: u23,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        padding: u27,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT: u16, // bit offset: 0 desc: counter value
        padding: u15,
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR: u16, // bit offset: 0 desc: Auto-reload value
        padding: u15,
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1: u16, // bit offset: 0 desc: Capture/Compare 1 value
        padding: u15,
    });
};
pub const TIM11 = extern struct {
    pub const Address: u32 = 0x40014800;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        reserved0: u4,
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        padding: u29,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        reserved0: u7,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        padding: u21,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        padding: u29,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        OC1FE: bool, // bit offset: 2 desc: Output Compare 1 fast enable
        OC1PE: bool, // bit offset: 3 desc: Output Compare 1 preload enable
        OC1M: u3, // bit offset: 4 desc: Output Compare 1 mode
        padding: u24,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        padding: u23,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        padding: u27,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT: u16, // bit offset: 0 desc: counter value
        padding: u15,
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR: u16, // bit offset: 0 desc: Auto-reload value
        padding: u15,
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1: u16, // bit offset: 0 desc: Capture/Compare 1 value
        padding: u15,
    });
    pub const OR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 option register
        RMP: u2, // bit offset: 0 desc: Input 1 remapping capability
        padding: u29,
    });
};
pub const TIM2 = extern struct {
    pub const Address: u32 = 0x40000000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        reserved0: u3,
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        padding: u23,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        reserved0: u1,
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        reserved1: u1,
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        reserved2: u1,
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        reserved0: u1,
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        reserved1: u2,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        reserved0: u1,
        TG: bool, // bit offset: 6 desc: Trigger generation
        padding: u24,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: CC1S
        OC1FE: bool, // bit offset: 2 desc: OC1FE
        OC1PE: bool, // bit offset: 3 desc: OC1PE
        OC1M: u3, // bit offset: 4 desc: OC1M
        OC1CE: bool, // bit offset: 7 desc: OC1CE
        CC2S: u2, // bit offset: 8 desc: CC2S
        OC2FE: bool, // bit offset: 10 desc: OC2FE
        OC2PE: bool, // bit offset: 11 desc: OC2PE
        OC2M: u3, // bit offset: 12 desc: OC2M
        OC2CE: bool, // bit offset: 15 desc: OC2CE
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: CC3S
        OC3FE: bool, // bit offset: 2 desc: OC3FE
        OC3PE: bool, // bit offset: 3 desc: OC3PE
        OC3M: u3, // bit offset: 4 desc: OC3M
        OC3CE: bool, // bit offset: 7 desc: OC3CE
        CC4S: u2, // bit offset: 8 desc: CC4S
        OC4FE: bool, // bit offset: 10 desc: OC4FE
        OC4PE: bool, // bit offset: 11 desc: OC4PE
        OC4M: u3, // bit offset: 12 desc: OC4M
        O24CE: bool, // bit offset: 15 desc: O24CE
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        reserved1: u1,
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        reserved2: u1,
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        reserved3: u1,
        CC4NP: bool, // bit offset: 15 desc: Capture/Compare 4 output Polarity
        padding: u15,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT_L: u16, // bit offset: 0 desc: Low counter value
        CNT_H: u16, // bit offset: 16 desc: High counter value
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR_L: u16, // bit offset: 0 desc: Low Auto-reload value
        ARR_H: u16, // bit offset: 16 desc: High Auto-reload value
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1_L: u16, // bit offset: 0 desc: Low Capture/Compare 1 value
        CCR1_H: u16, // bit offset: 16 desc: High Capture/Compare 1 value
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2_L: u16, // bit offset: 0 desc: Low Capture/Compare 2 value
        CCR2_H: u16, // bit offset: 16 desc: High Capture/Compare 2 value
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR3_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR4_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
    pub const OR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 TIM5 option register
        reserved0: u10,
        ITR1_RMP: u2, // bit offset: 10 desc: Timer Input 4 remap
        padding: u19,
    });
};
pub const TIM3 = extern struct {
    pub const Address: u32 = 0x40000400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        reserved0: u3,
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        padding: u23,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        reserved0: u1,
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        reserved1: u1,
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        reserved2: u1,
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        reserved0: u1,
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        reserved1: u2,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        reserved0: u1,
        TG: bool, // bit offset: 6 desc: Trigger generation
        padding: u24,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: CC1S
        OC1FE: bool, // bit offset: 2 desc: OC1FE
        OC1PE: bool, // bit offset: 3 desc: OC1PE
        OC1M: u3, // bit offset: 4 desc: OC1M
        OC1CE: bool, // bit offset: 7 desc: OC1CE
        CC2S: u2, // bit offset: 8 desc: CC2S
        OC2FE: bool, // bit offset: 10 desc: OC2FE
        OC2PE: bool, // bit offset: 11 desc: OC2PE
        OC2M: u3, // bit offset: 12 desc: OC2M
        OC2CE: bool, // bit offset: 15 desc: OC2CE
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: CC3S
        OC3FE: bool, // bit offset: 2 desc: OC3FE
        OC3PE: bool, // bit offset: 3 desc: OC3PE
        OC3M: u3, // bit offset: 4 desc: OC3M
        OC3CE: bool, // bit offset: 7 desc: OC3CE
        CC4S: u2, // bit offset: 8 desc: CC4S
        OC4FE: bool, // bit offset: 10 desc: OC4FE
        OC4PE: bool, // bit offset: 11 desc: OC4PE
        OC4M: u3, // bit offset: 12 desc: OC4M
        O24CE: bool, // bit offset: 15 desc: O24CE
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        reserved1: u1,
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        reserved2: u1,
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        reserved3: u1,
        CC4NP: bool, // bit offset: 15 desc: Capture/Compare 4 output Polarity
        padding: u15,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT_L: u16, // bit offset: 0 desc: Low counter value
        CNT_H: u16, // bit offset: 16 desc: High counter value
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR_L: u16, // bit offset: 0 desc: Low Auto-reload value
        ARR_H: u16, // bit offset: 16 desc: High Auto-reload value
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1_L: u16, // bit offset: 0 desc: Low Capture/Compare 1 value
        CCR1_H: u16, // bit offset: 16 desc: High Capture/Compare 1 value
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2_L: u16, // bit offset: 0 desc: Low Capture/Compare 2 value
        CCR2_H: u16, // bit offset: 16 desc: High Capture/Compare 2 value
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR3_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR4_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
};
pub const TIM4 = extern struct {
    pub const Address: u32 = 0x40000800;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        reserved0: u3,
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        padding: u23,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        reserved0: u1,
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        reserved1: u1,
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        reserved2: u1,
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        reserved0: u1,
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        reserved1: u2,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        reserved0: u1,
        TG: bool, // bit offset: 6 desc: Trigger generation
        padding: u24,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: CC1S
        OC1FE: bool, // bit offset: 2 desc: OC1FE
        OC1PE: bool, // bit offset: 3 desc: OC1PE
        OC1M: u3, // bit offset: 4 desc: OC1M
        OC1CE: bool, // bit offset: 7 desc: OC1CE
        CC2S: u2, // bit offset: 8 desc: CC2S
        OC2FE: bool, // bit offset: 10 desc: OC2FE
        OC2PE: bool, // bit offset: 11 desc: OC2PE
        OC2M: u3, // bit offset: 12 desc: OC2M
        OC2CE: bool, // bit offset: 15 desc: OC2CE
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: CC3S
        OC3FE: bool, // bit offset: 2 desc: OC3FE
        OC3PE: bool, // bit offset: 3 desc: OC3PE
        OC3M: u3, // bit offset: 4 desc: OC3M
        OC3CE: bool, // bit offset: 7 desc: OC3CE
        CC4S: u2, // bit offset: 8 desc: CC4S
        OC4FE: bool, // bit offset: 10 desc: OC4FE
        OC4PE: bool, // bit offset: 11 desc: OC4PE
        OC4M: u3, // bit offset: 12 desc: OC4M
        O24CE: bool, // bit offset: 15 desc: O24CE
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        reserved1: u1,
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        reserved2: u1,
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        reserved3: u1,
        CC4NP: bool, // bit offset: 15 desc: Capture/Compare 4 output Polarity
        padding: u15,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT_L: u16, // bit offset: 0 desc: Low counter value
        CNT_H: u16, // bit offset: 16 desc: High counter value
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR_L: u16, // bit offset: 0 desc: Low Auto-reload value
        ARR_H: u16, // bit offset: 16 desc: High Auto-reload value
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1_L: u16, // bit offset: 0 desc: Low Capture/Compare 1 value
        CCR1_H: u16, // bit offset: 16 desc: High Capture/Compare 1 value
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2_L: u16, // bit offset: 0 desc: Low Capture/Compare 2 value
        CCR2_H: u16, // bit offset: 16 desc: High Capture/Compare 2 value
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR3_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR4_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
};
pub const TIM5 = extern struct {
    pub const Address: u32 = 0x40000c00;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        DIR: bool, // bit offset: 4 desc: Direction
        CMS: u2, // bit offset: 5 desc: Center-aligned mode selection
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        reserved0: u3,
        CCDS: bool, // bit offset: 3 desc: Capture/compare DMA selection
        MMS: u3, // bit offset: 4 desc: Master mode selection
        TI1S: bool, // bit offset: 7 desc: TI1 selection
        padding: u23,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        ETF: u4, // bit offset: 8 desc: External trigger filter
        ETPS: u2, // bit offset: 12 desc: External trigger prescaler
        ECE: bool, // bit offset: 14 desc: External clock enable
        ETP: bool, // bit offset: 15 desc: External trigger polarity
        padding: u15,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        CC3IE: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt enable
        CC4IE: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt enable
        reserved0: u1,
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        reserved1: u1,
        UDE: bool, // bit offset: 8 desc: Update DMA request enable
        CC1DE: bool, // bit offset: 9 desc: Capture/Compare 1 DMA request enable
        CC2DE: bool, // bit offset: 10 desc: Capture/Compare 2 DMA request enable
        CC3DE: bool, // bit offset: 11 desc: Capture/Compare 3 DMA request enable
        CC4DE: bool, // bit offset: 12 desc: Capture/Compare 4 DMA request enable
        reserved2: u1,
        TDE: bool, // bit offset: 14 desc: Trigger DMA request enable
        padding: u16,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        CC3IF: bool, // bit offset: 3 desc: Capture/Compare 3 interrupt flag
        CC4IF: bool, // bit offset: 4 desc: Capture/Compare 4 interrupt flag
        reserved0: u1,
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        reserved1: u2,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        CC3OF: bool, // bit offset: 11 desc: Capture/Compare 3 overcapture flag
        CC4OF: bool, // bit offset: 12 desc: Capture/Compare 4 overcapture flag
        padding: u18,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        CC3G: bool, // bit offset: 3 desc: Capture/compare 3 generation
        CC4G: bool, // bit offset: 4 desc: Capture/compare 4 generation
        reserved0: u1,
        TG: bool, // bit offset: 6 desc: Trigger generation
        padding: u24,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: CC1S
        OC1FE: bool, // bit offset: 2 desc: OC1FE
        OC1PE: bool, // bit offset: 3 desc: OC1PE
        OC1M: u3, // bit offset: 4 desc: OC1M
        OC1CE: bool, // bit offset: 7 desc: OC1CE
        CC2S: u2, // bit offset: 8 desc: CC2S
        OC2FE: bool, // bit offset: 10 desc: OC2FE
        OC2PE: bool, // bit offset: 11 desc: OC2PE
        OC2M: u3, // bit offset: 12 desc: OC2M
        OC2CE: bool, // bit offset: 15 desc: OC2CE
        padding: u15,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u4, // bit offset: 4 desc: Input capture 1 filter
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u4, // bit offset: 12 desc: Input capture 2 filter
        padding: u15,
    });
    pub const CCMR2_Output = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (output mode)
        CC3S: u2, // bit offset: 0 desc: CC3S
        OC3FE: bool, // bit offset: 2 desc: OC3FE
        OC3PE: bool, // bit offset: 3 desc: OC3PE
        OC3M: u3, // bit offset: 4 desc: OC3M
        OC3CE: bool, // bit offset: 7 desc: OC3CE
        CC4S: u2, // bit offset: 8 desc: CC4S
        OC4FE: bool, // bit offset: 10 desc: OC4FE
        OC4PE: bool, // bit offset: 11 desc: OC4PE
        OC4M: u3, // bit offset: 12 desc: OC4M
        O24CE: bool, // bit offset: 15 desc: O24CE
        padding: u15,
    });
    pub const CCMR2_Input = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 capture/compare mode register 2 (input mode)
        CC3S: u2, // bit offset: 0 desc: Capture/compare 3 selection
        IC3PSC: u2, // bit offset: 2 desc: Input capture 3 prescaler
        IC3F: u4, // bit offset: 4 desc: Input capture 3 filter
        CC4S: u2, // bit offset: 8 desc: Capture/Compare 4 selection
        IC4PSC: u2, // bit offset: 10 desc: Input capture 4 prescaler
        IC4F: u4, // bit offset: 12 desc: Input capture 4 filter
        padding: u15,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        reserved1: u1,
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        CC3E: bool, // bit offset: 8 desc: Capture/Compare 3 output enable
        CC3P: bool, // bit offset: 9 desc: Capture/Compare 3 output Polarity
        reserved2: u1,
        CC3NP: bool, // bit offset: 11 desc: Capture/Compare 3 output Polarity
        CC4E: bool, // bit offset: 12 desc: Capture/Compare 4 output enable
        CC4P: bool, // bit offset: 13 desc: Capture/Compare 3 output Polarity
        reserved3: u1,
        CC4NP: bool, // bit offset: 15 desc: Capture/Compare 4 output Polarity
        padding: u15,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT_L: u16, // bit offset: 0 desc: Low counter value
        CNT_H: u16, // bit offset: 16 desc: High counter value
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR_L: u16, // bit offset: 0 desc: Low Auto-reload value
        ARR_H: u16, // bit offset: 16 desc: High Auto-reload value
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1_L: u16, // bit offset: 0 desc: Low Capture/Compare 1 value
        CCR1_H: u16, // bit offset: 16 desc: High Capture/Compare 1 value
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2_L: u16, // bit offset: 0 desc: Low Capture/Compare 2 value
        CCR2_H: u16, // bit offset: 16 desc: High Capture/Compare 2 value
    });
    pub const CCR3 = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 capture/compare register 3
        CCR3_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR3_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const CCR4 = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 capture/compare register 4
        CCR4_L: u16, // bit offset: 0 desc: Low Capture/Compare value
        CCR4_H: u16, // bit offset: 16 desc: High Capture/Compare value
    });
    pub const DCR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 DMA control register
        DBA: u5, // bit offset: 0 desc: DMA base address
        reserved0: u3,
        DBL: u5, // bit offset: 8 desc: DMA burst length
        padding: u18,
    });
    pub const DMAR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 DMA address for full transfer
        DMAB: u16, // bit offset: 0 desc: DMA register for burst accesses
        padding: u15,
    });
    pub const OR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 TIM5 option register
        reserved0: u6,
        IT4_RMP: u2, // bit offset: 6 desc: Timer Input 4 remap
        padding: u23,
    });
};
pub const TIM9 = extern struct {
    pub const Address: u32 = 0x40014000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CEN: bool, // bit offset: 0 desc: Counter enable
        UDIS: bool, // bit offset: 1 desc: Update disable
        URS: bool, // bit offset: 2 desc: Update request source
        OPM: bool, // bit offset: 3 desc: One-pulse mode
        reserved0: u3,
        ARPE: bool, // bit offset: 7 desc: Auto-reload preload enable
        CKD: u2, // bit offset: 8 desc: Clock division
        padding: u21,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        reserved0: u4,
        MMS: u3, // bit offset: 4 desc: Master mode selection
        padding: u24,
    });
    pub const SMCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 slave mode control register
        SMS: u3, // bit offset: 0 desc: Slave mode selection
        reserved0: u1,
        TS: u3, // bit offset: 4 desc: Trigger selection
        MSM: bool, // bit offset: 7 desc: Master/Slave mode
        padding: u23,
    });
    pub const DIER = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 DMA/Interrupt enable register
        UIE: bool, // bit offset: 0 desc: Update interrupt enable
        CC1IE: bool, // bit offset: 1 desc: Capture/Compare 1 interrupt enable
        CC2IE: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt enable
        reserved0: u3,
        TIE: bool, // bit offset: 6 desc: Trigger interrupt enable
        padding: u24,
    });
    pub const SR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 status register
        UIF: bool, // bit offset: 0 desc: Update interrupt flag
        CC1IF: bool, // bit offset: 1 desc: Capture/compare 1 interrupt flag
        CC2IF: bool, // bit offset: 2 desc: Capture/Compare 2 interrupt flag
        reserved0: u3,
        TIF: bool, // bit offset: 6 desc: Trigger interrupt flag
        reserved1: u2,
        CC1OF: bool, // bit offset: 9 desc: Capture/Compare 1 overcapture flag
        CC2OF: bool, // bit offset: 10 desc: Capture/compare 2 overcapture flag
        padding: u20,
    });
    pub const EGR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 event generation register
        UG: bool, // bit offset: 0 desc: Update generation
        CC1G: bool, // bit offset: 1 desc: Capture/compare 1 generation
        CC2G: bool, // bit offset: 2 desc: Capture/compare 2 generation
        reserved0: u3,
        TG: bool, // bit offset: 6 desc: Trigger generation
        padding: u24,
    });
    pub const CCMR1_Output = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (output mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        OC1FE: bool, // bit offset: 2 desc: Output Compare 1 fast enable
        OC1PE: bool, // bit offset: 3 desc: Output Compare 1 preload enable
        OC1M: u3, // bit offset: 4 desc: Output Compare 1 mode
        reserved0: u1,
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        OC2FE: bool, // bit offset: 10 desc: Output Compare 2 fast enable
        OC2PE: bool, // bit offset: 11 desc: Output Compare 2 preload enable
        OC2M: u3, // bit offset: 12 desc: Output Compare 2 mode
        padding: u16,
    });
    pub const CCMR1_Input = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 capture/compare mode register 1 (input mode)
        CC1S: u2, // bit offset: 0 desc: Capture/Compare 1 selection
        ICPCS: u2, // bit offset: 2 desc: Input capture 1 prescaler
        IC1F: u3, // bit offset: 4 desc: Input capture 1 filter
        reserved0: u1,
        CC2S: u2, // bit offset: 8 desc: Capture/Compare 2 selection
        IC2PCS: u2, // bit offset: 10 desc: Input capture 2 prescaler
        IC2F: u3, // bit offset: 12 desc: Input capture 2 filter
        padding: u16,
    });
    pub const CCER = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 capture/compare enable register
        CC1E: bool, // bit offset: 0 desc: Capture/Compare 1 output enable
        CC1P: bool, // bit offset: 1 desc: Capture/Compare 1 output Polarity
        reserved0: u1,
        CC1NP: bool, // bit offset: 3 desc: Capture/Compare 1 output Polarity
        CC2E: bool, // bit offset: 4 desc: Capture/Compare 2 output enable
        CC2P: bool, // bit offset: 5 desc: Capture/Compare 2 output Polarity
        reserved1: u1,
        CC2NP: bool, // bit offset: 7 desc: Capture/Compare 2 output Polarity
        padding: u23,
    });
    pub const CNT = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 counter
        CNT: u16, // bit offset: 0 desc: counter value
        padding: u15,
    });
    pub const PSC = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 prescaler
        PSC: u16, // bit offset: 0 desc: Prescaler value
        padding: u15,
    });
    pub const ARR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 auto-reload register
        ARR: u16, // bit offset: 0 desc: Auto-reload value
        padding: u15,
    });
    pub const CCR1 = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 capture/compare register 1
        CCR1: u16, // bit offset: 0 desc: Capture/Compare 1 value
        padding: u15,
    });
    pub const CCR2 = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 capture/compare register 2
        CCR2: u16, // bit offset: 0 desc: Capture/Compare 2 value
        padding: u15,
    });
};
pub const USART1 = extern struct {
    pub const Address: u32 = 0x40011000;
    pub const SR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Status register
        PE: bool, // bit offset: 0 desc: Parity error
        FE: bool, // bit offset: 1 desc: Framing error
        NF: bool, // bit offset: 2 desc: Noise detected flag
        ORE: bool, // bit offset: 3 desc: Overrun error
        IDLE: bool, // bit offset: 4 desc: IDLE line detected
        RXNE: bool, // bit offset: 5 desc: Read data register not empty
        TC: bool, // bit offset: 6 desc: Transmission complete
        TXE: bool, // bit offset: 7 desc: Transmit data register empty
        LBD: bool, // bit offset: 8 desc: LIN break detection flag
        CTS: bool, // bit offset: 9 desc: CTS flag
        padding: u21,
    });
    pub const DR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Data register
        DR: u9, // bit offset: 0 desc: Data value
        padding: u22,
    });
    pub const BRR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Baud rate register
        DIV_Fraction: u4, // bit offset: 0 desc: fraction of USARTDIV
        DIV_Mantissa: u12, // bit offset: 4 desc: mantissa of USARTDIV
        padding: u15,
    });
    pub const CR1 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Control register 1
        SBK: bool, // bit offset: 0 desc: Send break
        RWU: bool, // bit offset: 1 desc: Receiver wakeup
        RE: bool, // bit offset: 2 desc: Receiver enable
        TE: bool, // bit offset: 3 desc: Transmitter enable
        IDLEIE: bool, // bit offset: 4 desc: IDLE interrupt enable
        RXNEIE: bool, // bit offset: 5 desc: RXNE interrupt enable
        TCIE: bool, // bit offset: 6 desc: Transmission complete interrupt enable
        TXEIE: bool, // bit offset: 7 desc: TXE interrupt enable
        PEIE: bool, // bit offset: 8 desc: PE interrupt enable
        PS: bool, // bit offset: 9 desc: Parity selection
        PCE: bool, // bit offset: 10 desc: Parity control enable
        WAKE: bool, // bit offset: 11 desc: Wakeup method
        M: bool, // bit offset: 12 desc: Word length
        UE: bool, // bit offset: 13 desc: USART enable
        reserved0: u1,
        OVER8: bool, // bit offset: 15 desc: Oversampling mode
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Control register 2
        ADD: u4, // bit offset: 0 desc: Address of the USART node
        reserved0: u1,
        LBDL: bool, // bit offset: 5 desc: lin break detection length
        LBDIE: bool, // bit offset: 6 desc: LIN break detection interrupt enable
        reserved1: u1,
        LBCL: bool, // bit offset: 8 desc: Last bit clock pulse
        CPHA: bool, // bit offset: 9 desc: Clock phase
        CPOL: bool, // bit offset: 10 desc: Clock polarity
        CLKEN: bool, // bit offset: 11 desc: Clock enable
        STOP: u2, // bit offset: 12 desc: STOP bits
        LINEN: bool, // bit offset: 14 desc: LIN mode enable
        padding: u16,
    });
    pub const CR3 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Control register 3
        EIE: bool, // bit offset: 0 desc: Error interrupt enable
        IREN: bool, // bit offset: 1 desc: IrDA mode enable
        IRLP: bool, // bit offset: 2 desc: IrDA low-power
        HDSEL: bool, // bit offset: 3 desc: Half-duplex selection
        NACK: bool, // bit offset: 4 desc: Smartcard NACK enable
        SCEN: bool, // bit offset: 5 desc: Smartcard mode enable
        DMAR: bool, // bit offset: 6 desc: DMA enable receiver
        DMAT: bool, // bit offset: 7 desc: DMA enable transmitter
        RTSE: bool, // bit offset: 8 desc: RTS enable
        CTSE: bool, // bit offset: 9 desc: CTS enable
        CTSIE: bool, // bit offset: 10 desc: CTS interrupt enable
        ONEBIT: bool, // bit offset: 11 desc: One sample bit method enable
        padding: u19,
    });
    pub const GTPR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Guard time and prescaler register
        PSC: u8, // bit offset: 0 desc: Prescaler value
        GT: u8, // bit offset: 8 desc: Guard time value
        padding: u15,
    });
};
pub const USART2 = extern struct {
    pub const Address: u32 = 0x40004400;
    pub const SR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Status register
        PE: bool, // bit offset: 0 desc: Parity error
        FE: bool, // bit offset: 1 desc: Framing error
        NF: bool, // bit offset: 2 desc: Noise detected flag
        ORE: bool, // bit offset: 3 desc: Overrun error
        IDLE: bool, // bit offset: 4 desc: IDLE line detected
        RXNE: bool, // bit offset: 5 desc: Read data register not empty
        TC: bool, // bit offset: 6 desc: Transmission complete
        TXE: bool, // bit offset: 7 desc: Transmit data register empty
        LBD: bool, // bit offset: 8 desc: LIN break detection flag
        CTS: bool, // bit offset: 9 desc: CTS flag
        padding: u21,
    });
    pub const DR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Data register
        DR: u9, // bit offset: 0 desc: Data value
        padding: u22,
    });
    pub const BRR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Baud rate register
        DIV_Fraction: u4, // bit offset: 0 desc: fraction of USARTDIV
        DIV_Mantissa: u12, // bit offset: 4 desc: mantissa of USARTDIV
        padding: u15,
    });
    pub const CR1 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Control register 1
        SBK: bool, // bit offset: 0 desc: Send break
        RWU: bool, // bit offset: 1 desc: Receiver wakeup
        RE: bool, // bit offset: 2 desc: Receiver enable
        TE: bool, // bit offset: 3 desc: Transmitter enable
        IDLEIE: bool, // bit offset: 4 desc: IDLE interrupt enable
        RXNEIE: bool, // bit offset: 5 desc: RXNE interrupt enable
        TCIE: bool, // bit offset: 6 desc: Transmission complete interrupt enable
        TXEIE: bool, // bit offset: 7 desc: TXE interrupt enable
        PEIE: bool, // bit offset: 8 desc: PE interrupt enable
        PS: bool, // bit offset: 9 desc: Parity selection
        PCE: bool, // bit offset: 10 desc: Parity control enable
        WAKE: bool, // bit offset: 11 desc: Wakeup method
        M: bool, // bit offset: 12 desc: Word length
        UE: bool, // bit offset: 13 desc: USART enable
        reserved0: u1,
        OVER8: bool, // bit offset: 15 desc: Oversampling mode
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Control register 2
        ADD: u4, // bit offset: 0 desc: Address of the USART node
        reserved0: u1,
        LBDL: bool, // bit offset: 5 desc: lin break detection length
        LBDIE: bool, // bit offset: 6 desc: LIN break detection interrupt enable
        reserved1: u1,
        LBCL: bool, // bit offset: 8 desc: Last bit clock pulse
        CPHA: bool, // bit offset: 9 desc: Clock phase
        CPOL: bool, // bit offset: 10 desc: Clock polarity
        CLKEN: bool, // bit offset: 11 desc: Clock enable
        STOP: u2, // bit offset: 12 desc: STOP bits
        LINEN: bool, // bit offset: 14 desc: LIN mode enable
        padding: u16,
    });
    pub const CR3 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Control register 3
        EIE: bool, // bit offset: 0 desc: Error interrupt enable
        IREN: bool, // bit offset: 1 desc: IrDA mode enable
        IRLP: bool, // bit offset: 2 desc: IrDA low-power
        HDSEL: bool, // bit offset: 3 desc: Half-duplex selection
        NACK: bool, // bit offset: 4 desc: Smartcard NACK enable
        SCEN: bool, // bit offset: 5 desc: Smartcard mode enable
        DMAR: bool, // bit offset: 6 desc: DMA enable receiver
        DMAT: bool, // bit offset: 7 desc: DMA enable transmitter
        RTSE: bool, // bit offset: 8 desc: RTS enable
        CTSE: bool, // bit offset: 9 desc: CTS enable
        CTSIE: bool, // bit offset: 10 desc: CTS interrupt enable
        ONEBIT: bool, // bit offset: 11 desc: One sample bit method enable
        padding: u19,
    });
    pub const GTPR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Guard time and prescaler register
        PSC: u8, // bit offset: 0 desc: Prescaler value
        GT: u8, // bit offset: 8 desc: Guard time value
        padding: u15,
    });
};
pub const USART6 = extern struct {
    pub const Address: u32 = 0x40011400;
    pub const SR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Status register
        PE: bool, // bit offset: 0 desc: Parity error
        FE: bool, // bit offset: 1 desc: Framing error
        NF: bool, // bit offset: 2 desc: Noise detected flag
        ORE: bool, // bit offset: 3 desc: Overrun error
        IDLE: bool, // bit offset: 4 desc: IDLE line detected
        RXNE: bool, // bit offset: 5 desc: Read data register not empty
        TC: bool, // bit offset: 6 desc: Transmission complete
        TXE: bool, // bit offset: 7 desc: Transmit data register empty
        LBD: bool, // bit offset: 8 desc: LIN break detection flag
        CTS: bool, // bit offset: 9 desc: CTS flag
        padding: u21,
    });
    pub const DR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Data register
        DR: u9, // bit offset: 0 desc: Data value
        padding: u22,
    });
    pub const BRR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Baud rate register
        DIV_Fraction: u4, // bit offset: 0 desc: fraction of USARTDIV
        DIV_Mantissa: u12, // bit offset: 4 desc: mantissa of USARTDIV
        padding: u15,
    });
    pub const CR1 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Control register 1
        SBK: bool, // bit offset: 0 desc: Send break
        RWU: bool, // bit offset: 1 desc: Receiver wakeup
        RE: bool, // bit offset: 2 desc: Receiver enable
        TE: bool, // bit offset: 3 desc: Transmitter enable
        IDLEIE: bool, // bit offset: 4 desc: IDLE interrupt enable
        RXNEIE: bool, // bit offset: 5 desc: RXNE interrupt enable
        TCIE: bool, // bit offset: 6 desc: Transmission complete interrupt enable
        TXEIE: bool, // bit offset: 7 desc: TXE interrupt enable
        PEIE: bool, // bit offset: 8 desc: PE interrupt enable
        PS: bool, // bit offset: 9 desc: Parity selection
        PCE: bool, // bit offset: 10 desc: Parity control enable
        WAKE: bool, // bit offset: 11 desc: Wakeup method
        M: bool, // bit offset: 12 desc: Word length
        UE: bool, // bit offset: 13 desc: USART enable
        reserved0: u1,
        OVER8: bool, // bit offset: 15 desc: Oversampling mode
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Control register 2
        ADD: u4, // bit offset: 0 desc: Address of the USART node
        reserved0: u1,
        LBDL: bool, // bit offset: 5 desc: lin break detection length
        LBDIE: bool, // bit offset: 6 desc: LIN break detection interrupt enable
        reserved1: u1,
        LBCL: bool, // bit offset: 8 desc: Last bit clock pulse
        CPHA: bool, // bit offset: 9 desc: Clock phase
        CPOL: bool, // bit offset: 10 desc: Clock polarity
        CLKEN: bool, // bit offset: 11 desc: Clock enable
        STOP: u2, // bit offset: 12 desc: STOP bits
        LINEN: bool, // bit offset: 14 desc: LIN mode enable
        padding: u16,
    });
    pub const CR3 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Control register 3
        EIE: bool, // bit offset: 0 desc: Error interrupt enable
        IREN: bool, // bit offset: 1 desc: IrDA mode enable
        IRLP: bool, // bit offset: 2 desc: IrDA low-power
        HDSEL: bool, // bit offset: 3 desc: Half-duplex selection
        NACK: bool, // bit offset: 4 desc: Smartcard NACK enable
        SCEN: bool, // bit offset: 5 desc: Smartcard mode enable
        DMAR: bool, // bit offset: 6 desc: DMA enable receiver
        DMAT: bool, // bit offset: 7 desc: DMA enable transmitter
        RTSE: bool, // bit offset: 8 desc: RTS enable
        CTSE: bool, // bit offset: 9 desc: CTS enable
        CTSIE: bool, // bit offset: 10 desc: CTS interrupt enable
        ONEBIT: bool, // bit offset: 11 desc: One sample bit method enable
        padding: u19,
    });
    pub const GTPR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Guard time and prescaler register
        PSC: u8, // bit offset: 0 desc: Prescaler value
        GT: u8, // bit offset: 8 desc: Guard time value
        padding: u15,
    });
};
pub const WWDG = extern struct {
    pub const Address: u32 = 0x40002c00;
    pub const CR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Control register
        T: u7, // bit offset: 0 desc: 7-bit counter (MSB to LSB)
        WDGA: bool, // bit offset: 7 desc: Activation bit
        padding: u23,
    });
    pub const CFR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Configuration register
        W: u7, // bit offset: 0 desc: 7-bit window value
        WDGTB0: bool, // bit offset: 7 desc: Timer base
        WDGTB1: bool, // bit offset: 8 desc: Timer base
        EWI: bool, // bit offset: 9 desc: Early wakeup interrupt
        padding: u21,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Status register
        EWIF: bool, // bit offset: 0 desc: Early wakeup interrupt flag
        padding: u30,
    });
};
pub const DMA2 = extern struct {
    pub const Address: u32 = 0x40026400;
    pub const LISR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 low interrupt status register
        FEIF0: bool, // bit offset: 0 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved0: u1,
        DMEIF0: bool, // bit offset: 2 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF0: bool, // bit offset: 3 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF0: bool, // bit offset: 4 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF0: bool, // bit offset: 5 desc: Stream x transfer complete interrupt flag (x = 3..0)
        FEIF1: bool, // bit offset: 6 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved1: u1,
        DMEIF1: bool, // bit offset: 8 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF1: bool, // bit offset: 9 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF1: bool, // bit offset: 10 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF1: bool, // bit offset: 11 desc: Stream x transfer complete interrupt flag (x = 3..0)
        reserved2: u4,
        FEIF2: bool, // bit offset: 16 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved3: u1,
        DMEIF2: bool, // bit offset: 18 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF2: bool, // bit offset: 19 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF2: bool, // bit offset: 20 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF2: bool, // bit offset: 21 desc: Stream x transfer complete interrupt flag (x = 3..0)
        FEIF3: bool, // bit offset: 22 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved4: u1,
        DMEIF3: bool, // bit offset: 24 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF3: bool, // bit offset: 25 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF3: bool, // bit offset: 26 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF3: bool, // bit offset: 27 desc: Stream x transfer complete interrupt flag (x = 3..0)
        padding: u3,
    });
    pub const HISR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 high interrupt status register
        FEIF4: bool, // bit offset: 0 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved0: u1,
        DMEIF4: bool, // bit offset: 2 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF4: bool, // bit offset: 3 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF4: bool, // bit offset: 4 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF4: bool, // bit offset: 5 desc: Stream x transfer complete interrupt flag (x=7..4)
        FEIF5: bool, // bit offset: 6 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved1: u1,
        DMEIF5: bool, // bit offset: 8 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF5: bool, // bit offset: 9 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF5: bool, // bit offset: 10 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF5: bool, // bit offset: 11 desc: Stream x transfer complete interrupt flag (x=7..4)
        reserved2: u4,
        FEIF6: bool, // bit offset: 16 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved3: u1,
        DMEIF6: bool, // bit offset: 18 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF6: bool, // bit offset: 19 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF6: bool, // bit offset: 20 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF6: bool, // bit offset: 21 desc: Stream x transfer complete interrupt flag (x=7..4)
        FEIF7: bool, // bit offset: 22 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved4: u1,
        DMEIF7: bool, // bit offset: 24 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF7: bool, // bit offset: 25 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF7: bool, // bit offset: 26 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF7: bool, // bit offset: 27 desc: Stream x transfer complete interrupt flag (x=7..4)
        padding: u3,
    });
    pub const LIFCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 low interrupt flag clear register
        CFEIF0: bool, // bit offset: 0 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved0: u1,
        CDMEIF0: bool, // bit offset: 2 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF0: bool, // bit offset: 3 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF0: bool, // bit offset: 4 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF0: bool, // bit offset: 5 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        CFEIF1: bool, // bit offset: 6 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved1: u1,
        CDMEIF1: bool, // bit offset: 8 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF1: bool, // bit offset: 9 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF1: bool, // bit offset: 10 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF1: bool, // bit offset: 11 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        reserved2: u4,
        CFEIF2: bool, // bit offset: 16 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved3: u1,
        CDMEIF2: bool, // bit offset: 18 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF2: bool, // bit offset: 19 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF2: bool, // bit offset: 20 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF2: bool, // bit offset: 21 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        CFEIF3: bool, // bit offset: 22 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved4: u1,
        CDMEIF3: bool, // bit offset: 24 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF3: bool, // bit offset: 25 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF3: bool, // bit offset: 26 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF3: bool, // bit offset: 27 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        padding: u3,
    });
    pub const HIFCR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 high interrupt flag clear register
        CFEIF4: bool, // bit offset: 0 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved0: u1,
        CDMEIF4: bool, // bit offset: 2 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF4: bool, // bit offset: 3 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF4: bool, // bit offset: 4 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF4: bool, // bit offset: 5 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        CFEIF5: bool, // bit offset: 6 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved1: u1,
        CDMEIF5: bool, // bit offset: 8 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF5: bool, // bit offset: 9 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF5: bool, // bit offset: 10 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF5: bool, // bit offset: 11 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        reserved2: u4,
        CFEIF6: bool, // bit offset: 16 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved3: u1,
        CDMEIF6: bool, // bit offset: 18 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF6: bool, // bit offset: 19 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF6: bool, // bit offset: 20 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF6: bool, // bit offset: 21 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        CFEIF7: bool, // bit offset: 22 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved4: u1,
        CDMEIF7: bool, // bit offset: 24 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF7: bool, // bit offset: 25 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF7: bool, // bit offset: 26 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF7: bool, // bit offset: 27 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        padding: u3,
    });
    pub const S0CR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        reserved0: u1,
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S0NDTR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S0PAR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S0M0AR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S0M1AR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S0FCR = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S1CR = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S1NDTR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S1PAR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S1M0AR = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S1M1AR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S1FCR = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S2CR = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S2NDTR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S2PAR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S2M0AR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S2M1AR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S2FCR = MMIO(Address + 0x00000054, u32, packed struct { // byte offset: 84 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S3CR = MMIO(Address + 0x00000058, u32, packed struct { // byte offset: 88 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S3NDTR = MMIO(Address + 0x0000005c, u32, packed struct { // byte offset: 92 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S3PAR = MMIO(Address + 0x00000060, u32, packed struct { // byte offset: 96 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S3M0AR = MMIO(Address + 0x00000064, u32, packed struct { // byte offset: 100 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S3M1AR = MMIO(Address + 0x00000068, u32, packed struct { // byte offset: 104 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S3FCR = MMIO(Address + 0x0000006c, u32, packed struct { // byte offset: 108 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S4CR = MMIO(Address + 0x00000070, u32, packed struct { // byte offset: 112 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S4NDTR = MMIO(Address + 0x00000074, u32, packed struct { // byte offset: 116 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S4PAR = MMIO(Address + 0x00000078, u32, packed struct { // byte offset: 120 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S4M0AR = MMIO(Address + 0x0000007c, u32, packed struct { // byte offset: 124 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S4M1AR = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S4FCR = MMIO(Address + 0x00000084, u32, packed struct { // byte offset: 132 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S5CR = MMIO(Address + 0x00000088, u32, packed struct { // byte offset: 136 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S5NDTR = MMIO(Address + 0x0000008c, u32, packed struct { // byte offset: 140 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S5PAR = MMIO(Address + 0x00000090, u32, packed struct { // byte offset: 144 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S5M0AR = MMIO(Address + 0x00000094, u32, packed struct { // byte offset: 148 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S5M1AR = MMIO(Address + 0x00000098, u32, packed struct { // byte offset: 152 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S5FCR = MMIO(Address + 0x0000009c, u32, packed struct { // byte offset: 156 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S6CR = MMIO(Address + 0x000000a0, u32, packed struct { // byte offset: 160 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S6NDTR = MMIO(Address + 0x000000a4, u32, packed struct { // byte offset: 164 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S6PAR = MMIO(Address + 0x000000a8, u32, packed struct { // byte offset: 168 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S6M0AR = MMIO(Address + 0x000000ac, u32, packed struct { // byte offset: 172 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S6M1AR = MMIO(Address + 0x000000b0, u32, packed struct { // byte offset: 176 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S6FCR = MMIO(Address + 0x000000b4, u32, packed struct { // byte offset: 180 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S7CR = MMIO(Address + 0x000000b8, u32, packed struct { // byte offset: 184 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S7NDTR = MMIO(Address + 0x000000bc, u32, packed struct { // byte offset: 188 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S7PAR = MMIO(Address + 0x000000c0, u32, packed struct { // byte offset: 192 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S7M0AR = MMIO(Address + 0x000000c4, u32, packed struct { // byte offset: 196 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S7M1AR = MMIO(Address + 0x000000c8, u32, packed struct { // byte offset: 200 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S7FCR = MMIO(Address + 0x000000cc, u32, packed struct { // byte offset: 204 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
};
pub const DMA1 = extern struct {
    pub const Address: u32 = 0x40026000;
    pub const LISR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 low interrupt status register
        FEIF0: bool, // bit offset: 0 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved0: u1,
        DMEIF0: bool, // bit offset: 2 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF0: bool, // bit offset: 3 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF0: bool, // bit offset: 4 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF0: bool, // bit offset: 5 desc: Stream x transfer complete interrupt flag (x = 3..0)
        FEIF1: bool, // bit offset: 6 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved1: u1,
        DMEIF1: bool, // bit offset: 8 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF1: bool, // bit offset: 9 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF1: bool, // bit offset: 10 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF1: bool, // bit offset: 11 desc: Stream x transfer complete interrupt flag (x = 3..0)
        reserved2: u4,
        FEIF2: bool, // bit offset: 16 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved3: u1,
        DMEIF2: bool, // bit offset: 18 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF2: bool, // bit offset: 19 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF2: bool, // bit offset: 20 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF2: bool, // bit offset: 21 desc: Stream x transfer complete interrupt flag (x = 3..0)
        FEIF3: bool, // bit offset: 22 desc: Stream x FIFO error interrupt flag (x=3..0)
        reserved4: u1,
        DMEIF3: bool, // bit offset: 24 desc: Stream x direct mode error interrupt flag (x=3..0)
        TEIF3: bool, // bit offset: 25 desc: Stream x transfer error interrupt flag (x=3..0)
        HTIF3: bool, // bit offset: 26 desc: Stream x half transfer interrupt flag (x=3..0)
        TCIF3: bool, // bit offset: 27 desc: Stream x transfer complete interrupt flag (x = 3..0)
        padding: u3,
    });
    pub const HISR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 high interrupt status register
        FEIF4: bool, // bit offset: 0 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved0: u1,
        DMEIF4: bool, // bit offset: 2 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF4: bool, // bit offset: 3 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF4: bool, // bit offset: 4 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF4: bool, // bit offset: 5 desc: Stream x transfer complete interrupt flag (x=7..4)
        FEIF5: bool, // bit offset: 6 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved1: u1,
        DMEIF5: bool, // bit offset: 8 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF5: bool, // bit offset: 9 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF5: bool, // bit offset: 10 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF5: bool, // bit offset: 11 desc: Stream x transfer complete interrupt flag (x=7..4)
        reserved2: u4,
        FEIF6: bool, // bit offset: 16 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved3: u1,
        DMEIF6: bool, // bit offset: 18 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF6: bool, // bit offset: 19 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF6: bool, // bit offset: 20 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF6: bool, // bit offset: 21 desc: Stream x transfer complete interrupt flag (x=7..4)
        FEIF7: bool, // bit offset: 22 desc: Stream x FIFO error interrupt flag (x=7..4)
        reserved4: u1,
        DMEIF7: bool, // bit offset: 24 desc: Stream x direct mode error interrupt flag (x=7..4)
        TEIF7: bool, // bit offset: 25 desc: Stream x transfer error interrupt flag (x=7..4)
        HTIF7: bool, // bit offset: 26 desc: Stream x half transfer interrupt flag (x=7..4)
        TCIF7: bool, // bit offset: 27 desc: Stream x transfer complete interrupt flag (x=7..4)
        padding: u3,
    });
    pub const LIFCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 low interrupt flag clear register
        CFEIF0: bool, // bit offset: 0 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved0: u1,
        CDMEIF0: bool, // bit offset: 2 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF0: bool, // bit offset: 3 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF0: bool, // bit offset: 4 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF0: bool, // bit offset: 5 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        CFEIF1: bool, // bit offset: 6 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved1: u1,
        CDMEIF1: bool, // bit offset: 8 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF1: bool, // bit offset: 9 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF1: bool, // bit offset: 10 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF1: bool, // bit offset: 11 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        reserved2: u4,
        CFEIF2: bool, // bit offset: 16 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved3: u1,
        CDMEIF2: bool, // bit offset: 18 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF2: bool, // bit offset: 19 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF2: bool, // bit offset: 20 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF2: bool, // bit offset: 21 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        CFEIF3: bool, // bit offset: 22 desc: Stream x clear FIFO error interrupt flag (x = 3..0)
        reserved4: u1,
        CDMEIF3: bool, // bit offset: 24 desc: Stream x clear direct mode error interrupt flag (x = 3..0)
        CTEIF3: bool, // bit offset: 25 desc: Stream x clear transfer error interrupt flag (x = 3..0)
        CHTIF3: bool, // bit offset: 26 desc: Stream x clear half transfer interrupt flag (x = 3..0)
        CTCIF3: bool, // bit offset: 27 desc: Stream x clear transfer complete interrupt flag (x = 3..0)
        padding: u3,
    });
    pub const HIFCR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 high interrupt flag clear register
        CFEIF4: bool, // bit offset: 0 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved0: u1,
        CDMEIF4: bool, // bit offset: 2 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF4: bool, // bit offset: 3 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF4: bool, // bit offset: 4 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF4: bool, // bit offset: 5 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        CFEIF5: bool, // bit offset: 6 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved1: u1,
        CDMEIF5: bool, // bit offset: 8 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF5: bool, // bit offset: 9 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF5: bool, // bit offset: 10 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF5: bool, // bit offset: 11 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        reserved2: u4,
        CFEIF6: bool, // bit offset: 16 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved3: u1,
        CDMEIF6: bool, // bit offset: 18 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF6: bool, // bit offset: 19 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF6: bool, // bit offset: 20 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF6: bool, // bit offset: 21 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        CFEIF7: bool, // bit offset: 22 desc: Stream x clear FIFO error interrupt flag (x = 7..4)
        reserved4: u1,
        CDMEIF7: bool, // bit offset: 24 desc: Stream x clear direct mode error interrupt flag (x = 7..4)
        CTEIF7: bool, // bit offset: 25 desc: Stream x clear transfer error interrupt flag (x = 7..4)
        CHTIF7: bool, // bit offset: 26 desc: Stream x clear half transfer interrupt flag (x = 7..4)
        CTCIF7: bool, // bit offset: 27 desc: Stream x clear transfer complete interrupt flag (x = 7..4)
        padding: u3,
    });
    pub const S0CR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        reserved0: u1,
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S0NDTR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S0PAR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S0M0AR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S0M1AR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S0FCR = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S1CR = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S1NDTR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S1PAR = MMIO(Address + 0x00000030, u32, packed struct { // byte offset: 48 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S1M0AR = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S1M1AR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S1FCR = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S2CR = MMIO(Address + 0x00000040, u32, packed struct { // byte offset: 64 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S2NDTR = MMIO(Address + 0x00000044, u32, packed struct { // byte offset: 68 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S2PAR = MMIO(Address + 0x00000048, u32, packed struct { // byte offset: 72 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S2M0AR = MMIO(Address + 0x0000004c, u32, packed struct { // byte offset: 76 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S2M1AR = MMIO(Address + 0x00000050, u32, packed struct { // byte offset: 80 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S2FCR = MMIO(Address + 0x00000054, u32, packed struct { // byte offset: 84 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S3CR = MMIO(Address + 0x00000058, u32, packed struct { // byte offset: 88 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S3NDTR = MMIO(Address + 0x0000005c, u32, packed struct { // byte offset: 92 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S3PAR = MMIO(Address + 0x00000060, u32, packed struct { // byte offset: 96 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S3M0AR = MMIO(Address + 0x00000064, u32, packed struct { // byte offset: 100 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S3M1AR = MMIO(Address + 0x00000068, u32, packed struct { // byte offset: 104 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S3FCR = MMIO(Address + 0x0000006c, u32, packed struct { // byte offset: 108 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S4CR = MMIO(Address + 0x00000070, u32, packed struct { // byte offset: 112 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S4NDTR = MMIO(Address + 0x00000074, u32, packed struct { // byte offset: 116 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S4PAR = MMIO(Address + 0x00000078, u32, packed struct { // byte offset: 120 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S4M0AR = MMIO(Address + 0x0000007c, u32, packed struct { // byte offset: 124 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S4M1AR = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S4FCR = MMIO(Address + 0x00000084, u32, packed struct { // byte offset: 132 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S5CR = MMIO(Address + 0x00000088, u32, packed struct { // byte offset: 136 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S5NDTR = MMIO(Address + 0x0000008c, u32, packed struct { // byte offset: 140 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S5PAR = MMIO(Address + 0x00000090, u32, packed struct { // byte offset: 144 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S5M0AR = MMIO(Address + 0x00000094, u32, packed struct { // byte offset: 148 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S5M1AR = MMIO(Address + 0x00000098, u32, packed struct { // byte offset: 152 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S5FCR = MMIO(Address + 0x0000009c, u32, packed struct { // byte offset: 156 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S6CR = MMIO(Address + 0x000000a0, u32, packed struct { // byte offset: 160 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S6NDTR = MMIO(Address + 0x000000a4, u32, packed struct { // byte offset: 164 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S6PAR = MMIO(Address + 0x000000a8, u32, packed struct { // byte offset: 168 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S6M0AR = MMIO(Address + 0x000000ac, u32, packed struct { // byte offset: 172 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S6M1AR = MMIO(Address + 0x000000b0, u32, packed struct { // byte offset: 176 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S6FCR = MMIO(Address + 0x000000b4, u32, packed struct { // byte offset: 180 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
    pub const S7CR = MMIO(Address + 0x000000b8, u32, packed struct { // byte offset: 184 stream x configuration register
        EN: bool, // bit offset: 0 desc: Stream enable / flag stream ready when read low
        DMEIE: bool, // bit offset: 1 desc: Direct mode error interrupt enable
        TEIE: bool, // bit offset: 2 desc: Transfer error interrupt enable
        HTIE: bool, // bit offset: 3 desc: Half transfer interrupt enable
        TCIE: bool, // bit offset: 4 desc: Transfer complete interrupt enable
        PFCTRL: bool, // bit offset: 5 desc: Peripheral flow controller
        DIR: u2, // bit offset: 6 desc: Data transfer direction
        CIRC: bool, // bit offset: 8 desc: Circular mode
        PINC: bool, // bit offset: 9 desc: Peripheral increment mode
        MINC: bool, // bit offset: 10 desc: Memory increment mode
        PSIZE: u2, // bit offset: 11 desc: Peripheral data size
        MSIZE: u2, // bit offset: 13 desc: Memory data size
        PINCOS: bool, // bit offset: 15 desc: Peripheral increment offset size
        PL: u2, // bit offset: 16 desc: Priority level
        DBM: bool, // bit offset: 18 desc: Double buffer mode
        CT: bool, // bit offset: 19 desc: Current target (only in double buffer mode)
        ACK: bool, // bit offset: 20 desc: ACK
        PBURST: u2, // bit offset: 21 desc: Peripheral burst transfer configuration
        MBURST: u2, // bit offset: 23 desc: Memory burst transfer configuration
        CHSEL: u3, // bit offset: 25 desc: Channel selection
        padding: u3,
    });
    pub const S7NDTR = MMIO(Address + 0x000000bc, u32, packed struct { // byte offset: 188 stream x number of data register
        NDT: u16, // bit offset: 0 desc: Number of data items to transfer
        padding: u15,
    });
    pub const S7PAR = MMIO(Address + 0x000000c0, u32, packed struct { // byte offset: 192 stream x peripheral address register
        PA: u32, // bit offset: 0 desc: Peripheral address
    });
    pub const S7M0AR = MMIO(Address + 0x000000c4, u32, packed struct { // byte offset: 196 stream x memory 0 address register
        M0A: u32, // bit offset: 0 desc: Memory 0 address
    });
    pub const S7M1AR = MMIO(Address + 0x000000c8, u32, packed struct { // byte offset: 200 stream x memory 1 address register
        M1A: u32, // bit offset: 0 desc: Memory 1 address (used in case of Double buffer mode)
    });
    pub const S7FCR = MMIO(Address + 0x000000cc, u32, packed struct { // byte offset: 204 stream x FIFO control register
        FTH: u2, // bit offset: 0 desc: FIFO threshold selection
        DMDIS: bool, // bit offset: 2 desc: Direct mode disable
        FS: u3, // bit offset: 3 desc: FIFO status
        reserved0: u1,
        FEIE: bool, // bit offset: 7 desc: FIFO error interrupt enable
        padding: u23,
    });
};
pub const GPIOH = extern struct {
    pub const Address: u32 = 0x40021c00;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const GPIOE = extern struct {
    pub const Address: u32 = 0x40021000;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const GPIOD = extern struct {
    pub const Address: u32 = 0x40020c00;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const GPIOC = extern struct {
    pub const Address: u32 = 0x40020800;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const GPIOB = extern struct {
    pub const Address: u32 = 0x40020400;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const GPIOA = extern struct {
    pub const Address: u32 = 0x40020000;
    pub const MODER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 GPIO port mode register
        MODER0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        MODER1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        MODER2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        MODER3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        MODER4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        MODER5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        MODER6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        MODER7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        MODER8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        MODER9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        MODER10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        MODER11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        MODER12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        MODER13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        MODER14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        MODER15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const OTYPER = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 GPIO port output type register
        OT0: bool, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OT1: bool, // bit offset: 1 desc: Port x configuration bits (y = 0..15)
        OT2: bool, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OT3: bool, // bit offset: 3 desc: Port x configuration bits (y = 0..15)
        OT4: bool, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OT5: bool, // bit offset: 5 desc: Port x configuration bits (y = 0..15)
        OT6: bool, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OT7: bool, // bit offset: 7 desc: Port x configuration bits (y = 0..15)
        OT8: bool, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OT9: bool, // bit offset: 9 desc: Port x configuration bits (y = 0..15)
        OT10: bool, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OT11: bool, // bit offset: 11 desc: Port x configuration bits (y = 0..15)
        OT12: bool, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OT13: bool, // bit offset: 13 desc: Port x configuration bits (y = 0..15)
        OT14: bool, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OT15: bool, // bit offset: 15 desc: Port x configuration bits (y = 0..15)
        padding: u15,
    });
    pub const OSPEEDR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 GPIO port output speed register
        OSPEEDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        OSPEEDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        OSPEEDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        OSPEEDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        OSPEEDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        OSPEEDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        OSPEEDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        OSPEEDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        OSPEEDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        OSPEEDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        OSPEEDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        OSPEEDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        OSPEEDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        OSPEEDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        OSPEEDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        OSPEEDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const PUPDR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 GPIO port pull-up/pull-down register
        PUPDR0: u2, // bit offset: 0 desc: Port x configuration bits (y = 0..15)
        PUPDR1: u2, // bit offset: 2 desc: Port x configuration bits (y = 0..15)
        PUPDR2: u2, // bit offset: 4 desc: Port x configuration bits (y = 0..15)
        PUPDR3: u2, // bit offset: 6 desc: Port x configuration bits (y = 0..15)
        PUPDR4: u2, // bit offset: 8 desc: Port x configuration bits (y = 0..15)
        PUPDR5: u2, // bit offset: 10 desc: Port x configuration bits (y = 0..15)
        PUPDR6: u2, // bit offset: 12 desc: Port x configuration bits (y = 0..15)
        PUPDR7: u2, // bit offset: 14 desc: Port x configuration bits (y = 0..15)
        PUPDR8: u2, // bit offset: 16 desc: Port x configuration bits (y = 0..15)
        PUPDR9: u2, // bit offset: 18 desc: Port x configuration bits (y = 0..15)
        PUPDR10: u2, // bit offset: 20 desc: Port x configuration bits (y = 0..15)
        PUPDR11: u2, // bit offset: 22 desc: Port x configuration bits (y = 0..15)
        PUPDR12: u2, // bit offset: 24 desc: Port x configuration bits (y = 0..15)
        PUPDR13: u2, // bit offset: 26 desc: Port x configuration bits (y = 0..15)
        PUPDR14: u2, // bit offset: 28 desc: Port x configuration bits (y = 0..15)
        PUPDR15: u2, // bit offset: 30 desc: Port x configuration bits (y = 0..15)
    });
    pub const IDR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 GPIO port input data register
        IDR0: bool, // bit offset: 0 desc: Port input data (y = 0..15)
        IDR1: bool, // bit offset: 1 desc: Port input data (y = 0..15)
        IDR2: bool, // bit offset: 2 desc: Port input data (y = 0..15)
        IDR3: bool, // bit offset: 3 desc: Port input data (y = 0..15)
        IDR4: bool, // bit offset: 4 desc: Port input data (y = 0..15)
        IDR5: bool, // bit offset: 5 desc: Port input data (y = 0..15)
        IDR6: bool, // bit offset: 6 desc: Port input data (y = 0..15)
        IDR7: bool, // bit offset: 7 desc: Port input data (y = 0..15)
        IDR8: bool, // bit offset: 8 desc: Port input data (y = 0..15)
        IDR9: bool, // bit offset: 9 desc: Port input data (y = 0..15)
        IDR10: bool, // bit offset: 10 desc: Port input data (y = 0..15)
        IDR11: bool, // bit offset: 11 desc: Port input data (y = 0..15)
        IDR12: bool, // bit offset: 12 desc: Port input data (y = 0..15)
        IDR13: bool, // bit offset: 13 desc: Port input data (y = 0..15)
        IDR14: bool, // bit offset: 14 desc: Port input data (y = 0..15)
        IDR15: bool, // bit offset: 15 desc: Port input data (y = 0..15)
        padding: u15,
    });
    pub const ODR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 GPIO port output data register
        ODR0: bool, // bit offset: 0 desc: Port output data (y = 0..15)
        ODR1: bool, // bit offset: 1 desc: Port output data (y = 0..15)
        ODR2: bool, // bit offset: 2 desc: Port output data (y = 0..15)
        ODR3: bool, // bit offset: 3 desc: Port output data (y = 0..15)
        ODR4: bool, // bit offset: 4 desc: Port output data (y = 0..15)
        ODR5: bool, // bit offset: 5 desc: Port output data (y = 0..15)
        ODR6: bool, // bit offset: 6 desc: Port output data (y = 0..15)
        ODR7: bool, // bit offset: 7 desc: Port output data (y = 0..15)
        ODR8: bool, // bit offset: 8 desc: Port output data (y = 0..15)
        ODR9: bool, // bit offset: 9 desc: Port output data (y = 0..15)
        ODR10: bool, // bit offset: 10 desc: Port output data (y = 0..15)
        ODR11: bool, // bit offset: 11 desc: Port output data (y = 0..15)
        ODR12: bool, // bit offset: 12 desc: Port output data (y = 0..15)
        ODR13: bool, // bit offset: 13 desc: Port output data (y = 0..15)
        ODR14: bool, // bit offset: 14 desc: Port output data (y = 0..15)
        ODR15: bool, // bit offset: 15 desc: Port output data (y = 0..15)
        padding: u15,
    });
    pub const BSRR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 GPIO port bit set/reset register
        BS0: bool, // bit offset: 0 desc: Port x set bit y (y= 0..15)
        BS1: bool, // bit offset: 1 desc: Port x set bit y (y= 0..15)
        BS2: bool, // bit offset: 2 desc: Port x set bit y (y= 0..15)
        BS3: bool, // bit offset: 3 desc: Port x set bit y (y= 0..15)
        BS4: bool, // bit offset: 4 desc: Port x set bit y (y= 0..15)
        BS5: bool, // bit offset: 5 desc: Port x set bit y (y= 0..15)
        BS6: bool, // bit offset: 6 desc: Port x set bit y (y= 0..15)
        BS7: bool, // bit offset: 7 desc: Port x set bit y (y= 0..15)
        BS8: bool, // bit offset: 8 desc: Port x set bit y (y= 0..15)
        BS9: bool, // bit offset: 9 desc: Port x set bit y (y= 0..15)
        BS10: bool, // bit offset: 10 desc: Port x set bit y (y= 0..15)
        BS11: bool, // bit offset: 11 desc: Port x set bit y (y= 0..15)
        BS12: bool, // bit offset: 12 desc: Port x set bit y (y= 0..15)
        BS13: bool, // bit offset: 13 desc: Port x set bit y (y= 0..15)
        BS14: bool, // bit offset: 14 desc: Port x set bit y (y= 0..15)
        BS15: bool, // bit offset: 15 desc: Port x set bit y (y= 0..15)
        BR0: bool, // bit offset: 16 desc: Port x set bit y (y= 0..15)
        BR1: bool, // bit offset: 17 desc: Port x reset bit y (y = 0..15)
        BR2: bool, // bit offset: 18 desc: Port x reset bit y (y = 0..15)
        BR3: bool, // bit offset: 19 desc: Port x reset bit y (y = 0..15)
        BR4: bool, // bit offset: 20 desc: Port x reset bit y (y = 0..15)
        BR5: bool, // bit offset: 21 desc: Port x reset bit y (y = 0..15)
        BR6: bool, // bit offset: 22 desc: Port x reset bit y (y = 0..15)
        BR7: bool, // bit offset: 23 desc: Port x reset bit y (y = 0..15)
        BR8: bool, // bit offset: 24 desc: Port x reset bit y (y = 0..15)
        BR9: bool, // bit offset: 25 desc: Port x reset bit y (y = 0..15)
        BR10: bool, // bit offset: 26 desc: Port x reset bit y (y = 0..15)
        BR11: bool, // bit offset: 27 desc: Port x reset bit y (y = 0..15)
        BR12: bool, // bit offset: 28 desc: Port x reset bit y (y = 0..15)
        BR13: bool, // bit offset: 29 desc: Port x reset bit y (y = 0..15)
        BR14: bool, // bit offset: 30 desc: Port x reset bit y (y = 0..15)
        BR15: bool, // bit offset: 31 desc: Port x reset bit y (y = 0..15)
    });
    pub const LCKR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 GPIO port configuration lock register
        LCK0: bool, // bit offset: 0 desc: Port x lock bit y (y= 0..15)
        LCK1: bool, // bit offset: 1 desc: Port x lock bit y (y= 0..15)
        LCK2: bool, // bit offset: 2 desc: Port x lock bit y (y= 0..15)
        LCK3: bool, // bit offset: 3 desc: Port x lock bit y (y= 0..15)
        LCK4: bool, // bit offset: 4 desc: Port x lock bit y (y= 0..15)
        LCK5: bool, // bit offset: 5 desc: Port x lock bit y (y= 0..15)
        LCK6: bool, // bit offset: 6 desc: Port x lock bit y (y= 0..15)
        LCK7: bool, // bit offset: 7 desc: Port x lock bit y (y= 0..15)
        LCK8: bool, // bit offset: 8 desc: Port x lock bit y (y= 0..15)
        LCK9: bool, // bit offset: 9 desc: Port x lock bit y (y= 0..15)
        LCK10: bool, // bit offset: 10 desc: Port x lock bit y (y= 0..15)
        LCK11: bool, // bit offset: 11 desc: Port x lock bit y (y= 0..15)
        LCK12: bool, // bit offset: 12 desc: Port x lock bit y (y= 0..15)
        LCK13: bool, // bit offset: 13 desc: Port x lock bit y (y= 0..15)
        LCK14: bool, // bit offset: 14 desc: Port x lock bit y (y= 0..15)
        LCK15: bool, // bit offset: 15 desc: Port x lock bit y (y= 0..15)
        LCKK: bool, // bit offset: 16 desc: Port x lock bit y (y= 0..15)
        padding: u14,
    });
    pub const AFRL = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 GPIO alternate function low register
        AFRL0: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL1: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL2: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL3: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL4: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL5: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL6: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 0..7)
        AFRL7: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 0..7)
    });
    pub const AFRH = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 GPIO alternate function high register
        AFRH8: u4, // bit offset: 0 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH9: u4, // bit offset: 4 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH10: u4, // bit offset: 8 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH11: u4, // bit offset: 12 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH12: u4, // bit offset: 16 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH13: u4, // bit offset: 20 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH14: u4, // bit offset: 24 desc: Alternate function selection for port x bit y (y = 8..15)
        AFRH15: u4, // bit offset: 28 desc: Alternate function selection for port x bit y (y = 8..15)
    });
};
pub const I2C3 = extern struct {
    pub const Address: u32 = 0x40005c00;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Control register 1
        PE: bool, // bit offset: 0 desc: Peripheral enable
        SMBUS: bool, // bit offset: 1 desc: SMBus mode
        reserved0: u1,
        SMBTYPE: bool, // bit offset: 3 desc: SMBus type
        ENARP: bool, // bit offset: 4 desc: ARP enable
        ENPEC: bool, // bit offset: 5 desc: PEC enable
        ENGC: bool, // bit offset: 6 desc: General call enable
        NOSTRETCH: bool, // bit offset: 7 desc: Clock stretching disable (Slave mode)
        START: bool, // bit offset: 8 desc: Start generation
        STOP: bool, // bit offset: 9 desc: Stop generation
        ACK: bool, // bit offset: 10 desc: Acknowledge enable
        POS: bool, // bit offset: 11 desc: Acknowledge/PEC Position (for data reception)
        PEC: bool, // bit offset: 12 desc: Packet error checking
        ALERT: bool, // bit offset: 13 desc: SMBus alert
        reserved1: u1,
        SWRST: bool, // bit offset: 15 desc: Software reset
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Control register 2
        FREQ: u6, // bit offset: 0 desc: Peripheral clock frequency
        reserved0: u2,
        ITERREN: bool, // bit offset: 8 desc: Error interrupt enable
        ITEVTEN: bool, // bit offset: 9 desc: Event interrupt enable
        ITBUFEN: bool, // bit offset: 10 desc: Buffer interrupt enable
        DMAEN: bool, // bit offset: 11 desc: DMA requests enable
        LAST: bool, // bit offset: 12 desc: DMA last transfer
        padding: u18,
    });
    pub const OAR1 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Own address register 1
        ADD0: bool, // bit offset: 0 desc: Interface address
        ADD7: u7, // bit offset: 1 desc: Interface address
        ADD10: u2, // bit offset: 8 desc: Interface address
        reserved0: u5,
        ADDMODE: bool, // bit offset: 15 desc: Addressing mode (slave mode)
        padding: u15,
    });
    pub const OAR2 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Own address register 2
        ENDUAL: bool, // bit offset: 0 desc: Dual addressing mode enable
        ADD2: u7, // bit offset: 1 desc: Interface address
        padding: u23,
    });
    pub const DR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Data register
        DR: u8, // bit offset: 0 desc: 8-bit data register
        padding: u23,
    });
    pub const SR1 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Status register 1
        SB: bool, // bit offset: 0 desc: Start bit (Master mode)
        ADDR: bool, // bit offset: 1 desc: Address sent (master mode)/matched (slave mode)
        BTF: bool, // bit offset: 2 desc: Byte transfer finished
        ADD10: bool, // bit offset: 3 desc: 10-bit header sent (Master mode)
        STOPF: bool, // bit offset: 4 desc: Stop detection (slave mode)
        reserved0: u1,
        RxNE: bool, // bit offset: 6 desc: Data register not empty (receivers)
        TxE: bool, // bit offset: 7 desc: Data register empty (transmitters)
        BERR: bool, // bit offset: 8 desc: Bus error
        ARLO: bool, // bit offset: 9 desc: Arbitration lost (master mode)
        AF: bool, // bit offset: 10 desc: Acknowledge failure
        OVR: bool, // bit offset: 11 desc: Overrun/Underrun
        PECERR: bool, // bit offset: 12 desc: PEC Error in reception
        reserved1: u1,
        TIMEOUT: bool, // bit offset: 14 desc: Timeout or Tlow error
        SMBALERT: bool, // bit offset: 15 desc: SMBus alert
        padding: u15,
    });
    pub const SR2 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Status register 2
        MSL: bool, // bit offset: 0 desc: Master/slave
        BUSY: bool, // bit offset: 1 desc: Bus busy
        TRA: bool, // bit offset: 2 desc: Transmitter/receiver
        reserved0: u1,
        GENCALL: bool, // bit offset: 4 desc: General call address (Slave mode)
        SMBDEFAULT: bool, // bit offset: 5 desc: SMBus device default address (Slave mode)
        SMBHOST: bool, // bit offset: 6 desc: SMBus host header (Slave mode)
        DUALF: bool, // bit offset: 7 desc: Dual flag (Slave mode)
        PEC: u8, // bit offset: 8 desc: acket error checking register
        padding: u15,
    });
    pub const CCR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 Clock control register
        CCR: u12, // bit offset: 0 desc: Clock control register in Fast/Standard mode (Master mode)
        reserved0: u2,
        DUTY: bool, // bit offset: 14 desc: Fast mode duty cycle
        F_S: bool, // bit offset: 15 desc: I2C master mode selection
        padding: u15,
    });
    pub const TRISE = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 TRISE register
        TRISE: u6, // bit offset: 0 desc: Maximum rise time in Fast/Standard mode (Master mode)
        padding: u25,
    });
};
pub const I2C2 = extern struct {
    pub const Address: u32 = 0x40005800;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Control register 1
        PE: bool, // bit offset: 0 desc: Peripheral enable
        SMBUS: bool, // bit offset: 1 desc: SMBus mode
        reserved0: u1,
        SMBTYPE: bool, // bit offset: 3 desc: SMBus type
        ENARP: bool, // bit offset: 4 desc: ARP enable
        ENPEC: bool, // bit offset: 5 desc: PEC enable
        ENGC: bool, // bit offset: 6 desc: General call enable
        NOSTRETCH: bool, // bit offset: 7 desc: Clock stretching disable (Slave mode)
        START: bool, // bit offset: 8 desc: Start generation
        STOP: bool, // bit offset: 9 desc: Stop generation
        ACK: bool, // bit offset: 10 desc: Acknowledge enable
        POS: bool, // bit offset: 11 desc: Acknowledge/PEC Position (for data reception)
        PEC: bool, // bit offset: 12 desc: Packet error checking
        ALERT: bool, // bit offset: 13 desc: SMBus alert
        reserved1: u1,
        SWRST: bool, // bit offset: 15 desc: Software reset
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Control register 2
        FREQ: u6, // bit offset: 0 desc: Peripheral clock frequency
        reserved0: u2,
        ITERREN: bool, // bit offset: 8 desc: Error interrupt enable
        ITEVTEN: bool, // bit offset: 9 desc: Event interrupt enable
        ITBUFEN: bool, // bit offset: 10 desc: Buffer interrupt enable
        DMAEN: bool, // bit offset: 11 desc: DMA requests enable
        LAST: bool, // bit offset: 12 desc: DMA last transfer
        padding: u18,
    });
    pub const OAR1 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Own address register 1
        ADD0: bool, // bit offset: 0 desc: Interface address
        ADD7: u7, // bit offset: 1 desc: Interface address
        ADD10: u2, // bit offset: 8 desc: Interface address
        reserved0: u5,
        ADDMODE: bool, // bit offset: 15 desc: Addressing mode (slave mode)
        padding: u15,
    });
    pub const OAR2 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Own address register 2
        ENDUAL: bool, // bit offset: 0 desc: Dual addressing mode enable
        ADD2: u7, // bit offset: 1 desc: Interface address
        padding: u23,
    });
    pub const DR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Data register
        DR: u8, // bit offset: 0 desc: 8-bit data register
        padding: u23,
    });
    pub const SR1 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Status register 1
        SB: bool, // bit offset: 0 desc: Start bit (Master mode)
        ADDR: bool, // bit offset: 1 desc: Address sent (master mode)/matched (slave mode)
        BTF: bool, // bit offset: 2 desc: Byte transfer finished
        ADD10: bool, // bit offset: 3 desc: 10-bit header sent (Master mode)
        STOPF: bool, // bit offset: 4 desc: Stop detection (slave mode)
        reserved0: u1,
        RxNE: bool, // bit offset: 6 desc: Data register not empty (receivers)
        TxE: bool, // bit offset: 7 desc: Data register empty (transmitters)
        BERR: bool, // bit offset: 8 desc: Bus error
        ARLO: bool, // bit offset: 9 desc: Arbitration lost (master mode)
        AF: bool, // bit offset: 10 desc: Acknowledge failure
        OVR: bool, // bit offset: 11 desc: Overrun/Underrun
        PECERR: bool, // bit offset: 12 desc: PEC Error in reception
        reserved1: u1,
        TIMEOUT: bool, // bit offset: 14 desc: Timeout or Tlow error
        SMBALERT: bool, // bit offset: 15 desc: SMBus alert
        padding: u15,
    });
    pub const SR2 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Status register 2
        MSL: bool, // bit offset: 0 desc: Master/slave
        BUSY: bool, // bit offset: 1 desc: Bus busy
        TRA: bool, // bit offset: 2 desc: Transmitter/receiver
        reserved0: u1,
        GENCALL: bool, // bit offset: 4 desc: General call address (Slave mode)
        SMBDEFAULT: bool, // bit offset: 5 desc: SMBus device default address (Slave mode)
        SMBHOST: bool, // bit offset: 6 desc: SMBus host header (Slave mode)
        DUALF: bool, // bit offset: 7 desc: Dual flag (Slave mode)
        PEC: u8, // bit offset: 8 desc: acket error checking register
        padding: u15,
    });
    pub const CCR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 Clock control register
        CCR: u12, // bit offset: 0 desc: Clock control register in Fast/Standard mode (Master mode)
        reserved0: u2,
        DUTY: bool, // bit offset: 14 desc: Fast mode duty cycle
        F_S: bool, // bit offset: 15 desc: I2C master mode selection
        padding: u15,
    });
    pub const TRISE = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 TRISE register
        TRISE: u6, // bit offset: 0 desc: Maximum rise time in Fast/Standard mode (Master mode)
        padding: u25,
    });
};
pub const I2C1 = extern struct {
    pub const Address: u32 = 0x40005400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Control register 1
        PE: bool, // bit offset: 0 desc: Peripheral enable
        SMBUS: bool, // bit offset: 1 desc: SMBus mode
        reserved0: u1,
        SMBTYPE: bool, // bit offset: 3 desc: SMBus type
        ENARP: bool, // bit offset: 4 desc: ARP enable
        ENPEC: bool, // bit offset: 5 desc: PEC enable
        ENGC: bool, // bit offset: 6 desc: General call enable
        NOSTRETCH: bool, // bit offset: 7 desc: Clock stretching disable (Slave mode)
        START: bool, // bit offset: 8 desc: Start generation
        STOP: bool, // bit offset: 9 desc: Stop generation
        ACK: bool, // bit offset: 10 desc: Acknowledge enable
        POS: bool, // bit offset: 11 desc: Acknowledge/PEC Position (for data reception)
        PEC: bool, // bit offset: 12 desc: Packet error checking
        ALERT: bool, // bit offset: 13 desc: SMBus alert
        reserved1: u1,
        SWRST: bool, // bit offset: 15 desc: Software reset
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Control register 2
        FREQ: u6, // bit offset: 0 desc: Peripheral clock frequency
        reserved0: u2,
        ITERREN: bool, // bit offset: 8 desc: Error interrupt enable
        ITEVTEN: bool, // bit offset: 9 desc: Event interrupt enable
        ITBUFEN: bool, // bit offset: 10 desc: Buffer interrupt enable
        DMAEN: bool, // bit offset: 11 desc: DMA requests enable
        LAST: bool, // bit offset: 12 desc: DMA last transfer
        padding: u18,
    });
    pub const OAR1 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Own address register 1
        ADD0: bool, // bit offset: 0 desc: Interface address
        ADD7: u7, // bit offset: 1 desc: Interface address
        ADD10: u2, // bit offset: 8 desc: Interface address
        reserved0: u5,
        ADDMODE: bool, // bit offset: 15 desc: Addressing mode (slave mode)
        padding: u15,
    });
    pub const OAR2 = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Own address register 2
        ENDUAL: bool, // bit offset: 0 desc: Dual addressing mode enable
        ADD2: u7, // bit offset: 1 desc: Interface address
        padding: u23,
    });
    pub const DR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 Data register
        DR: u8, // bit offset: 0 desc: 8-bit data register
        padding: u23,
    });
    pub const SR1 = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Status register 1
        SB: bool, // bit offset: 0 desc: Start bit (Master mode)
        ADDR: bool, // bit offset: 1 desc: Address sent (master mode)/matched (slave mode)
        BTF: bool, // bit offset: 2 desc: Byte transfer finished
        ADD10: bool, // bit offset: 3 desc: 10-bit header sent (Master mode)
        STOPF: bool, // bit offset: 4 desc: Stop detection (slave mode)
        reserved0: u1,
        RxNE: bool, // bit offset: 6 desc: Data register not empty (receivers)
        TxE: bool, // bit offset: 7 desc: Data register empty (transmitters)
        BERR: bool, // bit offset: 8 desc: Bus error
        ARLO: bool, // bit offset: 9 desc: Arbitration lost (master mode)
        AF: bool, // bit offset: 10 desc: Acknowledge failure
        OVR: bool, // bit offset: 11 desc: Overrun/Underrun
        PECERR: bool, // bit offset: 12 desc: PEC Error in reception
        reserved1: u1,
        TIMEOUT: bool, // bit offset: 14 desc: Timeout or Tlow error
        SMBALERT: bool, // bit offset: 15 desc: SMBus alert
        padding: u15,
    });
    pub const SR2 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 Status register 2
        MSL: bool, // bit offset: 0 desc: Master/slave
        BUSY: bool, // bit offset: 1 desc: Bus busy
        TRA: bool, // bit offset: 2 desc: Transmitter/receiver
        reserved0: u1,
        GENCALL: bool, // bit offset: 4 desc: General call address (Slave mode)
        SMBDEFAULT: bool, // bit offset: 5 desc: SMBus device default address (Slave mode)
        SMBHOST: bool, // bit offset: 6 desc: SMBus host header (Slave mode)
        DUALF: bool, // bit offset: 7 desc: Dual flag (Slave mode)
        PEC: u8, // bit offset: 8 desc: acket error checking register
        padding: u15,
    });
    pub const CCR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 Clock control register
        CCR: u12, // bit offset: 0 desc: Clock control register in Fast/Standard mode (Master mode)
        reserved0: u2,
        DUTY: bool, // bit offset: 14 desc: Fast mode duty cycle
        F_S: bool, // bit offset: 15 desc: I2C master mode selection
        padding: u15,
    });
    pub const TRISE = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 TRISE register
        TRISE: u6, // bit offset: 0 desc: Maximum rise time in Fast/Standard mode (Master mode)
        padding: u25,
    });
};
pub const I2S2ext = extern struct {
    pub const Address: u32 = 0x40003400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const I2S3ext = extern struct {
    pub const Address: u32 = 0x40004000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const SPI1 = extern struct {
    pub const Address: u32 = 0x40013000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const SPI2 = extern struct {
    pub const Address: u32 = 0x40003800;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const SPI3 = extern struct {
    pub const Address: u32 = 0x40003c00;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const SPI4 = extern struct {
    pub const Address: u32 = 0x40013400;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const SPI5 = extern struct {
    pub const Address: u32 = 0x40015000;
    pub const CR1 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 control register 1
        CPHA: bool, // bit offset: 0 desc: Clock phase
        CPOL: bool, // bit offset: 1 desc: Clock polarity
        MSTR: bool, // bit offset: 2 desc: Master selection
        BR: u3, // bit offset: 3 desc: Baud rate control
        SPE: bool, // bit offset: 6 desc: SPI enable
        LSBFIRST: bool, // bit offset: 7 desc: Frame format
        SSI: bool, // bit offset: 8 desc: Internal slave select
        SSM: bool, // bit offset: 9 desc: Software slave management
        RXONLY: bool, // bit offset: 10 desc: Receive only
        DFF: bool, // bit offset: 11 desc: Data frame format
        CRCNEXT: bool, // bit offset: 12 desc: CRC transfer next
        CRCEN: bool, // bit offset: 13 desc: Hardware CRC calculation enable
        BIDIOE: bool, // bit offset: 14 desc: Output enable in bidirectional mode
        BIDIMODE: bool, // bit offset: 15 desc: Bidirectional data mode enable
        padding: u15,
    });
    pub const CR2 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 control register 2
        RXDMAEN: bool, // bit offset: 0 desc: Rx buffer DMA enable
        TXDMAEN: bool, // bit offset: 1 desc: Tx buffer DMA enable
        SSOE: bool, // bit offset: 2 desc: SS output enable
        reserved0: u1,
        FRF: bool, // bit offset: 4 desc: Frame format
        ERRIE: bool, // bit offset: 5 desc: Error interrupt enable
        RXNEIE: bool, // bit offset: 6 desc: RX buffer not empty interrupt enable
        TXEIE: bool, // bit offset: 7 desc: Tx buffer empty interrupt enable
        padding: u23,
    });
    pub const SR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 status register
        RXNE: bool, // bit offset: 0 desc: Receive buffer not empty
        TXE: bool, // bit offset: 1 desc: Transmit buffer empty
        CHSIDE: bool, // bit offset: 2 desc: Channel side
        UDR: bool, // bit offset: 3 desc: Underrun flag
        CRCERR: bool, // bit offset: 4 desc: CRC error flag
        MODF: bool, // bit offset: 5 desc: Mode fault
        OVR: bool, // bit offset: 6 desc: Overrun flag
        BSY: bool, // bit offset: 7 desc: Busy flag
        TIFRFE: bool, // bit offset: 8 desc: TI frame format error
        padding: u22,
    });
    pub const DR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 data register
        DR: u16, // bit offset: 0 desc: Data register
        padding: u15,
    });
    pub const CRCPR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 CRC polynomial register
        CRCPOLY: u16, // bit offset: 0 desc: CRC polynomial register
        padding: u15,
    });
    pub const RXCRCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 RX CRC register
        RxCRC: u16, // bit offset: 0 desc: Rx CRC register
        padding: u15,
    });
    pub const TXCRCR = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 TX CRC register
        TxCRC: u16, // bit offset: 0 desc: Tx CRC register
        padding: u15,
    });
    pub const I2SCFGR = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 I2S configuration register
        CHLEN: bool, // bit offset: 0 desc: Channel length (number of bits per audio channel)
        DATLEN: u2, // bit offset: 1 desc: Data length to be transferred
        CKPOL: bool, // bit offset: 3 desc: Steady state clock polarity
        I2SSTD: u2, // bit offset: 4 desc: I2S standard selection
        reserved0: u1,
        PCMSYNC: bool, // bit offset: 7 desc: PCM frame synchronization
        I2SCFG: u2, // bit offset: 8 desc: I2S configuration mode
        I2SE: bool, // bit offset: 10 desc: I2S Enable
        I2SMOD: bool, // bit offset: 11 desc: I2S mode selection
        padding: u19,
    });
    pub const I2SPR = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 I2S prescaler register
        I2SDIV: u8, // bit offset: 0 desc: I2S Linear prescaler
        ODD: bool, // bit offset: 8 desc: Odd factor for the prescaler
        MCKOE: bool, // bit offset: 9 desc: Master clock output enable
        padding: u21,
    });
};
pub const NVIC = extern struct {
    pub const Address: u32 = 0xe000e100;
    pub const ISER0 = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Interrupt Set-Enable Register
        SETENA: u32, // bit offset: 0 desc: SETENA
    });
    pub const ISER1 = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Interrupt Set-Enable Register
        SETENA: u32, // bit offset: 0 desc: SETENA
    });
    pub const ISER2 = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Interrupt Set-Enable Register
        SETENA: u32, // bit offset: 0 desc: SETENA
    });
    pub const ICER0 = MMIO(Address + 0x00000080, u32, packed struct { // byte offset: 128 Interrupt Clear-Enable Register
        CLRENA: u32, // bit offset: 0 desc: CLRENA
    });
    pub const ICER1 = MMIO(Address + 0x00000084, u32, packed struct { // byte offset: 132 Interrupt Clear-Enable Register
        CLRENA: u32, // bit offset: 0 desc: CLRENA
    });
    pub const ICER2 = MMIO(Address + 0x00000088, u32, packed struct { // byte offset: 136 Interrupt Clear-Enable Register
        CLRENA: u32, // bit offset: 0 desc: CLRENA
    });
    pub const ISPR0 = MMIO(Address + 0x00000100, u32, packed struct { // byte offset: 256 Interrupt Set-Pending Register
        SETPEND: u32, // bit offset: 0 desc: SETPEND
    });
    pub const ISPR1 = MMIO(Address + 0x00000104, u32, packed struct { // byte offset: 260 Interrupt Set-Pending Register
        SETPEND: u32, // bit offset: 0 desc: SETPEND
    });
    pub const ISPR2 = MMIO(Address + 0x00000108, u32, packed struct { // byte offset: 264 Interrupt Set-Pending Register
        SETPEND: u32, // bit offset: 0 desc: SETPEND
    });
    pub const ICPR0 = MMIO(Address + 0x00000180, u32, packed struct { // byte offset: 384 Interrupt Clear-Pending Register
        CLRPEND: u32, // bit offset: 0 desc: CLRPEND
    });
    pub const ICPR1 = MMIO(Address + 0x00000184, u32, packed struct { // byte offset: 388 Interrupt Clear-Pending Register
        CLRPEND: u32, // bit offset: 0 desc: CLRPEND
    });
    pub const ICPR2 = MMIO(Address + 0x00000188, u32, packed struct { // byte offset: 392 Interrupt Clear-Pending Register
        CLRPEND: u32, // bit offset: 0 desc: CLRPEND
    });
    pub const IABR0 = MMIO(Address + 0x00000200, u32, packed struct { // byte offset: 512 Interrupt Active Bit Register
        ACTIVE: u32, // bit offset: 0 desc: ACTIVE
    });
    pub const IABR1 = MMIO(Address + 0x00000204, u32, packed struct { // byte offset: 516 Interrupt Active Bit Register
        ACTIVE: u32, // bit offset: 0 desc: ACTIVE
    });
    pub const IABR2 = MMIO(Address + 0x00000208, u32, packed struct { // byte offset: 520 Interrupt Active Bit Register
        ACTIVE: u32, // bit offset: 0 desc: ACTIVE
    });
    pub const IPR0 = MMIO(Address + 0x00000300, u32, packed struct { // byte offset: 768 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR1 = MMIO(Address + 0x00000304, u32, packed struct { // byte offset: 772 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR2 = MMIO(Address + 0x00000308, u32, packed struct { // byte offset: 776 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR3 = MMIO(Address + 0x0000030c, u32, packed struct { // byte offset: 780 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR4 = MMIO(Address + 0x00000310, u32, packed struct { // byte offset: 784 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR5 = MMIO(Address + 0x00000314, u32, packed struct { // byte offset: 788 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR6 = MMIO(Address + 0x00000318, u32, packed struct { // byte offset: 792 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR7 = MMIO(Address + 0x0000031c, u32, packed struct { // byte offset: 796 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR8 = MMIO(Address + 0x00000320, u32, packed struct { // byte offset: 800 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR9 = MMIO(Address + 0x00000324, u32, packed struct { // byte offset: 804 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR10 = MMIO(Address + 0x00000328, u32, packed struct { // byte offset: 808 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR11 = MMIO(Address + 0x0000032c, u32, packed struct { // byte offset: 812 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR12 = MMIO(Address + 0x00000330, u32, packed struct { // byte offset: 816 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR13 = MMIO(Address + 0x00000334, u32, packed struct { // byte offset: 820 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR14 = MMIO(Address + 0x00000338, u32, packed struct { // byte offset: 824 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR15 = MMIO(Address + 0x0000033c, u32, packed struct { // byte offset: 828 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR16 = MMIO(Address + 0x00000340, u32, packed struct { // byte offset: 832 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR17 = MMIO(Address + 0x00000344, u32, packed struct { // byte offset: 836 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR18 = MMIO(Address + 0x00000348, u32, packed struct { // byte offset: 840 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
    pub const IPR19 = MMIO(Address + 0x0000034c, u32, packed struct { // byte offset: 844 Interrupt Priority Register
        IPR_N0: u8, // bit offset: 0 desc: IPR_N0
        IPR_N1: u8, // bit offset: 8 desc: IPR_N1
        IPR_N2: u8, // bit offset: 16 desc: IPR_N2
        IPR_N3: u8, // bit offset: 24 desc: IPR_N3
    });
};
pub const FPU = extern struct {
    pub const Address: u32 = 0xe000ef34;
    pub const FPCCR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Floating-point context control register
        LSPACT: bool, // bit offset: 0 desc: LSPACT
        USER: bool, // bit offset: 1 desc: USER
        reserved0: u1,
        THREAD: bool, // bit offset: 3 desc: THREAD
        HFRDY: bool, // bit offset: 4 desc: HFRDY
        MMRDY: bool, // bit offset: 5 desc: MMRDY
        BFRDY: bool, // bit offset: 6 desc: BFRDY
        reserved1: u1,
        MONRDY: bool, // bit offset: 8 desc: MONRDY
        reserved2: u21,
        LSPEN: bool, // bit offset: 30 desc: LSPEN
        ASPEN: bool, // bit offset: 31 desc: ASPEN
    });
    pub const FPCAR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Floating-point context address register
        reserved0: u3,
        ADDRESS: u29, // bit offset: 3 desc: Location of unpopulated floating-point
    });
    pub const FPSCR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Floating-point status control register
        IOC: bool, // bit offset: 0 desc: Invalid operation cumulative exception bit
        DZC: bool, // bit offset: 1 desc: Division by zero cumulative exception bit.
        OFC: bool, // bit offset: 2 desc: Overflow cumulative exception bit
        UFC: bool, // bit offset: 3 desc: Underflow cumulative exception bit
        IXC: bool, // bit offset: 4 desc: Inexact cumulative exception bit
        reserved0: u2,
        IDC: bool, // bit offset: 7 desc: Input denormal cumulative exception bit.
        reserved1: u14,
        RMode: u2, // bit offset: 22 desc: Rounding Mode control field
        FZ: bool, // bit offset: 24 desc: Flush-to-zero mode control bit:
        DN: bool, // bit offset: 25 desc: Default NaN mode control bit
        AHP: bool, // bit offset: 26 desc: Alternative half-precision control bit
        reserved2: u1,
        V: bool, // bit offset: 28 desc: Overflow condition code flag
        C: bool, // bit offset: 29 desc: Carry condition code flag
        Z: bool, // bit offset: 30 desc: Zero condition code flag
        N: bool, // bit offset: 31 desc: Negative condition code flag
    });
};
pub const MPU = extern struct {
    pub const Address: u32 = 0xe000ed90;
    pub const MPU_TYPER = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 MPU type register
        SEPARATE: bool, // bit offset: 0 desc: Separate flag
        reserved0: u7,
        DREGION: u8, // bit offset: 8 desc: Number of MPU data regions
        IREGION: u8, // bit offset: 16 desc: Number of MPU instruction regions
        padding: u7,
    });
    pub const MPU_CTRL = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 MPU control register
        ENABLE: bool, // bit offset: 0 desc: Enables the MPU
        HFNMIENA: bool, // bit offset: 1 desc: Enables the operation of MPU during hard fault
        PRIVDEFENA: bool, // bit offset: 2 desc: Enable priviliged software access to default memory map
        padding: u28,
    });
    pub const MPU_RNR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 MPU region number register
        REGION: u8, // bit offset: 0 desc: MPU region
        padding: u23,
    });
    pub const MPU_RBAR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 MPU region base address register
        REGION: u4, // bit offset: 0 desc: MPU region field
        VALID: bool, // bit offset: 4 desc: MPU region number valid
        ADDR: u27, // bit offset: 5 desc: Region base address field
    });
    pub const MPU_RASR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 MPU region attribute and size register
        ENABLE: bool, // bit offset: 0 desc: Region enable bit.
        SIZE: u5, // bit offset: 1 desc: Size of the MPU protection region
        reserved0: u2,
        SRD: u8, // bit offset: 8 desc: Subregion disable bits
        B: bool, // bit offset: 16 desc: memory attribute
        C: bool, // bit offset: 17 desc: memory attribute
        S: bool, // bit offset: 18 desc: Shareable memory attribute
        TEX: u3, // bit offset: 19 desc: memory attribute
        reserved1: u2,
        AP: u3, // bit offset: 24 desc: Access permission
        reserved2: u1,
        XN: bool, // bit offset: 28 desc: Instruction access disable bit
        padding: u2,
    });
};
pub const STK = extern struct {
    pub const Address: u32 = 0xe000e010;
    pub const CTRL = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 SysTick control and status register
        ENABLE: bool, // bit offset: 0 desc: Counter enable
        TICKINT: bool, // bit offset: 1 desc: SysTick exception request enable
        CLKSOURCE: bool, // bit offset: 2 desc: Clock source selection
        reserved0: u13,
        COUNTFLAG: bool, // bit offset: 16 desc: COUNTFLAG
        padding: u14,
    });
    pub const LOAD = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 SysTick reload value register
        RELOAD: u24, // bit offset: 0 desc: RELOAD value
        padding: u7,
    });
    pub const VAL = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 SysTick current value register
        CURRENT: u24, // bit offset: 0 desc: Current counter value
        padding: u7,
    });
    pub const CALIB = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 SysTick calibration value register
        TENMS: u24, // bit offset: 0 desc: Calibration value
        reserved0: u6,
        SKEW: bool, // bit offset: 30 desc: SKEW flag: Indicates whether the TENMS value is exact
        NOREF: bool, // bit offset: 31 desc: NOREF flag. Reads as zero
    });
};
pub const SCB = extern struct {
    pub const Address: u32 = 0xe000ed00;
    pub const CPUID = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 CPUID base register
        Revision: u4, // bit offset: 0 desc: Revision number
        PartNo: u12, // bit offset: 4 desc: Part number of the processor
        Constant: u4, // bit offset: 16 desc: Reads as 0xF
        Variant: u4, // bit offset: 20 desc: Variant number
        Implementer: u8, // bit offset: 24 desc: Implementer code
    });
    pub const ICSR = MMIO(Address + 0x00000004, u32, packed struct { // byte offset: 4 Interrupt control and state register
        VECTACTIVE: u9, // bit offset: 0 desc: Active vector
        reserved0: u2,
        RETTOBASE: bool, // bit offset: 11 desc: Return to base level
        VECTPENDING: u7, // bit offset: 12 desc: Pending vector
        reserved1: u3,
        ISRPENDING: bool, // bit offset: 22 desc: Interrupt pending flag
        reserved2: u2,
        PENDSTCLR: bool, // bit offset: 25 desc: SysTick exception clear-pending bit
        PENDSTSET: bool, // bit offset: 26 desc: SysTick exception set-pending bit
        PENDSVCLR: bool, // bit offset: 27 desc: PendSV clear-pending bit
        PENDSVSET: bool, // bit offset: 28 desc: PendSV set-pending bit
        reserved3: u2,
        NMIPENDSET: bool, // bit offset: 31 desc: NMI set-pending bit.
    });
    pub const VTOR = MMIO(Address + 0x00000008, u32, packed struct { // byte offset: 8 Vector table offset register
        reserved0: u9,
        TBLOFF: u21, // bit offset: 9 desc: Vector table base offset field
        padding: u1,
    });
    pub const AIRCR = MMIO(Address + 0x0000000c, u32, packed struct { // byte offset: 12 Application interrupt and reset control register
        VECTRESET: bool, // bit offset: 0 desc: VECTRESET
        VECTCLRACTIVE: bool, // bit offset: 1 desc: VECTCLRACTIVE
        SYSRESETREQ: bool, // bit offset: 2 desc: SYSRESETREQ
        reserved0: u5,
        PRIGROUP: u3, // bit offset: 8 desc: PRIGROUP
        reserved1: u4,
        ENDIANESS: bool, // bit offset: 15 desc: ENDIANESS
        VECTKEYSTAT: u16, // bit offset: 16 desc: Register key
    });
    pub const SCR = MMIO(Address + 0x00000010, u32, packed struct { // byte offset: 16 System control register
        reserved0: u1,
        SLEEPONEXIT: bool, // bit offset: 1 desc: SLEEPONEXIT
        SLEEPDEEP: bool, // bit offset: 2 desc: SLEEPDEEP
        reserved1: u1,
        SEVEONPEND: bool, // bit offset: 4 desc: Send Event on Pending bit
        padding: u26,
    });
    pub const CCR = MMIO(Address + 0x00000014, u32, packed struct { // byte offset: 20 Configuration and control register
        NONBASETHRDENA: bool, // bit offset: 0 desc: Configures how the processor enters Thread mode
        USERSETMPEND: bool, // bit offset: 1 desc: USERSETMPEND
        reserved0: u1,
        UNALIGN__TRP: bool, // bit offset: 3 desc: UNALIGN_ TRP
        DIV_0_TRP: bool, // bit offset: 4 desc: DIV_0_TRP
        reserved1: u3,
        BFHFNMIGN: bool, // bit offset: 8 desc: BFHFNMIGN
        STKALIGN: bool, // bit offset: 9 desc: STKALIGN
        padding: u21,
    });
    pub const SHPR1 = MMIO(Address + 0x00000018, u32, packed struct { // byte offset: 24 System handler priority registers
        PRI_4: u8, // bit offset: 0 desc: Priority of system handler 4
        PRI_5: u8, // bit offset: 8 desc: Priority of system handler 5
        PRI_6: u8, // bit offset: 16 desc: Priority of system handler 6
        padding: u7,
    });
    pub const SHPR2 = MMIO(Address + 0x0000001c, u32, packed struct { // byte offset: 28 System handler priority registers
        reserved0: u24,
        PRI_11: u8, // bit offset: 24 desc: Priority of system handler 11
    });
    pub const SHPR3 = MMIO(Address + 0x00000020, u32, packed struct { // byte offset: 32 System handler priority registers
        reserved0: u16,
        PRI_14: u8, // bit offset: 16 desc: Priority of system handler 14
        PRI_15: u8, // bit offset: 24 desc: Priority of system handler 15
    });
    pub const SHCRS = MMIO(Address + 0x00000024, u32, packed struct { // byte offset: 36 System handler control and state register
        MEMFAULTACT: bool, // bit offset: 0 desc: Memory management fault exception active bit
        BUSFAULTACT: bool, // bit offset: 1 desc: Bus fault exception active bit
        reserved0: u1,
        USGFAULTACT: bool, // bit offset: 3 desc: Usage fault exception active bit
        reserved1: u3,
        SVCALLACT: bool, // bit offset: 7 desc: SVC call active bit
        MONITORACT: bool, // bit offset: 8 desc: Debug monitor active bit
        reserved2: u1,
        PENDSVACT: bool, // bit offset: 10 desc: PendSV exception active bit
        SYSTICKACT: bool, // bit offset: 11 desc: SysTick exception active bit
        USGFAULTPENDED: bool, // bit offset: 12 desc: Usage fault exception pending bit
        MEMFAULTPENDED: bool, // bit offset: 13 desc: Memory management fault exception pending bit
        BUSFAULTPENDED: bool, // bit offset: 14 desc: Bus fault exception pending bit
        SVCALLPENDED: bool, // bit offset: 15 desc: SVC call pending bit
        MEMFAULTENA: bool, // bit offset: 16 desc: Memory management fault enable bit
        BUSFAULTENA: bool, // bit offset: 17 desc: Bus fault enable bit
        USGFAULTENA: bool, // bit offset: 18 desc: Usage fault enable bit
        padding: u12,
    });
    pub const CFSR_UFSR_BFSR_MMFSR = MMIO(Address + 0x00000028, u32, packed struct { // byte offset: 40 Configurable fault status register
        reserved0: u1,
        IACCVIOL: bool, // bit offset: 1 desc: Instruction access violation flag
        reserved1: u1,
        MUNSTKERR: bool, // bit offset: 3 desc: Memory manager fault on unstacking for a return from exception
        MSTKERR: bool, // bit offset: 4 desc: Memory manager fault on stacking for exception entry.
        MLSPERR: bool, // bit offset: 5 desc: MLSPERR
        reserved2: u1,
        MMARVALID: bool, // bit offset: 7 desc: Memory Management Fault Address Register (MMAR) valid flag
        IBUSERR: bool, // bit offset: 8 desc: Instruction bus error
        PRECISERR: bool, // bit offset: 9 desc: Precise data bus error
        IMPRECISERR: bool, // bit offset: 10 desc: Imprecise data bus error
        UNSTKERR: bool, // bit offset: 11 desc: Bus fault on unstacking for a return from exception
        STKERR: bool, // bit offset: 12 desc: Bus fault on stacking for exception entry
        LSPERR: bool, // bit offset: 13 desc: Bus fault on floating-point lazy state preservation
        reserved3: u1,
        BFARVALID: bool, // bit offset: 15 desc: Bus Fault Address Register (BFAR) valid flag
        UNDEFINSTR: bool, // bit offset: 16 desc: Undefined instruction usage fault
        INVSTATE: bool, // bit offset: 17 desc: Invalid state usage fault
        INVPC: bool, // bit offset: 18 desc: Invalid PC load usage fault
        NOCP: bool, // bit offset: 19 desc: No coprocessor usage fault.
        reserved4: u4,
        UNALIGNED: bool, // bit offset: 24 desc: Unaligned access usage fault
        DIVBYZERO: bool, // bit offset: 25 desc: Divide by zero usage fault
        padding: u5,
    });
    pub const HFSR = MMIO(Address + 0x0000002c, u32, packed struct { // byte offset: 44 Hard fault status register
        reserved0: u1,
        VECTTBL: bool, // bit offset: 1 desc: Vector table hard fault
        reserved1: u28,
        FORCED: bool, // bit offset: 30 desc: Forced hard fault
        DEBUG_VT: bool, // bit offset: 31 desc: Reserved for Debug use
    });
    pub const MMFAR = MMIO(Address + 0x00000034, u32, packed struct { // byte offset: 52 Memory management fault address register
        MMFAR: u32, // bit offset: 0 desc: Memory management fault address
    });
    pub const BFAR = MMIO(Address + 0x00000038, u32, packed struct { // byte offset: 56 Bus fault address register
        BFAR: u32, // bit offset: 0 desc: Bus fault address
    });
    pub const AFSR = MMIO(Address + 0x0000003c, u32, packed struct { // byte offset: 60 Auxiliary fault status register
        IMPDEF: u32, // bit offset: 0 desc: Implementation defined
    });
};
pub const NVIC_STIR = extern struct {
    pub const Address: u32 = 0xe000ef00;
    pub const STIR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Software trigger interrupt register
        INTID: u9, // bit offset: 0 desc: Software generated interrupt ID
        padding: u22,
    });
};
pub const FPU_CPACR = extern struct {
    pub const Address: u32 = 0xe000ed88;
    pub const CPACR = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Coprocessor access control register
        reserved0: u20,
        CP: u4, // bit offset: 20 desc: CP
        padding: u7,
    });
};
pub const SCB_ACTRL = extern struct {
    pub const Address: u32 = 0xe000e008;
    pub const ACTRL = MMIO(Address + 0x00000000, u32, packed struct { // byte offset: 0 Auxiliary control register
        DISMCYCINT: bool, // bit offset: 0 desc: DISMCYCINT
        DISDEFWBUF: bool, // bit offset: 1 desc: DISDEFWBUF
        DISFOLD: bool, // bit offset: 2 desc: DISFOLD
        reserved0: u5,
        DISFPCA: bool, // bit offset: 8 desc: DISFPCA
        DISOOFP: bool, // bit offset: 9 desc: DISOOFP
        padding: u21,
    });
};
