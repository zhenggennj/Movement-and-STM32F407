pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.eth is

   
  --*
   --  * @brief Ethernet MAC
   --

   --    8
   --   11
   --   15
   --   24
   --   65
   --   69
   --   84
   type ETH_Register_RESERVED0_array is array (0 .. 1) of aliased Word;
   type ETH_Register_RESERVED1_array is array (0 .. 1) of aliased Word;
   type ETH_Register_RESERVED2_array is array (0 .. 39) of aliased Word;
   type ETH_Register_RESERVED3_array is array (0 .. 13) of aliased Word;
   type ETH_Register_RESERVED4_array is array (0 .. 4) of aliased Word;
   type ETH_Register_RESERVED5_array is array (0 .. 9) of aliased Word;
   type ETH_Register_RESERVED6_array is array (0 .. 9) of aliased Word;
   type ETH_Register_RESERVED7_array is array (0 .. 333) of aliased Word;
   type ETH_Register_RESERVED9_array is array (0 .. 564) of aliased Word;
   type ETH_Register_RESERVED10_array is array (0 .. 7) of aliased Word;
   type ETH_Register is record
      MACCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:388
      MACFFR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:389
      MACHTHR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:390
      MACHTLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:391
      MACMIIAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:392
      MACMIIDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:393
      MACFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:394
      MACVLANTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:395
      RESERVED0 : aliased ETH_Register_RESERVED0_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:396
      MACRWUFFR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:397
      MACPMTCSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:398
      RESERVED1 : aliased ETH_Register_RESERVED1_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:399
      MACSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:400
      MACIMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:401
      MACA0HR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:402
      MACA0LR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:403
      MACA1HR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:404
      MACA1LR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:405
      MACA2HR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:406
      MACA2LR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:407
      MACA3HR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:408
      MACA3LR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:409
      RESERVED2 : aliased ETH_Register_RESERVED2_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:410
      MMCCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:411
      MMCRIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:412
      MMCTIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:413
      MMCRIMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:414
      MMCTIMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:415
      RESERVED3 : aliased ETH_Register_RESERVED3_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:416
      MMCTGFSCCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:417
      MMCTGFMSCCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:418
      RESERVED4 : aliased ETH_Register_RESERVED4_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:419
      MMCTGFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:420
      RESERVED5 : aliased ETH_Register_RESERVED5_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:421
      MMCRFCECR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:422
      MMCRFAECR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:423
      RESERVED6 : aliased ETH_Register_RESERVED6_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:424
      MMCRGUFCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:425
      RESERVED7 : aliased ETH_Register_RESERVED7_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:426
      PTPTSCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:427
      PTPSSIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:428
      PTPTSHR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:429
      PTPTSLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:430
      PTPTSHUR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:431
      PTPTSLUR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:432
      PTPTSAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:433
      PTPTTHR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:434
      PTPTTLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:435
      RESERVED8 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:436
      PTPTSSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:437
      RESERVED9 : aliased ETH_Register_RESERVED9_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:438
      DMABMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:439
      DMATPDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:440
      DMARPDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:441
      DMARDLAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:442
      DMATDLAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:443
      DMASR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:444
      DMAOMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:445
      DMAIER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:446
      DMAMFBOCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:447
      DMARSWTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:448
      RESERVED10 : aliased ETH_Register_RESERVED10_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:449
      DMACHTDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:450
      DMACHRDR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:451
      DMACHTBAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:452
      DMACHRBAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:453
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      ETH_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:454
   subtype ETH_TypeDef is ETH_Register;

   ETH : ETH_Register with
      Volatile,
      Address => System'To_Address (ETH_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                Ethernet MAC Registers bits definitions                     */
-- /*                                                                            */
-- /******************************************************************************/
-- /* Bit definition for Ethernet MAC Control Register register */
  ETH_MACCR_WD      :constant word :=16#00800000#; -- /* Watchdog disable */
  ETH_MACCR_JD      :constant word :=16#00400000#; -- /* Jabber disable */
  ETH_MACCR_IFG     :constant word :=16#000E0000#; -- /* Inter-frame gap */
  ETH_MACCR_IFG_96Bit     :constant word :=16#00000000#; -- /* Minimum IFG between frames during transmission is 96Bit */
    ETH_MACCR_IFG_88Bit     :constant word :=16#00020000#; -- /* Minimum IFG between frames during transmission is 88Bit */
    ETH_MACCR_IFG_80Bit     :constant word :=16#00040000#; -- /* Minimum IFG between frames during transmission is 80Bit */
    ETH_MACCR_IFG_72Bit     :constant word :=16#00060000#; -- /* Minimum IFG between frames during transmission is 72Bit */
    ETH_MACCR_IFG_64Bit     :constant word :=16#00080000#; -- /* Minimum IFG between frames during transmission is 64Bit */        
    ETH_MACCR_IFG_56Bit     :constant word :=16#000A0000#; -- /* Minimum IFG between frames during transmission is 56Bit */
    ETH_MACCR_IFG_48Bit     :constant word :=16#000C0000#; -- /* Minimum IFG between frames during transmission is 48Bit */
    ETH_MACCR_IFG_40Bit     :constant word :=16#000E0000#; -- /* Minimum IFG between frames during transmission is 40Bit */              
  ETH_MACCR_CSD     :constant word :=16#00010000#; -- /* Carrier sense disable (during transmission) */
  ETH_MACCR_FES     :constant word :=16#00004000#; -- /* Fast ethernet speed */
  ETH_MACCR_ROD     :constant word :=16#00002000#; -- /* Receive own disable */
  ETH_MACCR_LM      :constant word :=16#00001000#; -- /* loopback mode */
  ETH_MACCR_DM      :constant word :=16#00000800#; -- /* Duplex mode */
  ETH_MACCR_IPCO    :constant word :=16#00000400#; -- /* IP Checksum offload */
  ETH_MACCR_RD      :constant word :=16#00000200#; -- /* Retry disable */
  ETH_MACCR_APCS    :constant word :=16#00000080#; -- /* Automatic Pad/CRC stripping */
  ETH_MACCR_BL      :constant word :=16#00000060#; -- /* Back-off limit: random integer number (r) of slot time delays before rescheduling
                                                   --    a transmission attempt during retries after a collision: 0 =< r <2^k */
    ETH_MACCR_BL_10    :constant word :=16#00000000#; -- /* k = min (n, 10) */
    ETH_MACCR_BL_8     :constant word :=16#00000020#; -- /* k = min (n, 8) */
    ETH_MACCR_BL_4     :constant word :=16#00000040#; -- /* k = min (n, 4) */
    ETH_MACCR_BL_1     :constant word :=16#00000060#; -- /* k = min (n, 1) */ 
  ETH_MACCR_DC      :constant word :=16#00000010#; -- /* Defferal check */
  ETH_MACCR_TE      :constant word :=16#00000008#; -- /* Transmitter enable */
  ETH_MACCR_RE      :constant word :=16#00000004#; -- /* Receiver enable */

-- /* Bit definition for Ethernet MAC Frame Filter Register */
  ETH_MACFFR_RA     :constant word :=16#80000000#; -- /* Receive all */ 
  ETH_MACFFR_HPF    :constant word :=16#00000400#; -- /* Hash or perfect filter */ 
  ETH_MACFFR_SAF    :constant word :=16#00000200#; -- /* Source address filter enable */ 
  ETH_MACFFR_SAIF   :constant word :=16#00000100#; -- /* SA inverse filtering */ 
  ETH_MACFFR_PCF    :constant word :=16#000000C0#; -- /* Pass control frames: 3 cases */
    ETH_MACFFR_PCF_BlockAll                :constant word :=16#00000040#; -- /* MAC filters all control frames from reaching the application */
    ETH_MACFFR_PCF_ForwardAll              :constant word :=16#00000080#; -- /* MAC forwards all control frames to application even if they fail the Address Filter */
    ETH_MACFFR_PCF_ForwardPassedAddrFilter :constant word :=16#000000C0#; -- /* MAC forwards control frames that pass the Address Filter. */ 
  ETH_MACFFR_BFD    :constant word :=16#00000020#; -- /* Broadcast frame disable */ 
  ETH_MACFFR_PAM    :constant word :=16#00000010#; -- /* Pass all mutlicast */ 
  ETH_MACFFR_DAIF   :constant word :=16#00000008#; -- /* DA Inverse filtering */ 
  ETH_MACFFR_HM     :constant word :=16#00000004#; -- /* Hash multicast */ 
  ETH_MACFFR_HU    :constant word :=16#00000002#; -- /* Hash unicast */
  ETH_MACFFR_PM     :constant word :=16#00000001#; -- /* Promiscuous mode */

-- /* Bit definition for Ethernet MAC Hash Table High Register */
  ETH_MACHTHR_HTH   :constant word :=16#FFFFFFFF#; -- /* Hash table high */

-- /* Bit definition for Ethernet MAC Hash Table Low Register */
  ETH_MACHTLR_HTL   :constant word :=16#FFFFFFFF#; -- /* Hash table low */

-- /* Bit definition for Ethernet MAC MII Address Register */
  ETH_MACMIIAR_PA   :constant word :=16#0000F800#; -- /* Physical layer address */ 
  ETH_MACMIIAR_MR   :constant word :=16#000007C0#; -- /* MII register in the selected PHY */ 
  ETH_MACMIIAR_CR   :constant word :=16#0000001C#; -- /* CR clock range: 6 cases */ 
    ETH_MACMIIAR_CR_Div42   :constant word :=16#00000000#; -- /* HCLK:60-100 MHz; MDC clock= HCLK/42 */
    ETH_MACMIIAR_CR_Div62   :constant word :=16#00000004#; -- /* HCLK:100-150 MHz; MDC clock= HCLK/62 */
    ETH_MACMIIAR_CR_Div16   :constant word :=16#00000008#; -- /* HCLK:20-35 MHz; MDC clock= HCLK/16 */
    ETH_MACMIIAR_CR_Div26   :constant word :=16#0000000C#; -- /* HCLK:35-60 MHz; MDC clock= HCLK/26 */
    ETH_MACMIIAR_CR_Div102  :constant word :=16#00000010#; -- /* HCLK:150-168 MHz; MDC clock= HCLK/102 */  
  ETH_MACMIIAR_MW   :constant word :=16#00000002#; -- /* MII write */ 
  ETH_MACMIIAR_MB   :constant word :=16#00000001#; -- /* MII busy */ 
  
-- /* Bit definition for Ethernet MAC MII Data Register */
  ETH_MACMIIDR_MD   :constant word :=16#0000FFFF#; -- /* MII data: read/write data from/to PHY */

-- /* Bit definition for Ethernet MAC Flow Control Register */
  ETH_MACFCR_PT     :constant word :=16#FFFF0000#; -- /* Pause time */
  ETH_MACFCR_ZQPD   :constant word :=16#00000080#; -- /* Zero-quanta pause disable */
  ETH_MACFCR_PLT    :constant word :=16#00000030#; -- /* Pause low threshold: 4 cases */
    ETH_MACFCR_PLT_Minus4   :constant word :=16#00000000#; -- /* Pause time minus 4 slot times */
    ETH_MACFCR_PLT_Minus28  :constant word :=16#00000010#; -- /* Pause time minus 28 slot times */
    ETH_MACFCR_PLT_Minus144 :constant word :=16#00000020#; -- /* Pause time minus 144 slot times */
    ETH_MACFCR_PLT_Minus256 :constant word :=16#00000030#; -- /* Pause time minus 256 slot times */      
  ETH_MACFCR_UPFD   :constant word :=16#00000008#; -- /* Unicast pause frame detect */
  ETH_MACFCR_RFCE   :constant word :=16#00000004#; -- /* Receive flow control enable */
  ETH_MACFCR_TFCE   :constant word :=16#00000002#; -- /* Transmit flow control enable */
  ETH_MACFCR_FCBBPA :constant word :=16#00000001#; -- /* Flow control busy/backpressure activate */

-- /* Bit definition for Ethernet MAC VLAN Tag Register */
  ETH_MACVLANTR_VLANTC :constant word :=16#00010000#; -- /* 12-bit VLAN tag comparison */
  ETH_MACVLANTR_VLANTI :constant word :=16#0000FFFF#; -- /* VLAN tag identifier (for receive frames) */

-- /* Bit definition for Ethernet MAC Remote Wake-UpFrame Filter Register */ 
  ETH_MACRWUFFR_D   :constant word :=16#FFFFFFFF#; -- /* Wake-up frame filter register data */
-- /* Eight sequential Writes to this address (offset :constant word :=16#28) will write all Wake-UpFrame Filter Registers.
   --Eight sequential Reads from this address (offset :constant word :=16#28) will read all Wake-UpFrame Filter Registers. */
-- /* Wake-UpFrame Filter Reg0 : Filter 0 Byte Mask
--     Wake-UpFrame Filter Reg1 : Filter 1 Byte Mask
--     Wake-UpFrame Filter Reg2 : Filter 2 Byte Mask
--     Wake-UpFrame Filter Reg3 : Filter 3 Byte Mask
--     Wake-UpFrame Filter Reg4 : RSVD - Filter3 Command - RSVD - Filter2 Command - 
--                                RSVD - Filter1 Command - RSVD - Filter0 Command
--     Wake-UpFrame Filter Re5 : Filter3 Offset - Filter2 Offset - Filter1 Offset - Filter0 Offset
--     Wake-UpFrame Filter Re6 : Filter1 CRC16 - Filter0 CRC16
--     Wake-UpFrame Filter Re7 : Filter3 CRC16 - Filter2 CRC16 */

-- /* Bit definition for Ethernet MAC PMT Control and Status Register */ 
  ETH_MACPMTCSR_WFFRPR :constant word :=16#80000000#; -- /* Wake-Up Frame Filter Register Pointer Reset */
  ETH_MACPMTCSR_GU    :constant word :=16#00000200#; -- /* Global Unicast */
  ETH_MACPMTCSR_WFR    :constant word :=16#00000040#; -- /* Wake-Up Frame Received */
  ETH_MACPMTCSR_MPR    :constant word :=16#00000020#; -- /* Magic Packet Received */
  ETH_MACPMTCSR_WFE    :constant word :=16#00000004#; -- /* Wake-Up Frame Enable */
  ETH_MACPMTCSR_MPE    :constant word :=16#00000002#; -- /* Magic Packet Enable */
  ETH_MACPMTCSR_PD     :constant word :=16#00000001#; -- /* Power Down */

-- /* Bit definition for Ethernet MAC Status Register */
  ETH_MACSR_TSTS      :constant word :=16#00000200#; -- /* Time stamp trigger status */
  ETH_MACSR_MMCTS     :constant word :=16#00000040#; -- /* MMC transmit status */
  ETH_MACSR_MMMCRS    :constant word :=16#00000020#; -- /* MMC receive status */
  ETH_MACSR_MMCS      :constant word :=16#00000010#; -- /* MMC status */
  ETH_MACSR_PMTS      :constant word :=16#00000008#; -- /* PMT status */

-- /* Bit definition for Ethernet MAC Interrupt Mask Register */
  ETH_MACIMR_TSTIM     :constant word :=16#00000200#; -- /* Time stamp trigger interrupt mask */
  ETH_MACIMR_PMTIM     :constant word :=16#00000008#; -- /* PMT interrupt mask */

-- /* Bit definition for Ethernet MAC Address0 High Register */
  ETH_MACA0HR_MACA0H   :constant word :=16#0000FFFF#; -- /* MAC address0 high */

-- /* Bit definition for Ethernet MAC Address0 Low Register */
  ETH_MACA0LR_MACA0L   :constant word :=16#FFFFFFFF#; -- /* MAC address0 low */

-- /* Bit definition for Ethernet MAC Address1 High Register */
  ETH_MACA1HR_AE       :constant word :=16#80000000#; -- /* Address enable */
  ETH_MACA1HR_SA       :constant word :=16#40000000#; -- /* Source address */
  ETH_MACA1HR_MBC      :constant word :=16#3F000000#; -- /* Mask byte control: bits to mask for comparison of the MAC Address bytes */
    ETH_MACA1HR_MBC_HBits15_8    :constant word :=16#20000000#; -- /* Mask MAC Address high reg bits [15:8] */
    ETH_MACA1HR_MBC_HBits7_0     :constant word :=16#10000000#; -- /* Mask MAC Address high reg bits [7:0] */
    ETH_MACA1HR_MBC_LBits31_24   :constant word :=16#08000000#; -- /* Mask MAC Address low reg bits [31:24] */
    ETH_MACA1HR_MBC_LBits23_16   :constant word :=16#04000000#; -- /* Mask MAC Address low reg bits [23:16] */
    ETH_MACA1HR_MBC_LBits15_8    :constant word :=16#02000000#; -- /* Mask MAC Address low reg bits [15:8] */
    ETH_MACA1HR_MBC_LBits7_0     :constant word :=16#01000000#; -- /* Mask MAC Address low reg bits [7:0] */ 
  ETH_MACA1HR_MACA1H   :constant word :=16#0000FFFF#; -- /* MAC address1 high */

-- /* Bit definition for Ethernet MAC Address1 Low Register */
  ETH_MACA1LR_MACA1L   :constant word :=16#FFFFFFFF#; -- /* MAC address1 low */

-- /* Bit definition for Ethernet MAC Address2 High Register */
  ETH_MACA2HR_AE       :constant word :=16#80000000#; -- /* Address enable */
  ETH_MACA2HR_SA       :constant word :=16#40000000#; -- /* Source address */
  ETH_MACA2HR_MBC      :constant word :=16#3F000000#; -- /* Mask byte control */
    ETH_MACA2HR_MBC_HBits15_8    :constant word :=16#20000000#; -- /* Mask MAC Address high reg bits [15:8] */
    ETH_MACA2HR_MBC_HBits7_0     :constant word :=16#10000000#; -- /* Mask MAC Address high reg bits [7:0] */
    ETH_MACA2HR_MBC_LBits31_24   :constant word :=16#08000000#; -- /* Mask MAC Address low reg bits [31:24] */
    ETH_MACA2HR_MBC_LBits23_16   :constant word :=16#04000000#; -- /* Mask MAC Address low reg bits [23:16] */
    ETH_MACA2HR_MBC_LBits15_8    :constant word :=16#02000000#; -- /* Mask MAC Address low reg bits [15:8] */
    ETH_MACA2HR_MBC_LBits7_0     :constant word :=16#01000000#; -- /* Mask MAC Address low reg bits [70] */
  ETH_MACA2HR_MACA2H   :constant word :=16#0000FFFF#; -- /* MAC address1 high */

-- /* Bit definition for Ethernet MAC Address2 Low Register */
  ETH_MACA2LR_MACA2L   :constant word :=16#FFFFFFFF#; -- /* MAC address2 low */

-- /* Bit definition for Ethernet MAC Address3 High Register */
  ETH_MACA3HR_AE       :constant word :=16#80000000#; -- /* Address enable */
  ETH_MACA3HR_SA       :constant word :=16#40000000#; -- /* Source address */
  ETH_MACA3HR_MBC      :constant word :=16#3F000000#; -- /* Mask byte control */
    ETH_MACA3HR_MBC_HBits15_8    :constant word :=16#20000000#; -- /* Mask MAC Address high reg bits [15:8] */
    ETH_MACA3HR_MBC_HBits7_0     :constant word :=16#10000000#; -- /* Mask MAC Address high reg bits [7:0] */
    ETH_MACA3HR_MBC_LBits31_24   :constant word :=16#08000000#; -- /* Mask MAC Address low reg bits [31:24] */
    ETH_MACA3HR_MBC_LBits23_16   :constant word :=16#04000000#; -- /* Mask MAC Address low reg bits [23:16] */
    ETH_MACA3HR_MBC_LBits15_8    :constant word :=16#02000000#; -- /* Mask MAC Address low reg bits [15:8] */
    ETH_MACA3HR_MBC_LBits7_0     :constant word :=16#01000000#; -- /* Mask MAC Address low reg bits [70] */
  ETH_MACA3HR_MACA3H   :constant word :=16#0000FFFF#; -- /* MAC address3 high */

-- /* Bit definition for Ethernet MAC Address3 Low Register */
  ETH_MACA3LR_MACA3L   :constant word :=16#FFFFFFFF#; -- /* MAC address3 low */

-- /******************************************************************************/
-- /*                Ethernet MMC Registers bits definition                      */
-- /******************************************************************************/

-- /* Bit definition for Ethernet MMC Contol Register */
  ETH_MMCCR_MCFHP      :constant word :=16#00000020#; -- /* MMC counter Full-Half preset */
  ETH_MMCCR_MCP        :constant word :=16#00000010#; -- /* MMC counter preset */
  ETH_MMCCR_MCF        :constant word :=16#00000008#; -- /* MMC Counter Freeze */
  ETH_MMCCR_ROR        :constant word :=16#00000004#; -- /* Reset on Read */
  ETH_MMCCR_CSR        :constant word :=16#00000002#; -- /* Counter Stop Rollover */
  ETH_MMCCR_CR         :constant word :=16#00000001#; -- /* Counters Reset */

-- /* Bit definition for Ethernet MMC Receive Interrupt Register */
  ETH_MMCRIR_RGUFS     :constant word :=16#00020000#; -- /* Set when Rx good unicast frames counter reaches half the maximum value */
  ETH_MMCRIR_RFAES     :constant word :=16#00000040#; -- /* Set when Rx alignment error counter reaches half the maximum value */
  ETH_MMCRIR_RFCES     :constant word :=16#00000020#; -- /* Set when Rx crc error counter reaches half the maximum value */

-- /* Bit definition for Ethernet MMC Transmit Interrupt Register */
  ETH_MMCTIR_TGFS      :constant word :=16#00200000#; -- /* Set when Tx good frame count counter reaches half the maximum value */
  ETH_MMCTIR_TGFMSCS   :constant word :=16#00008000#; -- /* Set when Tx good multi col counter reaches half the maximum value */
  ETH_MMCTIR_TGFSCS    :constant word :=16#00004000#; -- /* Set when Tx good single col counter reaches half the maximum value */

-- /* Bit definition for Ethernet MMC Receive Interrupt Mask Register */
  ETH_MMCRIMR_RGUFM    :constant word :=16#00020000#; -- /* Mask the interrupt when Rx good unicast frames counter reaches half the maximum value */
  ETH_MMCRIMR_RFAEM    :constant word :=16#00000040#; -- /* Mask the interrupt when when Rx alignment error counter reaches half the maximum value */
  ETH_MMCRIMR_RFCEM    :constant word :=16#00000020#; -- /* Mask the interrupt when Rx crc error counter reaches half the maximum value */

-- /* Bit definition for Ethernet MMC Transmit Interrupt Mask Register */
  ETH_MMCTIMR_TGFM     :constant word :=16#00200000#; -- /* Mask the interrupt when Tx good frame count counter reaches half the maximum value */
  ETH_MMCTIMR_TGFMSCM  :constant word :=16#00008000#; -- /* Mask the interrupt when Tx good multi col counter reaches half the maximum value */
  ETH_MMCTIMR_TGFSCM   :constant word :=16#00004000#; -- /* Mask the interrupt when Tx good single col counter reaches half the maximum value */

-- /* Bit definition for Ethernet MMC Transmitted Good Frames after Single Collision Counter Register */
  ETH_MMCTGFSCCR_TGFSCC     :constant word :=16#FFFFFFFF#; -- /* Number of successfully transmitted frames after a single collision in Half-duplex mode. */

-- /* Bit definition for Ethernet MMC Transmitted Good Frames after More than a Single Collision Counter Register */
  ETH_MMCTGFMSCCR_TGFMSCC   :constant word :=16#FFFFFFFF#; -- /* Number of successfully transmitted frames after more than a single collision in Half-duplex mode. */

-- /* Bit definition for Ethernet MMC Transmitted Good Frames Counter Register */
  ETH_MMCTGFCR_TGFC    :constant word :=16#FFFFFFFF#; -- /* Number of good frames transmitted. */

-- /* Bit definition for Ethernet MMC Received Frames with CRC Error Counter Register */
  ETH_MMCRFCECR_RFCEC  :constant word :=16#FFFFFFFF#; -- /* Number of frames received with CRC error. */

-- /* Bit definition for Ethernet MMC Received Frames with Alignement Error Counter Register */
  ETH_MMCRFAECR_RFAEC  :constant word :=16#FFFFFFFF#; -- /* Number of frames received with alignment (dribble) error */

-- /* Bit definition for Ethernet MMC Received Good Unicast Frames Counter Register */
  ETH_MMCRGUFCR_RGUFC  :constant word :=16#FFFFFFFF#; -- /* Number of good unicast frames received. */

-- /******************************************************************************/
-- /*               Ethernet PTP Registers bits definition                       */
-- /******************************************************************************/

-- /* Bit definition for Ethernet PTP Time Stamp Contol Register */
  ETH_PTPTSCR_TSCNT       :constant word :=16#00030000#; -- /* Time stamp clock node type */
  ETH_PTPTSSR_TSSMRME     :constant word :=16#00008000#; -- /* Time stamp snapshot for message relevant to master enable */
  ETH_PTPTSSR_TSSEME      :constant word :=16#00004000#; -- /* Time stamp snapshot for event message enable */
  ETH_PTPTSSR_TSSIPV4FE   :constant word :=16#00002000#; -- /* Time stamp snapshot for IPv4 frames enable */
  ETH_PTPTSSR_TSSIPV6FE   :constant word :=16#00001000#; -- /* Time stamp snapshot for IPv6 frames enable */
  ETH_PTPTSSR_TSSPTPOEFE  :constant word :=16#00000800#; -- /* Time stamp snapshot for PTP over ethernet frames enable */
  ETH_PTPTSSR_TSPTPPSV2E  :constant word :=16#00000400#; -- /* Time stamp PTP packet snooping for version2 format enable */
  ETH_PTPTSSR_TSSSR       :constant word :=16#00000200#; -- /* Time stamp Sub-seconds rollover */
  ETH_PTPTSSR_TSSARFE     :constant word :=16#00000100#; -- /* Time stamp snapshot for all received frames enable */

  ETH_PTPTSCR_TSARU :constant word :=16#00000020#; -- /* Addend register update */
  ETH_PTPTSCR_TSITE    :constant word :=16#00000010#; -- /* Time stamp interrupt trigger enable */
  ETH_PTPTSCR_TSSTU :constant word :=16#00000008#; -- /* Time stamp update */
  ETH_PTPTSCR_TSSTI    :constant word :=16#00000004#; -- /* Time stamp initialize */
  ETH_PTPTSCR_TSFCU :constant word :=16#00000002#; -- /* Time stamp fine or coarse update */
  ETH_PTPTSCR_TSE      :constant word :=16#00000001#; -- /* Time stamp enable */

-- /* Bit definition for Ethernet PTP Sub-Second Increment Register */
  ETH_PTPSSIR_STSSI    :constant word :=16#000000FF#; -- /* System time Sub-second increment value */

-- /* Bit definition for Ethernet PTP Time Stamp High Register */
  ETH_PTPTSHR_STS      :constant word :=16#FFFFFFFF#; -- /* System Time second */

-- /* Bit definition for Ethernet PTP Time Stamp Low Register */
  ETH_PTPTSLR_STPNS    :constant word :=16#80000000#; -- /* System Time Positive or negative time */
  ETH_PTPTSLR_STSS     :constant word :=16#7FFFFFFF#; -- /* System Time sub-seconds */

-- /* Bit definition for Ethernet PTP Time Stamp High Update Register */
  ETH_PTPTSHUR_TSUS    :constant word :=16#FFFFFFFF#; -- /* Time stamp update seconds */

-- /* Bit definition for Ethernet PTP Time Stamp Low Update Register */
  ETH_PTPTSLUR_TSUPNS  :constant word :=16#80000000#; -- /* Time stamp update Positive or negative time */
  ETH_PTPTSLUR_TSUSS   :constant word :=16#7FFFFFFF#; -- /* Time stamp update sub-seconds */

-- /* Bit definition for Ethernet PTP Time Stamp Addend Register */
  ETH_PTPTSAR_TSA      :constant word :=16#FFFFFFFF#; -- /* Time stamp addend */

-- /* Bit definition for Ethernet PTP Target Time High Register */
  ETH_PTPTTHR_TTSH     :constant word :=16#FFFFFFFF#; -- /* Target time stamp high */

-- /* Bit definition for Ethernet PTP Target Time Low Register */
  ETH_PTPTTLR_TTSL     :constant word :=16#FFFFFFFF#; -- /* Target time stamp low */

-- /* Bit definition for Ethernet PTP Time Stamp Status Register */
  ETH_PTPTSSR_TSTTR    :constant word :=16#00000020#; -- /* Time stamp target time reached */
  ETH_PTPTSSR_TSSO     :constant word :=16#00000010#; -- /* Time stamp seconds overflow */

-- /******************************************************************************/
-- /*                 Ethernet DMA Registers bits definition                     */
-- /******************************************************************************/

-- /* Bit definition for Ethernet DMA Bus Mode Register */
  ETH_DMABMR_AAB       :constant word :=16#02000000#; -- /* Address-Aligned beats */
  ETH_DMABMR_FPM        :constant word :=16#01000000#; -- /* 4xPBL mode */
  ETH_DMABMR_USP       :constant word :=16#00800000#; -- /* Use separate PBL */
  ETH_DMABMR_RDP       :constant word :=16#007E0000#; -- /* RxDMA PBL */
    ETH_DMABMR_RDP_1Beat    :constant word :=16#00020000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 1 */
    ETH_DMABMR_RDP_2Beat    :constant word :=16#00040000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 2 */
    ETH_DMABMR_RDP_4Beat    :constant word :=16#00080000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 4 */
    ETH_DMABMR_RDP_8Beat    :constant word :=16#00100000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 8 */
    ETH_DMABMR_RDP_16Beat   :constant word :=16#00200000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 16 */
    ETH_DMABMR_RDP_32Beat   :constant word :=16#00400000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 32 */                
    ETH_DMABMR_RDP_4xPBL_4Beat   :constant word :=16#01020000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 4 */
    ETH_DMABMR_RDP_4xPBL_8Beat   :constant word :=16#01040000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 8 */
    ETH_DMABMR_RDP_4xPBL_16Beat  :constant word :=16#01080000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 16 */
    ETH_DMABMR_RDP_4xPBL_32Beat  :constant word :=16#01100000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 32 */
    ETH_DMABMR_RDP_4xPBL_64Beat  :constant word :=16#01200000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 64 */
    ETH_DMABMR_RDP_4xPBL_128Beat :constant word :=16#01400000#; -- /* maximum number of beats to be transferred in one RxDMA transaction is 128 */  
  ETH_DMABMR_FB        :constant word :=16#00010000#; -- /* Fixed Burst */
  ETH_DMABMR_RTPR      :constant word :=16#0000C000#; -- /* Rx Tx priority ratio */
    ETH_DMABMR_RTPR_1_1     :constant word :=16#00000000#; -- /* Rx Tx priority ratio */
    ETH_DMABMR_RTPR_2_1     :constant word :=16#00004000#; -- /* Rx Tx priority ratio */
    ETH_DMABMR_RTPR_3_1     :constant word :=16#00008000#; -- /* Rx Tx priority ratio */
    ETH_DMABMR_RTPR_4_1     :constant word :=16#0000C000#; -- /* Rx Tx priority ratio */  
  ETH_DMABMR_PBL    :constant word :=16#00003F00#; -- /* Programmable burst length */
    ETH_DMABMR_PBL_1Beat    :constant word :=16#00000100#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 1 */
    ETH_DMABMR_PBL_2Beat    :constant word :=16#00000200#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 2 */
    ETH_DMABMR_PBL_4Beat    :constant word :=16#00000400#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 4 */
    ETH_DMABMR_PBL_8Beat    :constant word :=16#00000800#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 8 */
    ETH_DMABMR_PBL_16Beat   :constant word :=16#00001000#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 16 */
    ETH_DMABMR_PBL_32Beat   :constant word :=16#00002000#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 32 */                
    ETH_DMABMR_PBL_4xPBL_4Beat   :constant word :=16#01000100#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 4 */
    ETH_DMABMR_PBL_4xPBL_8Beat   :constant word :=16#01000200#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 8 */
    ETH_DMABMR_PBL_4xPBL_16Beat  :constant word :=16#01000400#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 16 */
    ETH_DMABMR_PBL_4xPBL_32Beat  :constant word :=16#01000800#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 32 */
    ETH_DMABMR_PBL_4xPBL_64Beat  :constant word :=16#01001000#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 64 */
    ETH_DMABMR_PBL_4xPBL_128Beat :constant word :=16#01002000#; -- /* maximum number of beats to be transferred in one TxDMA (or both) transaction is 128 */
  ETH_DMABMR_EDE       :constant word :=16#00000080#; -- /* Enhanced Descriptor Enable */
  ETH_DMABMR_DSL       :constant word :=16#0000007C#; -- /* Descriptor Skip Length */
  ETH_DMABMR_DA        :constant word :=16#00000002#; -- /* DMA arbitration scheme */
  ETH_DMABMR_SR        :constant word :=16#00000001#; -- /* Software reset */

-- /* Bit definition for Ethernet DMA Transmit Poll Demand Register */
  ETH_DMATPDR_TPD      :constant word :=16#FFFFFFFF#; -- /* Transmit poll demand */

-- /* Bit definition for Ethernet DMA Receive Poll Demand Register */
  ETH_DMARPDR_RPD      :constant word :=16#FFFFFFFF#; -- /* Receive poll demand  */

-- /* Bit definition for Ethernet DMA Receive Descriptor List Address Register */
  ETH_DMARDLAR_SRL     :constant word :=16#FFFFFFFF#; -- /* Start of receive list */

-- /* Bit definition for Ethernet DMA Transmit Descriptor List Address Register */
  ETH_DMATDLAR_STL     :constant word :=16#FFFFFFFF#; -- /* Start of transmit list */

-- /* Bit definition for Ethernet DMA Status Register */
  ETH_DMASR_TSTS       :constant word :=16#20000000#; -- /* Time-stamp trigger status */
  ETH_DMASR_PMTS       :constant word :=16#10000000#; -- /* PMT status */
  ETH_DMASR_MMCS       :constant word :=16#08000000#; -- /* MMC status */
  ETH_DMASR_EBS        :constant word :=16#03800000#; -- /* Error bits status */
  -- /* combination with EBS[2:0] for GetFlagStatus function */
    ETH_DMASR_EBS_DescAccess      :constant word :=16#02000000#; -- /* Error bits 0-data buffer, 1-desc. access */
    ETH_DMASR_EBS_ReadTransf      :constant word :=16#01000000#; -- /* Error bits 0-write trnsf, 1-read transfr */
    ETH_DMASR_EBS_DataTransfTx    :constant word :=16#00800000#; -- /* Error bits 0-Rx DMA, 1-Tx DMA */
  ETH_DMASR_TPS         :constant word :=16#00700000#; -- /* Transmit process state */
    ETH_DMASR_TPS_Stopped         :constant word :=16#00000000#; -- /* Stopped - Reset or Stop Tx Command issued  */
    ETH_DMASR_TPS_Fetching        :constant word :=16#00100000#; -- /* Running - fetching the Tx descriptor */
    ETH_DMASR_TPS_Waiting         :constant word :=16#00200000#; -- /* Running - waiting for status */
    ETH_DMASR_TPS_Reading         :constant word :=16#00300000#; -- /* Running - reading the data from host memory */
    ETH_DMASR_TPS_Suspended       :constant word :=16#00600000#; -- /* Suspended - Tx Descriptor unavailabe */
    ETH_DMASR_TPS_Closing         :constant word :=16#00700000#; -- /* Running - closing Rx descriptor */
  ETH_DMASR_RPS         :constant word :=16#000E0000#; -- /* Receive process state */
    ETH_DMASR_RPS_Stopped         :constant word :=16#00000000#; -- /* Stopped - Reset or Stop Rx Command issued */
    ETH_DMASR_RPS_Fetching        :constant word :=16#00020000#; -- /* Running - fetching the Rx descriptor */
    ETH_DMASR_RPS_Waiting         :constant word :=16#00060000#; -- /* Running - waiting for packet */
    ETH_DMASR_RPS_Suspended       :constant word :=16#00080000#; -- /* Suspended - Rx Descriptor unavailable */
    ETH_DMASR_RPS_Closing         :constant word :=16#000A0000#; -- /* Running - closing descriptor */
    ETH_DMASR_RPS_Queuing         :constant word :=16#000E0000#; -- /* Running - queuing the recieve frame into host memory */
  ETH_DMASR_NIS        :constant word :=16#00010000#; -- /* Normal interrupt summary */
  ETH_DMASR_AIS        :constant word :=16#00008000#; -- /* Abnormal interrupt summary */
  ETH_DMASR_ERS        :constant word :=16#00004000#; -- /* Early receive status */
  ETH_DMASR_FBES       :constant word :=16#00002000#; -- /* Fatal bus error status */
  ETH_DMASR_ETS        :constant word :=16#00000400#; -- /* Early transmit status */
  ETH_DMASR_RWTS       :constant word :=16#00000200#; -- /* Receive watchdog timeout status */
  ETH_DMASR_RPSS       :constant word :=16#00000100#; -- /* Receive process stopped status */
  ETH_DMASR_RBUS       :constant word :=16#00000080#; -- /* Receive buffer unavailable status */
  ETH_DMASR_RS         :constant word :=16#00000040#; -- /* Receive status */
  ETH_DMASR_TUS        :constant word :=16#00000020#; -- /* Transmit underflow status */
  ETH_DMASR_ROS        :constant word :=16#00000010#; -- /* Receive overflow status */
  ETH_DMASR_TJTS       :constant word :=16#00000008#; -- /* Transmit jabber timeout status */
  ETH_DMASR_TBUS       :constant word :=16#00000004#; -- /* Transmit buffer unavailable status */
  ETH_DMASR_TPSS       :constant word :=16#00000002#; -- /* Transmit process stopped status */
  ETH_DMASR_TS         :constant word :=16#00000001#; -- /* Transmit status */

-- /* Bit definition for Ethernet DMA Operation Mode Register */
  ETH_DMAOMR_DTCEFD    :constant word :=16#04000000#; -- /* Disable Dropping of TCP/IP checksum error frames */
  ETH_DMAOMR_RSF       :constant word :=16#02000000#; -- /* Receive store and forward */
  ETH_DMAOMR_DFRF      :constant word :=16#01000000#; -- /* Disable flushing of received frames */
  ETH_DMAOMR_TSF       :constant word :=16#00200000#; -- /* Transmit store and forward */
  ETH_DMAOMR_FTF       :constant word :=16#00100000#; -- /* Flush transmit FIFO */
  ETH_DMAOMR_TTC       :constant word :=16#0001C000#; -- /* Transmit threshold control */
    ETH_DMAOMR_TTC_64Bytes       :constant word :=16#00000000#; -- /* threshold level of the MTL Transmit FIFO is 64 Bytes */
    ETH_DMAOMR_TTC_128Bytes      :constant word :=16#00004000#; -- /* threshold level of the MTL Transmit FIFO is 128 Bytes */
    ETH_DMAOMR_TTC_192Bytes      :constant word :=16#00008000#; -- /* threshold level of the MTL Transmit FIFO is 192 Bytes */
    ETH_DMAOMR_TTC_256Bytes      :constant word :=16#0000C000#; -- /* threshold level of the MTL Transmit FIFO is 256 Bytes */
    ETH_DMAOMR_TTC_40Bytes       :constant word :=16#00010000#; -- /* threshold level of the MTL Transmit FIFO is 40 Bytes */
    ETH_DMAOMR_TTC_32Bytes       :constant word :=16#00014000#; -- /* threshold level of the MTL Transmit FIFO is 32 Bytes */
    ETH_DMAOMR_TTC_24Bytes       :constant word :=16#00018000#; -- /* threshold level of the MTL Transmit FIFO is 24 Bytes */
    ETH_DMAOMR_TTC_16Bytes       :constant word :=16#0001C000#; -- /* threshold level of the MTL Transmit FIFO is 16 Bytes */
  ETH_DMAOMR_ST        :constant word :=16#00002000#; -- /* Start/stop transmission command */
  ETH_DMAOMR_FEF       :constant word :=16#00000080#; -- /* Forward error frames */
  ETH_DMAOMR_FUGF      :constant word :=16#00000040#; -- /* Forward undersized good frames */
  ETH_DMAOMR_RTC       :constant word :=16#00000018#; -- /* receive threshold control */
    ETH_DMAOMR_RTC_64Bytes       :constant word :=16#00000000#; -- /* threshold level of the MTL Receive FIFO is 64 Bytes */
    ETH_DMAOMR_RTC_32Bytes       :constant word :=16#00000008#; -- /* threshold level of the MTL Receive FIFO is 32 Bytes */
    ETH_DMAOMR_RTC_96Bytes       :constant word :=16#00000010#; -- /* threshold level of the MTL Receive FIFO is 96 Bytes */
    ETH_DMAOMR_RTC_128Bytes      :constant word :=16#00000018#; -- /* threshold level of the MTL Receive FIFO is 128 Bytes */
  ETH_DMAOMR_OSF       :constant word :=16#00000004#; -- /* operate on second frame */
  ETH_DMAOMR_SR        :constant word :=16#00000002#; -- /* Start/stop receive */

-- /* Bit definition for Ethernet DMA Interrupt Enable Register */
  ETH_DMAIER_NISE      :constant word :=16#00010000#; -- /* Normal interrupt summary enable */
  ETH_DMAIER_AISE      :constant word :=16#00008000#; -- /* Abnormal interrupt summary enable */
  ETH_DMAIER_ERIE      :constant word :=16#00004000#; -- /* Early receive interrupt enable */
  ETH_DMAIER_FBEIE     :constant word :=16#00002000#; -- /* Fatal bus error interrupt enable */
  ETH_DMAIER_ETIE      :constant word :=16#00000400#; -- /* Early transmit interrupt enable */
  ETH_DMAIER_RWTIE     :constant word :=16#00000200#; -- /* Receive watchdog timeout interrupt enable */
  ETH_DMAIER_RPSIE     :constant word :=16#00000100#; -- /* Receive process stopped interrupt enable */
  ETH_DMAIER_RBUIE     :constant word :=16#00000080#; -- /* Receive buffer unavailable interrupt enable */
  ETH_DMAIER_RIE       :constant word :=16#00000040#; -- /* Receive interrupt enable */
  ETH_DMAIER_TUIE      :constant word :=16#00000020#; -- /* Transmit Underflow interrupt enable */
  ETH_DMAIER_ROIE      :constant word :=16#00000010#; -- /* Receive Overflow interrupt enable */
  ETH_DMAIER_TJTIE     :constant word :=16#00000008#; -- /* Transmit jabber timeout interrupt enable */
  ETH_DMAIER_TBUIE     :constant word :=16#00000004#; -- /* Transmit buffer unavailable interrupt enable */
  ETH_DMAIER_TPSIE     :constant word :=16#00000002#; -- /* Transmit process stopped interrupt enable */
  ETH_DMAIER_TIE       :constant word :=16#00000001#; -- /* Transmit interrupt enable */

-- /* Bit definition for Ethernet DMA Missed Frame and Buffer Overflow Counter Register */
  ETH_DMAMFBOCR_OFOC   :constant word :=16#10000000#; -- /* Overflow bit for FIFO overflow counter */
  ETH_DMAMFBOCR_MFA    :constant word :=16#0FFE0000#; -- /* Number of frames missed by the application */
  ETH_DMAMFBOCR_OMFC   :constant word :=16#00010000#; -- /* Overflow bit for missed frame counter */
  ETH_DMAMFBOCR_MFC    :constant word :=16#0000FFFF#; -- /* Number of frames missed by the controller */

-- /* Bit definition for Ethernet DMA Current Host Transmit Descriptor Register */
  ETH_DMACHTDR_HTDAP   :constant word :=16#FFFFFFFF#; -- /* Host transmit descriptor address pointer */

-- /* Bit definition for Ethernet DMA Current Host Receive Descriptor Register */
  ETH_DMACHRDR_HRDAP   :constant word :=16#FFFFFFFF#; -- /* Host receive descriptor address pointer */

-- /* Bit definition for Ethernet DMA Current Host Transmit Buffer Address Register */
  ETH_DMACHTBAR_HTBAP  :constant word :=16#FFFFFFFF#; -- /* Host transmit buffer address pointer */

-- /* Bit definition for Ethernet DMA Current Host Receive Buffer Address Register */
  ETH_DMACHRBAR_HRBAP  :constant word :=16#FFFFFFFF#; -- /* Host receive buffer address pointer */


end stm32f407.registers.eth;
