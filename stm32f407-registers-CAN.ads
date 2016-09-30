pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.CAN is

  --*
   --  * @brief Controller Area Network TxMailBox
   --

  --!< CAN TX mailbox identifier register
  --!< CAN mailbox data length control and time stamp register
  --!< CAN mailbox data low register
  --!< CAN mailbox data high register
   type CAN_TxMailBox_Register is record
      TIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:235
      TDTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:236
      TDLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:237
      TDHR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:238
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      CAN_TxMailBox_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:239
   subtype CAN_TxMailBox_TypeDef is CAN_TxMailBox_Register;
  --*
   --  * @brief Controller Area Network FIFOMailBox
   --

  --!< CAN receive FIFO mailbox identifier register
  --!< CAN receive FIFO mailbox data length control and time stamp register
  --!< CAN receive FIFO mailbox data low register
  --!< CAN receive FIFO mailbox data high register
   type CAN_FIFOMailBox_Register is record
      RIR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:247
      RDTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:248
      RDLR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:249
      RDHR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:250
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      CAN_FIFOMailBox_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:251
   subtype CAN_FIFOMailBox_TypeDef is CAN_FIFOMailBox_Register;
  --*
   --  * @brief Controller Area Network FilterRegister
   --

  --!< CAN Filter bank register 1
  --!< CAN Filter bank register 1
   type CAN_FilterRegister_Register is record
      FR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:259
      FR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:260
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      CAN_FilterRegister_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:261
   subtype CAN_FilterRegister_TypeDef is CAN_FilterRegister_Register;
  --*
   --  * @brief Controller Area Network
   --

  --!< CAN master control register,         Address offset: 16#00
  --!< CAN master status register,          Address offset: 16#04
  --!< CAN transmit status register,        Address offset: 16#08
  --!< CAN receive FIFO 0 register,         Address offset: 16#0C
  --!< CAN receive FIFO 1 register,         Address offset: 16#10
  --!< CAN interrupt enable register,       Address offset: 16#14
  --!< CAN error status register,           Address offset: 16#18
  --!< CAN bit timing register,             Address offset: 16#1C
  --!< Reserved, 16#020 - 16#17F
  --!< CAN Tx MailBox,                      Address offset: 16#180 - 16#1AC
  --!< CAN FIFO MailBox,                    Address offset: 16#1B0 - 16#1CC
  --!< Reserved, 16#1D0 - 16#1FF
  --!< CAN filter master register,          Address offset: 16#200
  --!< CAN filter mode register,            Address offset: 16#204
  --!< Reserved, 16#208
  --!< CAN filter scale register,           Address offset: 16#20C
  --!< Reserved, 16#210
  --!< CAN filter FIFO assignment register, Address offset: 16#214
  --!< Reserved, 16#218
  --!< CAN filter activation register,      Address offset: 16#21C
  --!< Reserved, 16#220-:constant word :=16#23F
  --!< CAN Filter Register,                 Address offset: 16#240-:constant word :=16#31C
   type CAN_Register_RESERVED0_array is array (0 .. 87) of aliased Word;
   type CAN_Register_sTxMailBox_array is
     array (0 .. 2) of aliased CAN_TxMailBox_Register;
   type CAN_Register_sFIFOMailBox_array is
     array (0 .. 1) of aliased CAN_FIFOMailBox_Register;
   type CAN_Register_RESERVED1_array is array (0 .. 11) of aliased Word;
   type CAN_Register_RESERVED5_array is array (0 .. 7) of aliased Word;
   type CAN_Register_sFilterRegister_array is
     array (0 .. 27) of aliased CAN_FilterRegister_Register;
   type CAN_Register is record
      MCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:269
      MSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:270
      TSR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:271
      RF0R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:272
      RF1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:273
      IER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:274
      ESR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:275
      BTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:276
      RESERVED0 : aliased CAN_Register_RESERVED0_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:277
      sTxMailBox : aliased CAN_Register_sTxMailBox_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:278
      sFIFOMailBox : aliased CAN_Register_sFIFOMailBox_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:279
      RESERVED1 : aliased CAN_Register_RESERVED1_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:280
      FMR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:281
      FM1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:282
      RESERVED2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:283
      FS1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:284
      RESERVED3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:285
      FFA1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:286
      RESERVED4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:287
      FA1R : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:288
      RESERVED5 : aliased CAN_Register_RESERVED5_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:289
      sFilterRegister : aliased CAN_Register_sFilterRegister_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:290
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      CAN_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:291
   subtype CAN_TypeDef is CAN_Register;

   CAN1 : CAN_Register with
      Volatile,
      Address => System'To_Address (CAN1_BASE),
      Import;
   CAN2 : CAN_Register with
      Volatile,
      Address => System'To_Address (CAN2_BASE),
      Import;

-- /******************************************************************************/
-- /*                                                                            */
-- /*                         Controller Area Network                            */
-- /*                                                                            */
-- /******************************************************************************/
-- /*!<CAN control and status registers */
-- /*******************  Bit definition for CAN_MCR register  ********************/
   CAN_MCR_INRQ : constant Word :=
     16#00000001#;   -- /*!<Initialization Request */
   CAN_MCR_SLEEP : constant Word :=
     16#00000002#;   -- /*!<Sleep Mode Request */
   CAN_MCR_TXFP : constant Word :=
     16#00000004#;   -- /*!<Transmit FIFO Priority */
   CAN_MCR_RFLM : constant Word :=
     16#00000008#;   -- /*!<Receive FIFO Locked Mode */
   CAN_MCR_NART : constant Word :=
     16#00000010#;   -- /*!<No Automatic Retransmission */
   CAN_MCR_AWUM : constant Word :=
     16#00000020#;   -- /*!<Automatic Wakeup Mode */
   CAN_MCR_ABOM : constant Word :=
     16#00000040#;   -- /*!<Automatic Bus-Off Management */
   CAN_MCR_TTCM : constant Word :=
     16#00000080#;   -- /*!<Time Triggered Communication Mode */
   CAN_MCR_RESET : constant Word :=
     16#00008000#;   -- /*!<bxCAN software master reset */
   CAN_MCR_DBF : constant Word := 16#00010000#;   -- /*!<bxCAN Debug freeze */
-- /*******************  Bit definition for CAN_MSR register  ********************/
   CAN_MSR_INAK : constant Word :=
     16#0001#;       -- /*!<Initialization Acknowledge */
   CAN_MSR_SLAK  : constant Word := 16#0002#;       -- /*!<Sleep Acknowledge */
   CAN_MSR_ERRI  : constant Word := 16#0004#;       -- /*!<Error Interrupt */
   CAN_MSR_WKUI  : constant Word := 16#0008#;       -- /*!<Wakeup Interrupt */
   CAN_MSR_SLAKI : constant Word :=
     16#0010#;       -- /*!<Sleep Acknowledge Interrupt */
   CAN_MSR_TXM  : constant Word := 16#0100#;       -- /*!<Transmit Mode */
   CAN_MSR_RXM  : constant Word := 16#0200#;       -- /*!<Receive Mode */
   CAN_MSR_SAMP : constant Word := 16#0400#;       -- /*!<Last Sample Point */
   CAN_MSR_RX   : constant Word := 16#0800#;       -- /*!<CAN Rx Signal */

-- /*******************  Bit definition for CAN_TSR register  ********************/
   CAN_TSR_RQCP0 : constant Word :=
     16#00000001#;   -- /*!<Request Completed Mailbox0 */
   CAN_TSR_TXOK0 : constant Word :=
     16#00000002#;   -- /*!<Transmission OK of Mailbox0 */
   CAN_TSR_ALST0 : constant Word :=
     16#00000004#;   -- /*!<Arbitration Lost for Mailbox0 */
   CAN_TSR_TERR0 : constant Word :=
     16#00000008#;   -- /*!<Transmission Error of Mailbox0 */
   CAN_TSR_ABRQ0 : constant Word :=
     16#00000080#;   -- /*!<Abort Request for Mailbox0 */
   CAN_TSR_RQCP1 : constant Word :=
     16#00000100#;   -- /*!<Request Completed Mailbox1 */
   CAN_TSR_TXOK1 : constant Word :=
     16#00000200#;   -- /*!<Transmission OK of Mailbox1 */
   CAN_TSR_ALST1 : constant Word :=
     16#00000400#;   -- /*!<Arbitration Lost for Mailbox1 */
   CAN_TSR_TERR1 : constant Word :=
     16#00000800#;   -- /*!<Transmission Error of Mailbox1 */
   CAN_TSR_ABRQ1 : constant Word :=
     16#00008000#;   -- /*!<Abort Request for Mailbox 1 */
   CAN_TSR_RQCP2 : constant Word :=
     16#00010000#;   -- /*!<Request Completed Mailbox2 */
   CAN_TSR_TXOK2 : constant Word :=
     16#00020000#;   -- /*!<Transmission OK of Mailbox 2 */
   CAN_TSR_ALST2 : constant Word :=
     16#00040000#;   -- /*!<Arbitration Lost for mailbox 2 */
   CAN_TSR_TERR2 : constant Word :=
     16#00080000#;   -- /*!<Transmission Error of Mailbox 2 */
   CAN_TSR_ABRQ2 : constant Word :=
     16#00800000#;   -- /*!<Abort Request for Mailbox 2 */
   CAN_TSR_CODE : constant Word := 16#03000000#;   -- /*!<Mailbox Code */

   CAN_TSR_TME  : constant Word := 16#1C000000#;   -- /*!<TME[2:0] bits */
   CAN_TSR_TME0 : constant Word :=
     16#04000000#;   -- /*!<Transmit Mailbox 0 Empty */
   CAN_TSR_TME1 : constant Word :=
     16#08000000#;   -- /*!<Transmit Mailbox 1 Empty */
   CAN_TSR_TME2 : constant Word :=
     16#10000000#;   -- /*!<Transmit Mailbox 2 Empty */

   CAN_TSR_LOW  : constant Word := 16#E0000000#;   -- /*!<LOW[2:0] bits */
   CAN_TSR_LOW0 : constant Word :=
     16#20000000#;   -- /*!<Lowest Priority Flag for Mailbox 0 */
   CAN_TSR_LOW1 : constant Word :=
     16#40000000#;   -- /*!<Lowest Priority Flag for Mailbox 1 */
   CAN_TSR_LOW2 : constant Word :=
     16#80000000#;   -- /*!<Lowest Priority Flag for Mailbox 2 */

-- /*******************  Bit definition for CAN_RF0R register  *******************/
   CAN_RF0R_FMP0 : constant Word :=
     16#03#;          -- /*!<FIFO 0 Message Pending */
   CAN_RF0R_FULL0 : constant Word := 16#08#;          -- /*!<FIFO 0 Full */
   CAN_RF0R_FOVR0 : constant Word := 16#10#;          -- /*!<FIFO 0 Overrun */
   CAN_RF0R_RFOM0 : constant Word :=
     16#20#;          -- /*!<Release FIFO 0 Output Mailbox */

-- /*******************  Bit definition for CAN_RF1R register  *******************/
   CAN_RF1R_FMP1 : constant Word :=
     16#03#;          -- /*!<FIFO 1 Message Pending */
   CAN_RF1R_FULL1 : constant Word := 16#08#;          -- /*!<FIFO 1 Full */
   CAN_RF1R_FOVR1 : constant Word := 16#10#;          -- /*!<FIFO 1 Overrun */
   CAN_RF1R_RFOM1 : constant Word :=
     16#20#;          -- /*!<Release FIFO 1 Output Mailbox */

-- /********************  Bit definition for CAN_IER register  *******************/
   CAN_IER_TMEIE : constant Word :=
     16#00000001#;   -- /*!<Transmit Mailbox Empty Interrupt Enable */
   CAN_IER_FMPIE0 : constant Word :=
     16#00000002#;   -- /*!<FIFO Message Pending Interrupt Enable */
   CAN_IER_FFIE0 : constant Word :=
     16#00000004#;   -- /*!<FIFO Full Interrupt Enable */
   CAN_IER_FOVIE0 : constant Word :=
     16#00000008#;   -- /*!<FIFO Overrun Interrupt Enable */
   CAN_IER_FMPIE1 : constant Word :=
     16#00000010#;   -- /*!<FIFO Message Pending Interrupt Enable */
   CAN_IER_FFIE1 : constant Word :=
     16#00000020#;   -- /*!<FIFO Full Interrupt Enable */
   CAN_IER_FOVIE1 : constant Word :=
     16#00000040#;   -- /*!<FIFO Overrun Interrupt Enable */
   CAN_IER_EWGIE : constant Word :=
     16#00000100#;   -- /*!<Error Warning Interrupt Enable */
   CAN_IER_EPVIE : constant Word :=
     16#00000200#;   -- /*!<Error Passive Interrupt Enable */
   CAN_IER_BOFIE : constant Word :=
     16#00000400#;   -- /*!<Bus-Off Interrupt Enable */
   CAN_IER_LECIE : constant Word :=
     16#00000800#;   -- /*!<Last Error Code Interrupt Enable */
   CAN_IER_ERRIE : constant Word :=
     16#00008000#;   -- /*!<Error Interrupt Enable */
   CAN_IER_WKUIE : constant Word :=
     16#00010000#;   -- /*!<Wakeup Interrupt Enable */
   CAN_IER_SLKIE : constant Word :=
     16#00020000#;   -- /*!<Sleep Interrupt Enable */
--     CAN_IER_EWGIE                       :constant word :=16#00000100#;   -- /*!<Error warning interrupt enable */
--     CAN_IER_EPVIE                       :constant word :=16#00000200#;   -- /*!<Error passive interrupt enable */
--     CAN_IER_BOFIE                       :constant word :=16#00000400#;   -- /*!<Bus-off interrupt enable */
--     CAN_IER_LECIE                       :constant word :=16#00000800#;   -- /*!<Last error code interrupt enable */
--     CAN_IER_ERRIE                       :constant word :=16#00008000#;   -- /*!<Error interrupt enable */

-- /********************  Bit definition for CAN_ESR register  *******************/
   CAN_ESR_EWGF : constant Word := 16#00000001#;   -- /*!<Error Warning Flag */
   CAN_ESR_EPVF : constant Word := 16#00000002#;   -- /*!<Error Passive Flag */
   CAN_ESR_BOFF : constant Word := 16#00000004#;   -- /*!<Bus-Off Flag */

   CAN_ESR_LEC : constant Word :=
     16#00000070#;   -- /*!<LEC[2:0] bits (Last Error Code) */
   CAN_ESR_LEC_0 : constant Word := 16#00000010#;   -- /*!<Bit 0 */
   CAN_ESR_LEC_1 : constant Word := 16#00000020#;   -- /*!<Bit 1 */
   CAN_ESR_LEC_2 : constant Word := 16#00000040#;   -- /*!<Bit 2 */

   CAN_ESR_TEC : constant Word :=
     16#00FF0000#;   -- /*!<Least significant byte of the 9-bit Transmit Error Counter */
   CAN_ESR_REC : constant Word :=
     16#FF000000#;   -- /*!<Receive Error Counter */

-- /*******************  Bit definition for CAN_BTR register  ********************/
   CAN_BTR_BRP : constant Word := 16#000003FF#;   -- /*!<Baud Rate Prescaler */
   CAN_BTR_TS1   : constant Word := 16#000F0000#;   -- /*!<Time Segment 1 */
   CAN_BTR_TS1_0 : constant Word := 16#00010000#;   -- /*!<Bit 0 */
   CAN_BTR_TS1_1 : constant Word := 16#00020000#;   -- /*!<Bit 1 */
   CAN_BTR_TS1_2 : constant Word := 16#00040000#;   -- /*!<Bit 2 */
   CAN_BTR_TS1_3 : constant Word := 16#00080000#;   -- /*!<Bit 3 */
   CAN_BTR_TS2   : constant Word := 16#00700000#;   -- /*!<Time Segment 2 */
   CAN_BTR_TS2_0 : constant Word := 16#00100000#;   -- /*!<Bit 0 */
   CAN_BTR_TS2_1 : constant Word := 16#00200000#;   -- /*!<Bit 1 */
   CAN_BTR_TS2_2 : constant Word := 16#00400000#;   -- /*!<Bit 2 */
   CAN_BTR_SJW   : constant Word :=
     16#03000000#;   -- /*!<Resynchronization Jump Width */
   CAN_BTR_SJW_0 : constant Word := 16#01000000#;   -- /*!<Bit 0 */
   CAN_BTR_SJW_1 : constant Word := 16#02000000#;   -- /*!<Bit 1 */
   CAN_BTR_LBKM  : constant Word :=
     16#40000000#;   -- /*!<Loop Back Mode (Debug) */
   CAN_BTR_SILM : constant Word := 16#80000000#;   -- /*!<Silent Mode */

-- /*!<Mailbox registers */
-- /******************  Bit definition for CAN_TI0R register  ********************/
   CAN_TI0R_TXRQ : constant Word :=
     16#00000001#;   -- /*!<Transmit Mailbox Request */
   CAN_TI0R_RTR : constant Word :=
     16#00000002#;   -- /*!<Remote Transmission Request */
   CAN_TI0R_IDE : constant Word :=
     16#00000004#;   -- /*!<Identifier Extension */
   CAN_TI0R_EXID : constant Word :=
     16#001FFFF8#;   -- /*!<Extended Identifier */
   CAN_TI0R_STID : constant Word :=
     16#FFE00000#;   -- /*!<Standard Identifier or Extended Identifier */

-- /******************  Bit definition for CAN_TDT0R register  *******************/
   CAN_TDT0R_DLC : constant Word := 16#0000000F#;   -- /*!<Data Length Code */
   CAN_TDT0R_TGT : constant Word :=
     16#00000100#;   -- /*!<Transmit Global Time */
   CAN_TDT0R_TIME : constant Word :=
     16#FFFF0000#;   -- /*!<Message Time Stamp */

-- /******************  Bit definition for CAN_TDL0R register  *******************/
   CAN_TDL0R_DATA0 : constant Word := 16#000000FF#;   -- /*!<Data byte 0 */
   CAN_TDL0R_DATA1 : constant Word := 16#0000FF00#;   -- /*!<Data byte 1 */
   CAN_TDL0R_DATA2 : constant Word := 16#00FF0000#;   -- /*!<Data byte 2 */
   CAN_TDL0R_DATA3 : constant Word := 16#FF000000#;   -- /*!<Data byte 3 */

-- /******************  Bit definition for CAN_TDH0R register  *******************/
   CAN_TDH0R_DATA4 : constant Word := 16#000000FF#;   -- /*!<Data byte 4 */
   CAN_TDH0R_DATA5 : constant Word := 16#0000FF00#;   -- /*!<Data byte 5 */
   CAN_TDH0R_DATA6 : constant Word := 16#00FF0000#;   -- /*!<Data byte 6 */
   CAN_TDH0R_DATA7 : constant Word := 16#FF000000#;   -- /*!<Data byte 7 */

-- /*******************  Bit definition for CAN_TI1R register  *******************/
   CAN_TI1R_TXRQ : constant Word :=
     16#00000001#;   -- /*!<Transmit Mailbox Request */
   CAN_TI1R_RTR : constant Word :=
     16#00000002#;   -- /*!<Remote Transmission Request */
   CAN_TI1R_IDE : constant Word :=
     16#00000004#;   -- /*!<Identifier Extension */
   CAN_TI1R_EXID : constant Word :=
     16#001FFFF8#;   -- /*!<Extended Identifier */
   CAN_TI1R_STID : constant Word :=
     16#FFE00000#;   -- /*!<Standard Identifier or Extended Identifier */

-- /*******************  Bit definition for CAN_TDT1R register  ******************/
   CAN_TDT1R_DLC : constant Word := 16#0000000F#;   -- /*!<Data Length Code */
   CAN_TDT1R_TGT : constant Word :=
     16#00000100#;   -- /*!<Transmit Global Time */
   CAN_TDT1R_TIME : constant Word :=
     16#FFFF0000#;   -- /*!<Message Time Stamp */

-- /*******************  Bit definition for CAN_TDL1R register  ******************/
   CAN_TDL1R_DATA0 : constant Word := 16#000000FF#;   -- /*!<Data byte 0 */
   CAN_TDL1R_DATA1 : constant Word := 16#0000FF00#;   -- /*!<Data byte 1 */
   CAN_TDL1R_DATA2 : constant Word := 16#00FF0000#;   -- /*!<Data byte 2 */
   CAN_TDL1R_DATA3 : constant Word := 16#FF000000#;   -- /*!<Data byte 3 */

-- /*******************  Bit definition for CAN_TDH1R register  ******************/
   CAN_TDH1R_DATA4 : constant Word := 16#000000FF#;   -- /*!<Data byte 4 */
   CAN_TDH1R_DATA5 : constant Word := 16#0000FF00#;   -- /*!<Data byte 5 */
   CAN_TDH1R_DATA6 : constant Word := 16#00FF0000#;   -- /*!<Data byte 6 */
   CAN_TDH1R_DATA7 : constant Word := 16#FF000000#;   -- /*!<Data byte 7 */

-- /*******************  Bit definition for CAN_TI2R register  *******************/
   CAN_TI2R_TXRQ : constant Word :=
     16#00000001#;   -- /*!<Transmit Mailbox Request */
   CAN_TI2R_RTR : constant Word :=
     16#00000002#;   -- /*!<Remote Transmission Request */
   CAN_TI2R_IDE : constant Word :=
     16#00000004#;   -- /*!<Identifier Extension */
   CAN_TI2R_EXID : constant Word :=
     16#001FFFF8#;   -- /*!<Extended identifier */
   CAN_TI2R_STID : constant Word :=
     16#FFE00000#;   -- /*!<Standard Identifier or Extended Identifier */

-- /*******************  Bit definition for CAN_TDT2R register  ******************/
   CAN_TDT2R_DLC : constant Word := 16#0000000F#;   -- /*!<Data Length Code */
   CAN_TDT2R_TGT : constant Word :=
     16#00000100#;   -- /*!<Transmit Global Time */
   CAN_TDT2R_TIME : constant Word :=
     16#FFFF0000#;   -- /*!<Message Time Stamp */

-- /*******************  Bit definition for CAN_TDL2R register  ******************/
   CAN_TDL2R_DATA0 : constant Word := 16#000000FF#;   -- /*!<Data byte 0 */
   CAN_TDL2R_DATA1 : constant Word := 16#0000FF00#;   -- /*!<Data byte 1 */
   CAN_TDL2R_DATA2 : constant Word := 16#00FF0000#;   -- /*!<Data byte 2 */
   CAN_TDL2R_DATA3 : constant Word := 16#FF000000#;   -- /*!<Data byte 3 */

-- /*******************  Bit definition for CAN_TDH2R register  ******************/
   CAN_TDH2R_DATA4 : constant Word := 16#000000FF#;   -- /*!<Data byte 4 */
   CAN_TDH2R_DATA5 : constant Word := 16#0000FF00#;   -- /*!<Data byte 5 */
   CAN_TDH2R_DATA6 : constant Word := 16#00FF0000#;   -- /*!<Data byte 6 */
   CAN_TDH2R_DATA7 : constant Word := 16#FF000000#;   -- /*!<Data byte 7 */

-- /*******************  Bit definition for CAN_RI0R register  *******************/
   CAN_RI0R_RTR : constant Word :=
     16#00000002#;   -- /*!<Remote Transmission Request */
   CAN_RI0R_IDE : constant Word :=
     16#00000004#;   -- /*!<Identifier Extension */
   CAN_RI0R_EXID : constant Word :=
     16#001FFFF8#;   -- /*!<Extended Identifier */
   CAN_RI0R_STID : constant Word :=
     16#FFE00000#;   -- /*!<Standard Identifier or Extended Identifier */

-- /*******************  Bit definition for CAN_RDT0R register  ******************/
   CAN_RDT0R_DLC : constant Word := 16#0000000F#;   -- /*!<Data Length Code */
   CAN_RDT0R_FMI : constant Word :=
     16#0000FF00#;   -- /*!<Filter Match Index */
   CAN_RDT0R_TIME : constant Word :=
     16#FFFF0000#;   -- /*!<Message Time Stamp */

-- /*******************  Bit definition for CAN_RDL0R register  ******************/
   CAN_RDL0R_DATA0 : constant Word := 16#000000FF#;   -- /*!<Data byte 0 */
   CAN_RDL0R_DATA1 : constant Word := 16#0000FF00#;   -- /*!<Data byte 1 */
   CAN_RDL0R_DATA2 : constant Word := 16#00FF0000#;   -- /*!<Data byte 2 */
   CAN_RDL0R_DATA3 : constant Word := 16#FF000000#;   -- /*!<Data byte 3 */

-- /*******************  Bit definition for CAN_RDH0R register  ******************/
   CAN_RDH0R_DATA4 : constant Word := 16#000000FF#;   -- /*!<Data byte 4 */
   CAN_RDH0R_DATA5 : constant Word := 16#0000FF00#;   -- /*!<Data byte 5 */
   CAN_RDH0R_DATA6 : constant Word := 16#00FF0000#;   -- /*!<Data byte 6 */
   CAN_RDH0R_DATA7 : constant Word := 16#FF000000#;   -- /*!<Data byte 7 */

-- /*******************  Bit definition for CAN_RI1R register  *******************/
   CAN_RI1R_RTR : constant Word :=
     16#00000002#;   -- /*!<Remote Transmission Request */
   CAN_RI1R_IDE : constant Word :=
     16#00000004#;   -- /*!<Identifier Extension */
   CAN_RI1R_EXID : constant Word :=
     16#001FFFF8#;   -- /*!<Extended identifier */
   CAN_RI1R_STID : constant Word :=
     16#FFE00000#;   -- /*!<Standard Identifier or Extended Identifier */

-- /*******************  Bit definition for CAN_RDT1R register  ******************/
   CAN_RDT1R_DLC : constant Word := 16#0000000F#;   -- /*!<Data Length Code */
   CAN_RDT1R_FMI : constant Word :=
     16#0000FF00#;   -- /*!<Filter Match Index */
   CAN_RDT1R_TIME : constant Word :=
     16#FFFF0000#;   -- /*!<Message Time Stamp */

-- /*******************  Bit definition for CAN_RDL1R register  ******************/
   CAN_RDL1R_DATA0 : constant Word := 16#000000FF#;   -- /*!<Data byte 0 */
   CAN_RDL1R_DATA1 : constant Word := 16#0000FF00#;   -- /*!<Data byte 1 */
   CAN_RDL1R_DATA2 : constant Word := 16#00FF0000#;   -- /*!<Data byte 2 */
   CAN_RDL1R_DATA3 : constant Word := 16#FF000000#;   -- /*!<Data byte 3 */

-- /*******************  Bit definition for CAN_RDH1R register  ******************/
   CAN_RDH1R_DATA4 : constant Word := 16#000000FF#;   -- /*!<Data byte 4 */
   CAN_RDH1R_DATA5 : constant Word := 16#0000FF00#;   -- /*!<Data byte 5 */
   CAN_RDH1R_DATA6 : constant Word := 16#00FF0000#;   -- /*!<Data byte 6 */
   CAN_RDH1R_DATA7 : constant Word := 16#FF000000#;   -- /*!<Data byte 7 */

-- /*!<CAN filter registers */
-- /*******************  Bit definition for CAN_FMR register  ********************/
   CAN_FMR_FINIT : constant Word := 16#01#;          -- /*!<Filter Init Mode */
   CAN_FMR_CAN2SB : constant Word := 16#00003F00#;   -- /*!<CAN2 start bank */

-- /*******************  Bit definition for CAN_FM1R register  *******************/
   CAN_FM1R_FBM  : constant Word := 16#0FFFFFFF#;   -- /*!<Filter Mode */
   CAN_FM1R_FBM0 : constant Word :=
     16#00000001#;   -- /*!<Filter Init Mode bit 0 */
   CAN_FM1R_FBM1 : constant Word :=
     16#00000002#;   -- /*!<Filter Init Mode bit 1 */
   CAN_FM1R_FBM2 : constant Word :=
     16#00000004#;   -- /*!<Filter Init Mode bit 2 */
   CAN_FM1R_FBM3 : constant Word :=
     16#00000008#;   -- /*!<Filter Init Mode bit 3 */
   CAN_FM1R_FBM4 : constant Word :=
     16#00000010#;   -- /*!<Filter Init Mode bit 4 */
   CAN_FM1R_FBM5 : constant Word :=
     16#00000020#;   -- /*!<Filter Init Mode bit 5 */
   CAN_FM1R_FBM6 : constant Word :=
     16#00000040#;   -- /*!<Filter Init Mode bit 6 */
   CAN_FM1R_FBM7 : constant Word :=
     16#00000080#;   -- /*!<Filter Init Mode bit 7 */
   CAN_FM1R_FBM8 : constant Word :=
     16#00000100#;   -- /*!<Filter Init Mode bit 8 */
   CAN_FM1R_FBM9 : constant Word :=
     16#00000200#;   -- /*!<Filter Init Mode bit 9 */
   CAN_FM1R_FBM10 : constant Word :=
     16#00000400#;   -- /*!<Filter Init Mode bit 10 */
   CAN_FM1R_FBM11 : constant Word :=
     16#00000800#;   -- /*!<Filter Init Mode bit 11 */
   CAN_FM1R_FBM12 : constant Word :=
     16#00001000#;   -- /*!<Filter Init Mode bit 12 */
   CAN_FM1R_FBM13 : constant Word :=
     16#00002000#;   -- /*!<Filter Init Mode bit 13 */
   CAN_FM1R_FBM14 : constant Word :=
     16#00004000#;   -- /*!<Filter Init Mode bit 14 */
   CAN_FM1R_FBM15 : constant Word :=
     16#00008000#;   -- /*!<Filter Init Mode bit 15 */
   CAN_FM1R_FBM16 : constant Word :=
     16#00010000#;   -- /*!<Filter Init Mode bit 16 */
   CAN_FM1R_FBM17 : constant Word :=
     16#00020000#;   -- /*!<Filter Init Mode bit 17 */
   CAN_FM1R_FBM18 : constant Word :=
     16#00040000#;   -- /*!<Filter Init Mode bit 18 */
   CAN_FM1R_FBM19 : constant Word :=
     16#00080000#;   -- /*!<Filter Init Mode bit 19 */
   CAN_FM1R_FBM20 : constant Word :=
     16#00100000#;   -- /*!<Filter Init Mode bit 20 */
   CAN_FM1R_FBM21 : constant Word :=
     16#00200000#;   -- /*!<Filter Init Mode bit 21 */
   CAN_FM1R_FBM22 : constant Word :=
     16#00400000#;   -- /*!<Filter Init Mode bit 22 */
   CAN_FM1R_FBM23 : constant Word :=
     16#00800000#;   -- /*!<Filter Init Mode bit 23 */
   CAN_FM1R_FBM24 : constant Word :=
     16#01000000#;   -- /*!<Filter Init Mode bit 24 */
   CAN_FM1R_FBM25 : constant Word :=
     16#02000000#;   -- /*!<Filter Init Mode bit 25 */
   CAN_FM1R_FBM26 : constant Word :=
     16#04000000#;   -- /*!<Filter Init Mode bit 26 */
   CAN_FM1R_FBM27 : constant Word :=
     16#08000000#;   -- /*!<Filter Init Mode bit 27 */

-- /*******************  Bit definition for CAN_FS1R register  *******************/
   CAN_FS1R_FSC : constant Word :=
     16#0FFFFFFF#;   -- /*!<Filter Scale Configuration */
   CAN_FS1R_FSC0 : constant Word :=
     16#00000001#;   -- /*!<Filter Scale Configuration bit 0 */
   CAN_FS1R_FSC1 : constant Word :=
     16#00000002#;   -- /*!<Filter Scale Configuration bit 1 */
   CAN_FS1R_FSC2 : constant Word :=
     16#00000004#;   -- /*!<Filter Scale Configuration bit 2 */
   CAN_FS1R_FSC3 : constant Word :=
     16#00000008#;   -- /*!<Filter Scale Configuration bit 3 */
   CAN_FS1R_FSC4 : constant Word :=
     16#00000010#;   -- /*!<Filter Scale Configuration bit 4 */
   CAN_FS1R_FSC5 : constant Word :=
     16#00000020#;   -- /*!<Filter Scale Configuration bit 5 */
   CAN_FS1R_FSC6 : constant Word :=
     16#00000040#;   -- /*!<Filter Scale Configuration bit 6 */
   CAN_FS1R_FSC7 : constant Word :=
     16#00000080#;   -- /*!<Filter Scale Configuration bit 7 */
   CAN_FS1R_FSC8 : constant Word :=
     16#00000100#;   -- /*!<Filter Scale Configuration bit 8 */
   CAN_FS1R_FSC9 : constant Word :=
     16#00000200#;   -- /*!<Filter Scale Configuration bit 9 */
   CAN_FS1R_FSC10 : constant Word :=
     16#00000400#;   -- /*!<Filter Scale Configuration bit 10 */
   CAN_FS1R_FSC11 : constant Word :=
     16#00000800#;   -- /*!<Filter Scale Configuration bit 11 */
   CAN_FS1R_FSC12 : constant Word :=
     16#00001000#;   -- /*!<Filter Scale Configuration bit 12 */
   CAN_FS1R_FSC13 : constant Word :=
     16#00002000#;   -- /*!<Filter Scale Configuration bit 13 */
   CAN_FS1R_FSC14 : constant Word :=
     16#00004000#;   -- /*!<Filter Scale Configuration bit 14 */
   CAN_FS1R_FSC15 : constant Word :=
     16#00008000#;   -- /*!<Filter Scale Configuration bit 15 */
   CAN_FS1R_FSC16 : constant Word :=
     16#00010000#;   -- /*!<Filter Scale Configuration bit 16 */
   CAN_FS1R_FSC17 : constant Word :=
     16#00020000#;   -- /*!<Filter Scale Configuration bit 17 */
   CAN_FS1R_FSC18 : constant Word :=
     16#00040000#;   -- /*!<Filter Scale Configuration bit 18 */
   CAN_FS1R_FSC19 : constant Word :=
     16#00080000#;   -- /*!<Filter Scale Configuration bit 19 */
   CAN_FS1R_FSC20 : constant Word :=
     16#00100000#;   -- /*!<Filter Scale Configuration bit 20 */
   CAN_FS1R_FSC21 : constant Word :=
     16#00200000#;   -- /*!<Filter Scale Configuration bit 21 */
   CAN_FS1R_FSC22 : constant Word :=
     16#00400000#;   -- /*!<Filter Scale Configuration bit 22 */
   CAN_FS1R_FSC23 : constant Word :=
     16#00800000#;   -- /*!<Filter Scale Configuration bit 23 */
   CAN_FS1R_FSC24 : constant Word :=
     16#01000000#;   -- /*!<Filter Scale Configuration bit 24 */
   CAN_FS1R_FSC25 : constant Word :=
     16#02000000#;   -- /*!<Filter Scale Configuration bit 25 */
   CAN_FS1R_FSC26 : constant Word :=
     16#04000000#;   -- /*!<Filter Scale Configuration bit 26 */
   CAN_FS1R_FSC27 : constant Word :=
     16#08000000#;   -- /*!<Filter Scale Configuration bit 27 */

-- /******************  Bit definition for CAN_FFA1R register  *******************/
   CAN_FFA1R_FFA : constant Word :=
     16#0FFFFFFF#;   -- /*!<Filter FIFO Assignment */
   CAN_FFA1R_FFA0 : constant Word :=
     16#00000001#;   -- /*!<Filter FIFO Assignment bit 0 */
   CAN_FFA1R_FFA1 : constant Word :=
     16#00000002#;   -- /*!<Filter FIFO Assignment bit 1 */
   CAN_FFA1R_FFA2 : constant Word :=
     16#00000004#;   -- /*!<Filter FIFO Assignment bit 2 */
   CAN_FFA1R_FFA3 : constant Word :=
     16#00000008#;   -- /*!<Filter FIFO Assignment bit 3 */
   CAN_FFA1R_FFA4 : constant Word :=
     16#00000010#;   -- /*!<Filter FIFO Assignment bit 4 */
   CAN_FFA1R_FFA5 : constant Word :=
     16#00000020#;   -- /*!<Filter FIFO Assignment bit 5 */
   CAN_FFA1R_FFA6 : constant Word :=
     16#00000040#;   -- /*!<Filter FIFO Assignment bit 6 */
   CAN_FFA1R_FFA7 : constant Word :=
     16#00000080#;   -- /*!<Filter FIFO Assignment bit 7 */
   CAN_FFA1R_FFA8 : constant Word :=
     16#00000100#;   -- /*!<Filter FIFO Assignment bit 8 */
   CAN_FFA1R_FFA9 : constant Word :=
     16#00000200#;   -- /*!<Filter FIFO Assignment bit 9 */
   CAN_FFA1R_FFA10 : constant Word :=
     16#00000400#;   -- /*!<Filter FIFO Assignment bit 10 */
   CAN_FFA1R_FFA11 : constant Word :=
     16#00000800#;   -- /*!<Filter FIFO Assignment bit 11 */
   CAN_FFA1R_FFA12 : constant Word :=
     16#00001000#;   -- /*!<Filter FIFO Assignment bit 12 */
   CAN_FFA1R_FFA13 : constant Word :=
     16#00002000#;   -- /*!<Filter FIFO Assignment bit 13 */
   CAN_FFA1R_FFA14 : constant Word :=
     16#00004000#;   -- /*!<Filter FIFO Assignment bit 14 */
   CAN_FFA1R_FFA15 : constant Word :=
     16#00008000#;   -- /*!<Filter FIFO Assignment bit 15 */
   CAN_FFA1R_FFA16 : constant Word :=
     16#00010000#;   -- /*!<Filter FIFO Assignment bit 16 */
   CAN_FFA1R_FFA17 : constant Word :=
     16#00020000#;   -- /*!<Filter FIFO Assignment bit 17 */
   CAN_FFA1R_FFA18 : constant Word :=
     16#00040000#;   -- /*!<Filter FIFO Assignment bit 18 */
   CAN_FFA1R_FFA19 : constant Word :=
     16#00080000#;   -- /*!<Filter FIFO Assignment bit 19 */
   CAN_FFA1R_FFA20 : constant Word :=
     16#00100000#;   -- /*!<Filter FIFO Assignment bit 20 */
   CAN_FFA1R_FFA21 : constant Word :=
     16#00200000#;   -- /*!<Filter FIFO Assignment bit 21 */
   CAN_FFA1R_FFA22 : constant Word :=
     16#00400000#;   -- /*!<Filter FIFO Assignment bit 22 */
   CAN_FFA1R_FFA23 : constant Word :=
     16#00800000#;   -- /*!<Filter FIFO Assignment bit 23 */
   CAN_FFA1R_FFA24 : constant Word :=
     16#01000000#;   -- /*!<Filter FIFO Assignment bit 24 */
   CAN_FFA1R_FFA25 : constant Word :=
     16#02000000#;   -- /*!<Filter FIFO Assignment bit 25 */
   CAN_FFA1R_FFA26 : constant Word :=
     16#04000000#;   -- /*!<Filter FIFO Assignment bit 26 */
   CAN_FFA1R_FFA27 : constant Word :=
     16#08000000#;   -- /*!<Filter FIFO Assignment bit 27 */

-- /*******************  Bit definition for CAN_FA1R register  *******************/
   CAN_FA1R_FACT  : constant Word := 16#0FFFFFFF#;   -- /*!<Filter Active */
   CAN_FA1R_FACT0 : constant Word :=
     16#00000001#;   -- /*!<Filter Active bit 0 */
   CAN_FA1R_FACT1 : constant Word :=
     16#00000002#;   -- /*!<Filter Active bit 1 */
   CAN_FA1R_FACT2 : constant Word :=
     16#00000004#;   -- /*!<Filter Active bit 2 */
   CAN_FA1R_FACT3 : constant Word :=
     16#00000008#;   -- /*!<Filter Active bit 3 */
   CAN_FA1R_FACT4 : constant Word :=
     16#00000010#;   -- /*!<Filter Active bit 4 */
   CAN_FA1R_FACT5 : constant Word :=
     16#00000020#;   -- /*!<Filter Active bit 5 */
   CAN_FA1R_FACT6 : constant Word :=
     16#00000040#;   -- /*!<Filter Active bit 6 */
   CAN_FA1R_FACT7 : constant Word :=
     16#00000080#;   -- /*!<Filter Active bit 7 */
   CAN_FA1R_FACT8 : constant Word :=
     16#00000100#;   -- /*!<Filter Active bit 8 */
   CAN_FA1R_FACT9 : constant Word :=
     16#00000200#;   -- /*!<Filter Active bit 9 */
   CAN_FA1R_FACT10 : constant Word :=
     16#00000400#;   -- /*!<Filter Active bit 10 */
   CAN_FA1R_FACT11 : constant Word :=
     16#00000800#;   -- /*!<Filter Active bit 11 */
   CAN_FA1R_FACT12 : constant Word :=
     16#00001000#;   -- /*!<Filter Active bit 12 */
   CAN_FA1R_FACT13 : constant Word :=
     16#00002000#;   -- /*!<Filter Active bit 13 */
   CAN_FA1R_FACT14 : constant Word :=
     16#00004000#;   -- /*!<Filter Active bit 14 */
   CAN_FA1R_FACT15 : constant Word :=
     16#00008000#;   -- /*!<Filter Active bit 15 */
   CAN_FA1R_FACT16 : constant Word :=
     16#00010000#;   -- /*!<Filter Active bit 16 */
   CAN_FA1R_FACT17 : constant Word :=
     16#00020000#;   -- /*!<Filter Active bit 17 */
   CAN_FA1R_FACT18 : constant Word :=
     16#00040000#;   -- /*!<Filter Active bit 18 */
   CAN_FA1R_FACT19 : constant Word :=
     16#00080000#;   -- /*!<Filter Active bit 19 */
   CAN_FA1R_FACT20 : constant Word :=
     16#00100000#;   -- /*!<Filter Active bit 20 */
   CAN_FA1R_FACT21 : constant Word :=
     16#00200000#;   -- /*!<Filter Active bit 21 */
   CAN_FA1R_FACT22 : constant Word :=
     16#00400000#;   -- /*!<Filter Active bit 22 */
   CAN_FA1R_FACT23 : constant Word :=
     16#00800000#;   -- /*!<Filter Active bit 23 */
   CAN_FA1R_FACT24 : constant Word :=
     16#01000000#;   -- /*!<Filter Active bit 24 */
   CAN_FA1R_FACT25 : constant Word :=
     16#02000000#;   -- /*!<Filter Active bit 25 */
   CAN_FA1R_FACT26 : constant Word :=
     16#04000000#;   -- /*!<Filter Active bit 26 */
   CAN_FA1R_FACT27 : constant Word :=
     16#08000000#;   -- /*!<Filter Active bit 27 */

-- /*******************  Bit definition for CAN_F0R1 register  *******************/
   CAN_F0R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F0R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F0R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F0R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F0R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F0R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F0R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F0R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F0R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F0R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F0R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F0R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F0R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F0R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F0R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F0R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F0R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F0R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F0R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F0R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F0R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F0R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F0R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F0R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F0R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F0R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F0R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F0R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F0R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F0R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F0R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F0R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F1R1 register  *******************/
   CAN_F1R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F1R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F1R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F1R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F1R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F1R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F1R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F1R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F1R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F1R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F1R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F1R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F1R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F1R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F1R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F1R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F1R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F1R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F1R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F1R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F1R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F1R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F1R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F1R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F1R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F1R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F1R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F1R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F1R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F1R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F1R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F1R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F2R1 register  *******************/
   CAN_F2R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F2R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F2R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F2R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F2R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F2R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F2R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F2R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F2R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F2R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F2R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F2R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F2R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F2R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F2R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F2R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F2R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F2R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F2R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F2R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F2R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F2R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F2R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F2R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F2R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F2R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F2R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F2R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F2R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F2R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F2R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F2R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F3R1 register  *******************/
   CAN_F3R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F3R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F3R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F3R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F3R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F3R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F3R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F3R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F3R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F3R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F3R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F3R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F3R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F3R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F3R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F3R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F3R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F3R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F3R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F3R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F3R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F3R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F3R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F3R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F3R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F3R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F3R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F3R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F3R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F3R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F3R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F3R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F4R1 register  *******************/
   CAN_F4R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F4R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F4R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F4R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F4R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F4R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F4R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F4R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F4R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F4R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F4R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F4R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F4R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F4R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F4R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F4R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F4R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F4R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F4R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F4R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F4R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F4R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F4R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F4R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F4R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F4R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F4R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F4R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F4R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F4R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F4R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F4R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F5R1 register  *******************/
   CAN_F5R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F5R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F5R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F5R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F5R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F5R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F5R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F5R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F5R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F5R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F5R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F5R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F5R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F5R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F5R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F5R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F5R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F5R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F5R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F5R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F5R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F5R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F5R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F5R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F5R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F5R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F5R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F5R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F5R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F5R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F5R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F5R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F6R1 register  *******************/
   CAN_F6R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F6R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F6R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F6R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F6R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F6R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F6R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F6R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F6R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F6R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F6R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F6R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F6R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F6R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F6R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F6R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F6R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F6R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F6R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F6R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F6R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F6R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F6R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F6R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F6R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F6R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F6R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F6R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F6R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F6R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F6R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F6R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F7R1 register  *******************/
   CAN_F7R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F7R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F7R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F7R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F7R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F7R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F7R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F7R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F7R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F7R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F7R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F7R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F7R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F7R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F7R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F7R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F7R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F7R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F7R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F7R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F7R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F7R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F7R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F7R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F7R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F7R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F7R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F7R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F7R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F7R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F7R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F7R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F8R1 register  *******************/
   CAN_F8R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F8R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F8R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F8R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F8R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F8R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F8R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F8R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F8R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F8R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F8R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F8R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F8R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F8R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F8R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F8R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F8R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F8R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F8R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F8R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F8R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F8R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F8R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F8R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F8R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F8R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F8R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F8R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F8R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F8R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F8R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F8R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F9R1 register  *******************/
   CAN_F9R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F9R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F9R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F9R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F9R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F9R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F9R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F9R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F9R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F9R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F9R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F9R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F9R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F9R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F9R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F9R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F9R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F9R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F9R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F9R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F9R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F9R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F9R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F9R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F9R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F9R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F9R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F9R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F9R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F9R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F9R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F9R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F10R1 register  ******************/
   CAN_F10R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F10R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F10R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F10R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F10R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F10R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F10R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F10R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F10R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F10R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F10R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F10R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F10R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F10R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F10R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F10R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F10R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F10R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F10R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F10R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F10R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F10R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F10R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F10R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F10R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F10R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F10R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F10R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F10R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F10R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F10R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F10R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F11R1 register  ******************/
   CAN_F11R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F11R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F11R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F11R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F11R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F11R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F11R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F11R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F11R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F11R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F11R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F11R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F11R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F11R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F11R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F11R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F11R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F11R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F11R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F11R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F11R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F11R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F11R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F11R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F11R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F11R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F11R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F11R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F11R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F11R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F11R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F11R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F12R1 register  ******************/
   CAN_F12R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F12R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F12R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F12R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F12R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F12R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F12R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F12R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F12R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F12R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F12R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F12R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F12R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F12R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F12R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F12R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F12R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F12R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F12R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F12R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F12R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F12R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F12R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F12R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F12R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F12R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F12R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F12R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F12R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F12R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F12R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F12R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F13R1 register  ******************/
   CAN_F13R1_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F13R1_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F13R1_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F13R1_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F13R1_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F13R1_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F13R1_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F13R1_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F13R1_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F13R1_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F13R1_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F13R1_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F13R1_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F13R1_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F13R1_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F13R1_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F13R1_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F13R1_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F13R1_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F13R1_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F13R1_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F13R1_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F13R1_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F13R1_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F13R1_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F13R1_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F13R1_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F13R1_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F13R1_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F13R1_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F13R1_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F13R1_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F0R2 register  *******************/
   CAN_F0R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F0R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F0R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F0R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F0R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F0R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F0R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F0R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F0R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F0R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F0R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F0R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F0R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F0R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F0R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F0R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F0R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F0R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F0R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F0R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F0R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F0R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F0R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F0R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F0R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F0R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F0R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F0R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F0R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F0R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F0R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F0R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F1R2 register  *******************/
   CAN_F1R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F1R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F1R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F1R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F1R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F1R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F1R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F1R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F1R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F1R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F1R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F1R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F1R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F1R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F1R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F1R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F1R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F1R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F1R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F1R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F1R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F1R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F1R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F1R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F1R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F1R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F1R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F1R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F1R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F1R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F1R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F1R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F2R2 register  *******************/
   CAN_F2R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F2R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F2R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F2R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F2R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F2R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F2R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F2R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F2R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F2R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F2R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F2R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F2R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F2R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F2R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F2R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F2R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F2R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F2R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F2R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F2R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F2R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F2R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F2R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F2R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F2R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F2R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F2R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F2R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F2R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F2R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F2R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F3R2 register  *******************/
   CAN_F3R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F3R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F3R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F3R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F3R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F3R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F3R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F3R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F3R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F3R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F3R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F3R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F3R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F3R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F3R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F3R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F3R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F3R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F3R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F3R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F3R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F3R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F3R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F3R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F3R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F3R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F3R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F3R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F3R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F3R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F3R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F3R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F4R2 register  *******************/
   CAN_F4R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F4R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F4R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F4R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F4R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F4R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F4R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F4R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F4R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F4R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F4R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F4R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F4R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F4R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F4R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F4R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F4R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F4R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F4R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F4R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F4R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F4R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F4R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F4R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F4R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F4R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F4R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F4R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F4R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F4R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F4R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F4R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F5R2 register  *******************/
   CAN_F5R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F5R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F5R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F5R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F5R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F5R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F5R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F5R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F5R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F5R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F5R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F5R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F5R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F5R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F5R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F5R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F5R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F5R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F5R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F5R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F5R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F5R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F5R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F5R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F5R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F5R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F5R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F5R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F5R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F5R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F5R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F5R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F6R2 register  *******************/
   CAN_F6R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F6R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F6R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F6R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F6R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F6R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F6R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F6R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F6R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F6R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F6R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F6R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F6R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F6R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F6R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F6R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F6R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F6R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F6R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F6R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F6R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F6R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F6R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F6R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F6R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F6R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F6R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F6R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F6R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F6R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F6R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F6R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F7R2 register  *******************/
   CAN_F7R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F7R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F7R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F7R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F7R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F7R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F7R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F7R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F7R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F7R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F7R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F7R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F7R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F7R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F7R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F7R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F7R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F7R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F7R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F7R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F7R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F7R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F7R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F7R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F7R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F7R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F7R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F7R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F7R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F7R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F7R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F7R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F8R2 register  *******************/
   CAN_F8R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F8R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F8R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F8R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F8R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F8R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F8R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F8R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F8R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F8R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F8R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F8R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F8R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F8R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F8R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F8R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F8R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F8R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F8R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F8R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F8R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F8R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F8R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F8R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F8R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F8R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F8R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F8R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F8R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F8R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F8R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F8R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F9R2 register  *******************/
   CAN_F9R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F9R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F9R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F9R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F9R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F9R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F9R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F9R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F9R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F9R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F9R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F9R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F9R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F9R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F9R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F9R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F9R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F9R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F9R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F9R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F9R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F9R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F9R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F9R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F9R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F9R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F9R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F9R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F9R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F9R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F9R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F9R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F10R2 register  ******************/
   CAN_F10R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F10R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F10R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F10R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F10R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F10R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F10R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F10R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F10R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F10R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F10R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F10R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F10R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F10R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F10R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F10R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F10R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F10R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F10R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F10R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F10R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F10R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F10R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F10R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F10R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F10R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F10R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F10R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F10R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F10R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F10R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F10R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F11R2 register  ******************/
   CAN_F11R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F11R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F11R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F11R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F11R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F11R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F11R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F11R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F11R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F11R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F11R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F11R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F11R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F11R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F11R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F11R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F11R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F11R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F11R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F11R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F11R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F11R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F11R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F11R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F11R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F11R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F11R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F11R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F11R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F11R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F11R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F11R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F12R2 register  ******************/
   CAN_F12R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F12R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F12R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F12R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F12R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F12R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F12R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F12R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F12R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F12R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F12R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F12R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F12R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F12R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F12R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F12R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F12R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F12R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F12R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F12R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F12R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F12R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F12R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F12R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F12R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F12R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F12R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F12R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F12R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F12R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F12R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F12R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

-- /*******************  Bit definition for CAN_F13R2 register  ******************/
   CAN_F13R2_FB0  : constant Word := 16#00000001#;   -- /*!<Filter bit 0 */
   CAN_F13R2_FB1  : constant Word := 16#00000002#;   -- /*!<Filter bit 1 */
   CAN_F13R2_FB2  : constant Word := 16#00000004#;   -- /*!<Filter bit 2 */
   CAN_F13R2_FB3  : constant Word := 16#00000008#;   -- /*!<Filter bit 3 */
   CAN_F13R2_FB4  : constant Word := 16#00000010#;   -- /*!<Filter bit 4 */
   CAN_F13R2_FB5  : constant Word := 16#00000020#;   -- /*!<Filter bit 5 */
   CAN_F13R2_FB6  : constant Word := 16#00000040#;   -- /*!<Filter bit 6 */
   CAN_F13R2_FB7  : constant Word := 16#00000080#;   -- /*!<Filter bit 7 */
   CAN_F13R2_FB8  : constant Word := 16#00000100#;   -- /*!<Filter bit 8 */
   CAN_F13R2_FB9  : constant Word := 16#00000200#;   -- /*!<Filter bit 9 */
   CAN_F13R2_FB10 : constant Word := 16#00000400#;   -- /*!<Filter bit 10 */
   CAN_F13R2_FB11 : constant Word := 16#00000800#;   -- /*!<Filter bit 11 */
   CAN_F13R2_FB12 : constant Word := 16#00001000#;   -- /*!<Filter bit 12 */
   CAN_F13R2_FB13 : constant Word := 16#00002000#;   -- /*!<Filter bit 13 */
   CAN_F13R2_FB14 : constant Word := 16#00004000#;   -- /*!<Filter bit 14 */
   CAN_F13R2_FB15 : constant Word := 16#00008000#;   -- /*!<Filter bit 15 */
   CAN_F13R2_FB16 : constant Word := 16#00010000#;   -- /*!<Filter bit 16 */
   CAN_F13R2_FB17 : constant Word := 16#00020000#;   -- /*!<Filter bit 17 */
   CAN_F13R2_FB18 : constant Word := 16#00040000#;   -- /*!<Filter bit 18 */
   CAN_F13R2_FB19 : constant Word := 16#00080000#;   -- /*!<Filter bit 19 */
   CAN_F13R2_FB20 : constant Word := 16#00100000#;   -- /*!<Filter bit 20 */
   CAN_F13R2_FB21 : constant Word := 16#00200000#;   -- /*!<Filter bit 21 */
   CAN_F13R2_FB22 : constant Word := 16#00400000#;   -- /*!<Filter bit 22 */
   CAN_F13R2_FB23 : constant Word := 16#00800000#;   -- /*!<Filter bit 23 */
   CAN_F13R2_FB24 : constant Word := 16#01000000#;   -- /*!<Filter bit 24 */
   CAN_F13R2_FB25 : constant Word := 16#02000000#;   -- /*!<Filter bit 25 */
   CAN_F13R2_FB26 : constant Word := 16#04000000#;   -- /*!<Filter bit 26 */
   CAN_F13R2_FB27 : constant Word := 16#08000000#;   -- /*!<Filter bit 27 */
   CAN_F13R2_FB28 : constant Word := 16#10000000#;   -- /*!<Filter bit 28 */
   CAN_F13R2_FB29 : constant Word := 16#20000000#;   -- /*!<Filter bit 29 */
   CAN_F13R2_FB30 : constant Word := 16#40000000#;   -- /*!<Filter bit 30 */
   CAN_F13R2_FB31 : constant Word := 16#80000000#;   -- /*!<Filter bit 31 */

end stm32f407.registers.CAN;
