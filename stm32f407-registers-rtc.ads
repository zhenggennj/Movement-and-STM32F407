pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.rtc is
  --*
   --  * @brief Real-Time Clock
   --

  --!< RTC time register,                                        Address offset: 16#00
  --!< RTC date register,                                        Address offset: 16#04
  --!< RTC control register,                                     Address offset: 16#08
  --!< RTC initialization and status register,                   Address offset: 16#0C
  --!< RTC prescaler register,                                   Address offset: 16#10
  --!< RTC wakeup timer register,                                Address offset: 16#14
  --!< RTC calibration register,                                 Address offset: 16#18
  --!< RTC alarm A register,                                     Address offset: 16#1C
  --!< RTC alarm B register,                                     Address offset: 16#20
  --!< RTC write protection register,                            Address offset: 16#24
  --!< RTC sub second register,                                  Address offset: 16#28
  --!< RTC shift control register,                               Address offset: 16#2C
  --!< RTC time stamp time register,                             Address offset: 16#30
  --!< RTC time stamp date register,                             Address offset: 16#34
  --!< RTC time-stamp sub second register,                       Address offset: 16#38
  --!< RTC calibration register,                                 Address offset: 16#3C
  --!< RTC tamper and alternate function configuration register, Address offset: 16#40
  --!< RTC alarm A sub second register,                          Address offset: 16#44
  --!< RTC alarm B sub second register,                          Address offset: 16#48
  --!< Reserved, 16#4C
  --!< RTC backup register 1,                                    Address offset: 16#50
  --!< RTC backup register 1,                                    Address offset: 16#54
  --!< RTC backup register 2,                                    Address offset: 16#58
  --!< RTC backup register 3,                                    Address offset: 16#5C
  --!< RTC backup register 4,                                    Address offset: 16#60
  --!< RTC backup register 5,                                    Address offset: 16#64
  --!< RTC backup register 6,                                    Address offset: 16#68
  --!< RTC backup register 7,                                    Address offset: 16#6C
  --!< RTC backup register 8,                                    Address offset: 16#70
  --!< RTC backup register 9,                                    Address offset: 16#74
  --!< RTC backup register 10,                                   Address offset: 16#78
  --!< RTC backup register 11,                                   Address offset: 16#7C
  --!< RTC backup register 12,                                   Address offset: 16#80
  --!< RTC backup register 13,                                   Address offset: 16#84
  --!< RTC backup register 14,                                   Address offset: 16#88
  --!< RTC backup register 15,                                   Address offset: 16#8C
  --!< RTC backup register 16,                                   Address offset: 16#90
  --!< RTC backup register 17,                                   Address offset: 16#94
  --!< RTC backup register 18,                                   Address offset: 16#98
  --!< RTC backup register 19,                                   Address offset: 16#9C
   type RTC_Register is record
      TR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:655
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:656
      CR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:657
      ISR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:658
      PRER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:659
      WUTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:660
      CALIBR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:661
      ALRMAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:662
      ALRMBR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:663
      WPR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:664
      SSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:665
      SHIFTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:666
      TSTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:667
      TSDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:668
      TSSSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:669
      CALR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:670
      TAFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:671
      ALRMASSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:672
      ALRMBSSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:673
      RESERVED7 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:674
      BKP0R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:675
      BKP1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:676
      BKP2R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:677
      BKP3R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:678
      BKP4R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:679
      BKP5R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:680
      BKP6R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:681
      BKP7R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:682
      BKP8R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:683
      BKP9R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:684
      BKP10R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:685
      BKP11R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:686
      BKP12R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:687
      BKP13R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:688
      BKP14R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:689
      BKP15R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:690
      BKP16R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:691
      BKP17R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:692
      BKP18R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:693
      BKP19R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:694
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      RTC_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:695
   subtype RTC_TypeDef is RTC_Register;

   RTC : RTC_Register with
      Volatile,
      Address => System'To_Address (RTC_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                           Real-Time Clock (RTC)                            */
-- /*                                                                            */
-- /******************************************************************************/
-- /********************  Bits definition for RTC_TR register  *******************/
   RTC_TR_PM    : constant Word := 16#00400000#;
   RTC_TR_HT    : constant Word := 16#00300000#;
   RTC_TR_HT_0  : constant Word := 16#00100000#;
   RTC_TR_HT_1  : constant Word := 16#00200000#;
   RTC_TR_HU    : constant Word := 16#000F0000#;
   RTC_TR_HU_0  : constant Word := 16#00010000#;
   RTC_TR_HU_1  : constant Word := 16#00020000#;
   RTC_TR_HU_2  : constant Word := 16#00040000#;
   RTC_TR_HU_3  : constant Word := 16#00080000#;
   RTC_TR_MNT   : constant Word := 16#00007000#;
   RTC_TR_MNT_0 : constant Word := 16#00001000#;
   RTC_TR_MNT_1 : constant Word := 16#00002000#;
   RTC_TR_MNT_2 : constant Word := 16#00004000#;
   RTC_TR_MNU   : constant Word := 16#00000F00#;
   RTC_TR_MNU_0 : constant Word := 16#00000100#;
   RTC_TR_MNU_1 : constant Word := 16#00000200#;
   RTC_TR_MNU_2 : constant Word := 16#00000400#;
   RTC_TR_MNU_3 : constant Word := 16#00000800#;
   RTC_TR_ST    : constant Word := 16#00000070#;
   RTC_TR_ST_0  : constant Word := 16#00000010#;
   RTC_TR_ST_1  : constant Word := 16#00000020#;
   RTC_TR_ST_2  : constant Word := 16#00000040#;
   RTC_TR_SU    : constant Word := 16#0000000F#;
   RTC_TR_SU_0  : constant Word := 16#00000001#;
   RTC_TR_SU_1  : constant Word := 16#00000002#;
   RTC_TR_SU_2  : constant Word := 16#00000004#;
   RTC_TR_SU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_DR register  *******************/
   RTC_DR_YT    : constant Word := 16#00F00000#;
   RTC_DR_YT_0  : constant Word := 16#00100000#;
   RTC_DR_YT_1  : constant Word := 16#00200000#;
   RTC_DR_YT_2  : constant Word := 16#00400000#;
   RTC_DR_YT_3  : constant Word := 16#00800000#;
   RTC_DR_YU    : constant Word := 16#000F0000#;
   RTC_DR_YU_0  : constant Word := 16#00010000#;
   RTC_DR_YU_1  : constant Word := 16#00020000#;
   RTC_DR_YU_2  : constant Word := 16#00040000#;
   RTC_DR_YU_3  : constant Word := 16#00080000#;
   RTC_DR_WDU   : constant Word := 16#0000E000#;
   RTC_DR_WDU_0 : constant Word := 16#00002000#;
   RTC_DR_WDU_1 : constant Word := 16#00004000#;
   RTC_DR_WDU_2 : constant Word := 16#00008000#;
   RTC_DR_MT    : constant Word := 16#00001000#;
   RTC_DR_MU    : constant Word := 16#00000F00#;
   RTC_DR_MU_0  : constant Word := 16#00000100#;
   RTC_DR_MU_1  : constant Word := 16#00000200#;
   RTC_DR_MU_2  : constant Word := 16#00000400#;
   RTC_DR_MU_3  : constant Word := 16#00000800#;
   RTC_DR_DT    : constant Word := 16#00000030#;
   RTC_DR_DT_0  : constant Word := 16#00000010#;
   RTC_DR_DT_1  : constant Word := 16#00000020#;
   RTC_DR_DU    : constant Word := 16#0000000F#;
   RTC_DR_DU_0  : constant Word := 16#00000001#;
   RTC_DR_DU_1  : constant Word := 16#00000002#;
   RTC_DR_DU_2  : constant Word := 16#00000004#;
   RTC_DR_DU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_CR register  *******************/
   RTC_CR_COE       : constant Word := 16#00800000#;
   RTC_CR_OSEL      : constant Word := 16#00600000#;
   RTC_CR_OSEL_0    : constant Word := 16#00200000#;
   RTC_CR_OSEL_1    : constant Word := 16#00400000#;
   RTC_CR_POL       : constant Word := 16#00100000#;
   RTC_CR_COSEL     : constant Word := 16#00080000#;
   RTC_CR_BCK       : constant Word := 16#00040000#;
   RTC_CR_SUB1H     : constant Word := 16#00020000#;
   RTC_CR_ADD1H     : constant Word := 16#00010000#;
   RTC_CR_TSIE      : constant Word := 16#00008000#;
   RTC_CR_WUTIE     : constant Word := 16#00004000#;
   RTC_CR_ALRBIE    : constant Word := 16#00002000#;
   RTC_CR_ALRAIE    : constant Word := 16#00001000#;
   RTC_CR_TSE       : constant Word := 16#00000800#;
   RTC_CR_WUTE      : constant Word := 16#00000400#;
   RTC_CR_ALRBE     : constant Word := 16#00000200#;
   RTC_CR_ALRAE     : constant Word := 16#00000100#;
   RTC_CR_DCE       : constant Word := 16#00000080#;
   RTC_CR_FMT       : constant Word := 16#00000040#;
   RTC_CR_BYPSHAD   : constant Word := 16#00000020#;
   RTC_CR_REFCKON   : constant Word := 16#00000010#;
   RTC_CR_TSEDGE    : constant Word := 16#00000008#;
   RTC_CR_WUCKSEL   : constant Word := 16#00000007#;
   RTC_CR_WUCKSEL_0 : constant Word := 16#00000001#;
   RTC_CR_WUCKSEL_1 : constant Word := 16#00000002#;
   RTC_CR_WUCKSEL_2 : constant Word := 16#00000004#;

-- /********************  Bits definition for RTC_ISR register  ******************/
   RTC_ISR_RECALPF : constant Word := 16#00010000#;
   RTC_ISR_TAMP1F  : constant Word := 16#00002000#;
   RTC_ISR_TAMP2F  : constant Word := 16#00004000#;
   RTC_ISR_TSOVF   : constant Word := 16#00001000#;
   RTC_ISR_TSF     : constant Word := 16#00000800#;
   RTC_ISR_WUTF    : constant Word := 16#00000400#;
   RTC_ISR_ALRBF   : constant Word := 16#00000200#;
   RTC_ISR_ALRAF   : constant Word := 16#00000100#;
   RTC_ISR_INIT    : constant Word := 16#00000080#;
   RTC_ISR_INITF   : constant Word := 16#00000040#;
   RTC_ISR_RSF     : constant Word := 16#00000020#;
   RTC_ISR_INITS   : constant Word := 16#00000010#;
   RTC_ISR_SHPF    : constant Word := 16#00000008#;
   RTC_ISR_WUTWF   : constant Word := 16#00000004#;
   RTC_ISR_ALRBWF  : constant Word := 16#00000002#;
   RTC_ISR_ALRAWF  : constant Word := 16#00000001#;

-- /********************  Bits definition for RTC_PRER register  *****************/
   RTC_PRER_PREDIV_A : constant Word := 16#007F0000#;
   RTC_PRER_PREDIV_S : constant Word := 16#00007FFF#;

-- /********************  Bits definition for RTC_WUTR register  *****************/
   RTC_WUTR_WUT : constant Word := 16#0000FFFF#;

-- /********************  Bits definition for RTC_CALIBR register  ***************/
   RTC_CALIBR_DCS : constant Word := 16#00000080#;
   RTC_CALIBR_DC  : constant Word := 16#0000001F#;

-- /********************  Bits definition for RTC_ALRMAR register  ***************/
   RTC_ALRMAR_MSK4  : constant Word := 16#80000000#;
   RTC_ALRMAR_WDSEL : constant Word := 16#40000000#;
   RTC_ALRMAR_DT    : constant Word := 16#30000000#;
   RTC_ALRMAR_DT_0  : constant Word := 16#10000000#;
   RTC_ALRMAR_DT_1  : constant Word := 16#20000000#;
   RTC_ALRMAR_DU    : constant Word := 16#0F000000#;
   RTC_ALRMAR_DU_0  : constant Word := 16#01000000#;
   RTC_ALRMAR_DU_1  : constant Word := 16#02000000#;
   RTC_ALRMAR_DU_2  : constant Word := 16#04000000#;
   RTC_ALRMAR_DU_3  : constant Word := 16#08000000#;
   RTC_ALRMAR_MSK3  : constant Word := 16#00800000#;
   RTC_ALRMAR_PM    : constant Word := 16#00400000#;
   RTC_ALRMAR_HT    : constant Word := 16#00300000#;
   RTC_ALRMAR_HT_0  : constant Word := 16#00100000#;
   RTC_ALRMAR_HT_1  : constant Word := 16#00200000#;
   RTC_ALRMAR_HU    : constant Word := 16#000F0000#;
   RTC_ALRMAR_HU_0  : constant Word := 16#00010000#;
   RTC_ALRMAR_HU_1  : constant Word := 16#00020000#;
   RTC_ALRMAR_HU_2  : constant Word := 16#00040000#;
   RTC_ALRMAR_HU_3  : constant Word := 16#00080000#;
   RTC_ALRMAR_MSK2  : constant Word := 16#00008000#;
   RTC_ALRMAR_MNT   : constant Word := 16#00007000#;
   RTC_ALRMAR_MNT_0 : constant Word := 16#00001000#;
   RTC_ALRMAR_MNT_1 : constant Word := 16#00002000#;
   RTC_ALRMAR_MNT_2 : constant Word := 16#00004000#;
   RTC_ALRMAR_MNU   : constant Word := 16#00000F00#;
   RTC_ALRMAR_MNU_0 : constant Word := 16#00000100#;
   RTC_ALRMAR_MNU_1 : constant Word := 16#00000200#;
   RTC_ALRMAR_MNU_2 : constant Word := 16#00000400#;
   RTC_ALRMAR_MNU_3 : constant Word := 16#00000800#;
   RTC_ALRMAR_MSK1  : constant Word := 16#00000080#;
   RTC_ALRMAR_ST    : constant Word := 16#00000070#;
   RTC_ALRMAR_ST_0  : constant Word := 16#00000010#;
   RTC_ALRMAR_ST_1  : constant Word := 16#00000020#;
   RTC_ALRMAR_ST_2  : constant Word := 16#00000040#;
   RTC_ALRMAR_SU    : constant Word := 16#0000000F#;
   RTC_ALRMAR_SU_0  : constant Word := 16#00000001#;
   RTC_ALRMAR_SU_1  : constant Word := 16#00000002#;
   RTC_ALRMAR_SU_2  : constant Word := 16#00000004#;
   RTC_ALRMAR_SU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_ALRMBR register  ***************/
   RTC_ALRMBR_MSK4  : constant Word := 16#80000000#;
   RTC_ALRMBR_WDSEL : constant Word := 16#40000000#;
   RTC_ALRMBR_DT    : constant Word := 16#30000000#;
   RTC_ALRMBR_DT_0  : constant Word := 16#10000000#;
   RTC_ALRMBR_DT_1  : constant Word := 16#20000000#;
   RTC_ALRMBR_DU    : constant Word := 16#0F000000#;
   RTC_ALRMBR_DU_0  : constant Word := 16#01000000#;
   RTC_ALRMBR_DU_1  : constant Word := 16#02000000#;
   RTC_ALRMBR_DU_2  : constant Word := 16#04000000#;
   RTC_ALRMBR_DU_3  : constant Word := 16#08000000#;
   RTC_ALRMBR_MSK3  : constant Word := 16#00800000#;
   RTC_ALRMBR_PM    : constant Word := 16#00400000#;
   RTC_ALRMBR_HT    : constant Word := 16#00300000#;
   RTC_ALRMBR_HT_0  : constant Word := 16#00100000#;
   RTC_ALRMBR_HT_1  : constant Word := 16#00200000#;
   RTC_ALRMBR_HU    : constant Word := 16#000F0000#;
   RTC_ALRMBR_HU_0  : constant Word := 16#00010000#;
   RTC_ALRMBR_HU_1  : constant Word := 16#00020000#;
   RTC_ALRMBR_HU_2  : constant Word := 16#00040000#;
   RTC_ALRMBR_HU_3  : constant Word := 16#00080000#;
   RTC_ALRMBR_MSK2  : constant Word := 16#00008000#;
   RTC_ALRMBR_MNT   : constant Word := 16#00007000#;
   RTC_ALRMBR_MNT_0 : constant Word := 16#00001000#;
   RTC_ALRMBR_MNT_1 : constant Word := 16#00002000#;
   RTC_ALRMBR_MNT_2 : constant Word := 16#00004000#;
   RTC_ALRMBR_MNU   : constant Word := 16#00000F00#;
   RTC_ALRMBR_MNU_0 : constant Word := 16#00000100#;
   RTC_ALRMBR_MNU_1 : constant Word := 16#00000200#;
   RTC_ALRMBR_MNU_2 : constant Word := 16#00000400#;
   RTC_ALRMBR_MNU_3 : constant Word := 16#00000800#;
   RTC_ALRMBR_MSK1  : constant Word := 16#00000080#;
   RTC_ALRMBR_ST    : constant Word := 16#00000070#;
   RTC_ALRMBR_ST_0  : constant Word := 16#00000010#;
   RTC_ALRMBR_ST_1  : constant Word := 16#00000020#;
   RTC_ALRMBR_ST_2  : constant Word := 16#00000040#;
   RTC_ALRMBR_SU    : constant Word := 16#0000000F#;
   RTC_ALRMBR_SU_0  : constant Word := 16#00000001#;
   RTC_ALRMBR_SU_1  : constant Word := 16#00000002#;
   RTC_ALRMBR_SU_2  : constant Word := 16#00000004#;
   RTC_ALRMBR_SU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_WPR register  ******************/
   RTC_WPR_KEY : constant Word := 16#000000FF#;

-- /********************  Bits definition for RTC_SSR register  ******************/
   RTC_SSR_SS : constant Word := 16#0000FFFF#;

-- /********************  Bits definition for RTC_SHIFTR register  ***************/
   RTC_SHIFTR_SUBFS : constant Word := 16#00007FFF#;
   RTC_SHIFTR_ADD1S : constant Word := 16#80000000#;

-- /********************  Bits definition for RTC_TSTR register  *****************/
   RTC_TSTR_PM    : constant Word := 16#00400000#;
   RTC_TSTR_HT    : constant Word := 16#00300000#;
   RTC_TSTR_HT_0  : constant Word := 16#00100000#;
   RTC_TSTR_HT_1  : constant Word := 16#00200000#;
   RTC_TSTR_HU    : constant Word := 16#000F0000#;
   RTC_TSTR_HU_0  : constant Word := 16#00010000#;
   RTC_TSTR_HU_1  : constant Word := 16#00020000#;
   RTC_TSTR_HU_2  : constant Word := 16#00040000#;
   RTC_TSTR_HU_3  : constant Word := 16#00080000#;
   RTC_TSTR_MNT   : constant Word := 16#00007000#;
   RTC_TSTR_MNT_0 : constant Word := 16#00001000#;
   RTC_TSTR_MNT_1 : constant Word := 16#00002000#;
   RTC_TSTR_MNT_2 : constant Word := 16#00004000#;
   RTC_TSTR_MNU   : constant Word := 16#00000F00#;
   RTC_TSTR_MNU_0 : constant Word := 16#00000100#;
   RTC_TSTR_MNU_1 : constant Word := 16#00000200#;
   RTC_TSTR_MNU_2 : constant Word := 16#00000400#;
   RTC_TSTR_MNU_3 : constant Word := 16#00000800#;
   RTC_TSTR_ST    : constant Word := 16#00000070#;
   RTC_TSTR_ST_0  : constant Word := 16#00000010#;
   RTC_TSTR_ST_1  : constant Word := 16#00000020#;
   RTC_TSTR_ST_2  : constant Word := 16#00000040#;
   RTC_TSTR_SU    : constant Word := 16#0000000F#;
   RTC_TSTR_SU_0  : constant Word := 16#00000001#;
   RTC_TSTR_SU_1  : constant Word := 16#00000002#;
   RTC_TSTR_SU_2  : constant Word := 16#00000004#;
   RTC_TSTR_SU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_TSDR register  *****************/
   RTC_TSDR_WDU   : constant Word := 16#0000E000#;
   RTC_TSDR_WDU_0 : constant Word := 16#00002000#;
   RTC_TSDR_WDU_1 : constant Word := 16#00004000#;
   RTC_TSDR_WDU_2 : constant Word := 16#00008000#;
   RTC_TSDR_MT    : constant Word := 16#00001000#;
   RTC_TSDR_MU    : constant Word := 16#00000F00#;
   RTC_TSDR_MU_0  : constant Word := 16#00000100#;
   RTC_TSDR_MU_1  : constant Word := 16#00000200#;
   RTC_TSDR_MU_2  : constant Word := 16#00000400#;
   RTC_TSDR_MU_3  : constant Word := 16#00000800#;
   RTC_TSDR_DT    : constant Word := 16#00000030#;
   RTC_TSDR_DT_0  : constant Word := 16#00000010#;
   RTC_TSDR_DT_1  : constant Word := 16#00000020#;
   RTC_TSDR_DU    : constant Word := 16#0000000F#;
   RTC_TSDR_DU_0  : constant Word := 16#00000001#;
   RTC_TSDR_DU_1  : constant Word := 16#00000002#;
   RTC_TSDR_DU_2  : constant Word := 16#00000004#;
   RTC_TSDR_DU_3  : constant Word := 16#00000008#;

-- /********************  Bits definition for RTC_TSSSR register  ****************/
   RTC_TSSSR_SS : constant Word := 16#0000FFFF#;

-- /********************  Bits definition for RTC_CAL register  *****************/
   RTC_CALR_CALP   : constant Word := 16#00008000#;
   RTC_CALR_CALW8  : constant Word := 16#00004000#;
   RTC_CALR_CALW16 : constant Word := 16#00002000#;
   RTC_CALR_CALM   : constant Word := 16#000001FF#;
   RTC_CALR_CALM_0 : constant Word := 16#00000001#;
   RTC_CALR_CALM_1 : constant Word := 16#00000002#;
   RTC_CALR_CALM_2 : constant Word := 16#00000004#;
   RTC_CALR_CALM_3 : constant Word := 16#00000008#;
   RTC_CALR_CALM_4 : constant Word := 16#00000010#;
   RTC_CALR_CALM_5 : constant Word := 16#00000020#;
   RTC_CALR_CALM_6 : constant Word := 16#00000040#;
   RTC_CALR_CALM_7 : constant Word := 16#00000080#;
   RTC_CALR_CALM_8 : constant Word := 16#00000100#;

-- /********************  Bits definition for RTC_TAFCR register  ****************/
   RTC_TAFCR_ALARMOUTTYPE : constant Word := 16#00040000#;
   RTC_TAFCR_TSINSEL      : constant Word := 16#00020000#;
   RTC_TAFCR_TAMPINSEL    : constant Word := 16#00010000#;
   RTC_TAFCR_TAMPPUDIS    : constant Word := 16#00008000#;
   RTC_TAFCR_TAMPPRCH     : constant Word := 16#00006000#;
   RTC_TAFCR_TAMPPRCH_0   : constant Word := 16#00002000#;
   RTC_TAFCR_TAMPPRCH_1   : constant Word := 16#00004000#;
   RTC_TAFCR_TAMPFLT      : constant Word := 16#00001800#;
   RTC_TAFCR_TAMPFLT_0    : constant Word := 16#00000800#;
   RTC_TAFCR_TAMPFLT_1    : constant Word := 16#00001000#;
   RTC_TAFCR_TAMPFREQ     : constant Word := 16#00000700#;
   RTC_TAFCR_TAMPFREQ_0   : constant Word := 16#00000100#;
   RTC_TAFCR_TAMPFREQ_1   : constant Word := 16#00000200#;
   RTC_TAFCR_TAMPFREQ_2   : constant Word := 16#00000400#;
   RTC_TAFCR_TAMPTS       : constant Word := 16#00000080#;
   RTC_TAFCR_TAMP2TRG     : constant Word := 16#00000010#;
   RTC_TAFCR_TAMP2E       : constant Word := 16#00000008#;
   RTC_TAFCR_TAMPIE       : constant Word := 16#00000004#;
   RTC_TAFCR_TAMP1TRG     : constant Word := 16#00000002#;
   RTC_TAFCR_TAMP1E       : constant Word := 16#00000001#;

-- /********************  Bits definition for RTC_ALRMASSR register  *************/
   RTC_ALRMASSR_MASKSS   : constant Word := 16#0F000000#;
   RTC_ALRMASSR_MASKSS_0 : constant Word := 16#01000000#;
   RTC_ALRMASSR_MASKSS_1 : constant Word := 16#02000000#;
   RTC_ALRMASSR_MASKSS_2 : constant Word := 16#04000000#;
   RTC_ALRMASSR_MASKSS_3 : constant Word := 16#08000000#;
   RTC_ALRMASSR_SS       : constant Word := 16#00007FFF#;

-- /********************  Bits definition for RTC_ALRMBSSR register  *************/
   RTC_ALRMBSSR_MASKSS   : constant Word := 16#0F000000#;
   RTC_ALRMBSSR_MASKSS_0 : constant Word := 16#01000000#;
   RTC_ALRMBSSR_MASKSS_1 : constant Word := 16#02000000#;
   RTC_ALRMBSSR_MASKSS_2 : constant Word := 16#04000000#;
   RTC_ALRMBSSR_MASKSS_3 : constant Word := 16#08000000#;
   RTC_ALRMBSSR_SS       : constant Word := 16#00007FFF#;

-- /********************  Bits definition for RTC_BKP0R register  ****************/
   RTC_BKP0R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP1R register  ****************/
   RTC_BKP1R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP2R register  ****************/
   RTC_BKP2R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP3R register  ****************/
   RTC_BKP3R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP4R register  ****************/
   RTC_BKP4R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP5R register  ****************/
   RTC_BKP5R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP6R register  ****************/
   RTC_BKP6R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP7R register  ****************/
   RTC_BKP7R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP8R register  ****************/
   RTC_BKP8R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP9R register  ****************/
   RTC_BKP9R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP10R register  ***************/
   RTC_BKP10R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP11R register  ***************/
   RTC_BKP11R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP12R register  ***************/
   RTC_BKP12R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP13R register  ***************/
   RTC_BKP13R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP14R register  ***************/
   RTC_BKP14R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP15R register  ***************/
   RTC_BKP15R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP16R register  ***************/
   RTC_BKP16R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP17R register  ***************/
   RTC_BKP17R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP18R register  ***************/
   RTC_BKP18R : constant Word := 16#FFFFFFFF#;

-- /********************  Bits definition for RTC_BKP19R register  ***************/
   RTC_BKP19R : constant Word := 16#FFFFFFFF#;

end stm32f407.registers.rtc;
