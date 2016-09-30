pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.sdio is
  --*
   --  * @brief SD host Interface
   --

  --!< SDIO power control register,    Address offset: 16#00
  --!< SDI clock control register,     Address offset: 16#04
  --!< SDIO argument register,         Address offset: 16#08
  --!< SDIO command register,          Address offset: 16#0C
  --!< SDIO command response register, Address offset: 16#10
  --!< SDIO response 1 register,       Address offset: 16#14
  --!< SDIO response 2 register,       Address offset: 16#18
  --!< SDIO response 3 register,       Address offset: 16#1C
  --!< SDIO response 4 register,       Address offset: 16#20
  --!< SDIO data timer register,       Address offset: 16#24
  --!< SDIO data length register,      Address offset: 16#28
  --!< SDIO data control register,     Address offset: 16#2C
  --!< SDIO data counter register,     Address offset: 16#30
  --!< SDIO status register,           Address offset: 16#34
  --!< SDIO interrupt clear register,  Address offset: 16#38
  --!< SDIO mask register,             Address offset: 16#3C
  --!< Reserved, 16#40-:constant word :=16#44
  --!< SDIO FIFO counter register,     Address offset: 16#48
  --!< Reserved, 16#4C-:constant word :=16#7C
  --!< SDIO data FIFO register,        Address offset: 16#80
   type SDIO_Register_RESERVED0_array is array (0 .. 1) of aliased Word;
   type SDIO_Register_RESERVED1_array is array (0 .. 12) of aliased Word;
   type SDIO_Register is record
      POWER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:704
      CLKCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:705
      ARG : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:706
      CMD : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:707
      RESPCMD : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:708
      RESP1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:709
      RESP2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:710
      RESP3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:711
      RESP4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:712
      DTIMER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:713
      DLEN : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:714
      DCTRL : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:715
      DCOUNT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:716
      STA : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:717
      ICR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:718
      MASK : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:719
      RESERVED0 : aliased SDIO_Register_RESERVED0_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:720
      FIFOCNT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:721
      RESERVED1 : aliased SDIO_Register_RESERVED1_array;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:722
      FIFO : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:723
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      SDIO_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:724
   subtype SDIO_TypeDef is SDIO_Register;

   SDIO : SDIO_Register with
      Volatile,
      Address => System'To_Address (SDIO_BASE),
      Import;



-- /******************************************************************************/
-- /*                                                                            */
-- /*                          SD host Interface                                 */
-- /*                                                                            */
-- /******************************************************************************/
-- /******************  Bit definition for SDIO_POWER register  ******************/
   SDIO_POWER_PWRCTRL                  :constant word :=16#03#;              -- /*!<PWRCTRL[1:0] bits (Power supply control bits) */
   SDIO_POWER_PWRCTRL_0                :constant word :=16#01#;              -- /*!<Bit 0 */
   SDIO_POWER_PWRCTRL_1                :constant word :=16#02#;              -- /*!<Bit 1 */

-- /******************  Bit definition for SDIO_CLKCR register  ******************/
   SDIO_CLKCR_CLKDIV                   :constant word :=16#00FF#;           -- /*!<Clock divide factor             */
   SDIO_CLKCR_CLKEN                    :constant word :=16#0100#;           -- /*!<Clock enable bit                */
   SDIO_CLKCR_PWRSAV                   :constant word :=16#0200#;           -- /*!<Power saving configuration bit  */
   SDIO_CLKCR_BYPASS                   :constant word :=16#0400#;           -- /*!<Clock divider bypass enable bit */

   SDIO_CLKCR_WIDBUS                   :constant word :=16#1800#;           -- /*!<WIDBUS[1:0] bits (Wide bus mode enable bit) */
   SDIO_CLKCR_WIDBUS_0                 :constant word :=16#0800#;           -- /*!<Bit 0 */
   SDIO_CLKCR_WIDBUS_1                 :constant word :=16#1000#;           -- /*!<Bit 1 */

   SDIO_CLKCR_NEGEDGE                  :constant word :=16#2000#;           -- /*!<SDIO_CK dephasing selection bit */
   SDIO_CLKCR_HWFC_EN                  :constant word :=16#4000#;           -- /*!<HW Flow Control enable          */

-- /*******************  Bit definition for SDIO_ARG register  *******************/
   SDIO_ARG_CMDARG                     :constant word :=16#FFFFFFFF#;           -- /*!<Command argument */

-- /*******************  Bit definition for SDIO_CMD register  *******************/
   SDIO_CMD_CMDINDEX                   :constant word :=16#003F#;           -- /*!<Command Index                               */

   SDIO_CMD_WAITRESP                   :constant word :=16#00C0#;           -- /*!<WAITRESP[1:0] bits (Wait for response bits) */
   SDIO_CMD_WAITRESP_0                 :constant word :=16#0040#;           -- /*!< Bit 0 */
   SDIO_CMD_WAITRESP_1                 :constant word :=16#0080#;           -- /*!< Bit 1 */

   SDIO_CMD_WAITINT                    :constant word :=16#0100#;           -- /*!<CPSM Waits for Interrupt Request                               */
   SDIO_CMD_WAITPEND                   :constant word :=16#0200#;           -- /*!<CPSM Waits for ends of data transfer (CmdPend internal signal) */
   SDIO_CMD_CPSMEN                     :constant word :=16#0400#;           -- /*!<Command path state machine (CPSM) Enable bit                   */
   SDIO_CMD_SDIOSUSPEND                :constant word :=16#0800#;           -- /*!<SD I/O suspend command                                         */
   SDIO_CMD_ENCMDCOMPL                 :constant word :=16#1000#;           -- /*!<Enable CMD completion                                          */
   SDIO_CMD_NIEN                       :constant word :=16#2000#;           -- /*!<Not Interrupt Enable */
   SDIO_CMD_CEATACMD                   :constant word :=16#4000#;           -- /*!<CE-ATA command       */

-- /*****************  Bit definition for SDIO_RESPCMD register  *****************/
   SDIO_RESPCMD_RESPCMD                :constant word :=16#3F#;              -- /*!<Response command index */

-- /******************  Bit definition for SDIO_RESP0 register  ******************/
   SDIO_RESP0_CARDSTATUS0              :constant word :=16#FFFFFFFF#;       -- /*!<Card Status */

-- /******************  Bit definition for SDIO_RESP1 register  ******************/
   SDIO_RESP1_CARDSTATUS1              :constant word :=16#FFFFFFFF#;       -- /*!<Card Status */

-- /******************  Bit definition for SDIO_RESP2 register  ******************/
   SDIO_RESP2_CARDSTATUS2              :constant word :=16#FFFFFFFF#;       -- /*!<Card Status */

-- /******************  Bit definition for SDIO_RESP3 register  ******************/
   SDIO_RESP3_CARDSTATUS3              :constant word :=16#FFFFFFFF#;       -- /*!<Card Status */

-- /******************  Bit definition for SDIO_RESP4 register  ******************/
   SDIO_RESP4_CARDSTATUS4              :constant word :=16#FFFFFFFF#;       -- /*!<Card Status */

-- /******************  Bit definition for SDIO_DTIMER register  *****************/
   SDIO_DTIMER_DATATIME                :constant word :=16#FFFFFFFF#;       -- /*!<Data timeout period. */

-- /******************  Bit definition for SDIO_DLEN register  *******************/
   SDIO_DLEN_DATALENGTH                :constant word :=16#01FFFFFF#;       -- /*!<Data length value    */

-- /******************  Bit definition for SDIO_DCTRL register  ******************/
   SDIO_DCTRL_DTEN                     :constant word :=16#0001#;           -- /*!<Data transfer enabled bit         */
   SDIO_DCTRL_DTDIR                    :constant word :=16#0002#;           -- /*!<Data transfer direction selection */
   SDIO_DCTRL_DTMODE                   :constant word :=16#0004#;           -- /*!<Data transfer mode selection      */
   SDIO_DCTRL_DMAEN                    :constant word :=16#0008#;           -- /*!<DMA enabled bit                   */

   SDIO_DCTRL_DBLOCKSIZE               :constant word :=16#00F0#;           -- /*!<DBLOCKSIZE[3:0] bits (Data block size) */
   SDIO_DCTRL_DBLOCKSIZE_0             :constant word :=16#0010#;           -- /*!<Bit 0 */
   SDIO_DCTRL_DBLOCKSIZE_1             :constant word :=16#0020#;           -- /*!<Bit 1 */
   SDIO_DCTRL_DBLOCKSIZE_2             :constant word :=16#0040#;           -- /*!<Bit 2 */
   SDIO_DCTRL_DBLOCKSIZE_3             :constant word :=16#0080#;           -- /*!<Bit 3 */

   SDIO_DCTRL_RWSTART                  :constant word :=16#0100#;           -- /*!<Read wait start         */
   SDIO_DCTRL_RWSTOP                   :constant word :=16#0200#;           -- /*!<Read wait stop          */
   SDIO_DCTRL_RWMOD                    :constant word :=16#0400#;           -- /*!<Read wait mode          */
   SDIO_DCTRL_SDIOEN                   :constant word :=16#0800#;           -- /*!<SD I/O enable functions */

-- /******************  Bit definition for SDIO_DCOUNT register  *****************/
   SDIO_DCOUNT_DATACOUNT               :constant word :=16#01FFFFFF#;       -- /*!<Data count value */

-- /******************  Bit definition for SDIO_STA register  ********************/
   SDIO_STA_CCRCFAIL                   :constant word :=16#00000001#;       -- /*!<Command response received (CRC check failed)  */
   SDIO_STA_DCRCFAIL                   :constant word :=16#00000002#;       -- /*!<Data block sent/received (CRC check failed)   */
   SDIO_STA_CTIMEOUT                   :constant word :=16#00000004#;       -- /*!<Command response timeout                      */
   SDIO_STA_DTIMEOUT                   :constant word :=16#00000008#;       -- /*!<Data timeout                                  */
   SDIO_STA_TXUNDERR                   :constant word :=16#00000010#;       -- /*!<Transmit FIFO underrun error                  */
   SDIO_STA_RXOVERR                    :constant word :=16#00000020#;       -- /*!<Received FIFO overrun error                   */
   SDIO_STA_CMDREND                    :constant word :=16#00000040#;       -- /*!<Command response received (CRC check passed)  */
   SDIO_STA_CMDSENT                    :constant word :=16#00000080#;       -- /*!<Command sent (no response required)           */
   SDIO_STA_DATAEND                    :constant word :=16#00000100#;       -- /*!<Data end (data counter, SDIDCOUNT, is zero)   */
   SDIO_STA_STBITERR                   :constant word :=16#00000200#;       -- /*!<Start bit not detected on all data signals in wide bus mode */
   SDIO_STA_DBCKEND                    :constant word :=16#00000400#;       -- /*!<Data block sent/received (CRC check passed)   */
   SDIO_STA_CMDACT                     :constant word :=16#00000800#;       -- /*!<Command transfer in progress                  */
   SDIO_STA_TXACT                      :constant word :=16#00001000#;       -- /*!<Data transmit in progress                     */
   SDIO_STA_RXACT                      :constant word :=16#00002000#;       -- /*!<Data receive in progress                      */
   SDIO_STA_TXFIFOHE                   :constant word :=16#00004000#;       -- /*!<Transmit FIFO Half Empty: at least 8 words can be written into the FIFO */
   SDIO_STA_RXFIFOHF                   :constant word :=16#00008000#;       -- /*!<Receive FIFO Half Full: there are at least 8 words in the FIFO */
   SDIO_STA_TXFIFOF                    :constant word :=16#00010000#;       -- /*!<Transmit FIFO full                            */
   SDIO_STA_RXFIFOF                    :constant word :=16#00020000#;       -- /*!<Receive FIFO full                             */
   SDIO_STA_TXFIFOE                    :constant word :=16#00040000#;       -- /*!<Transmit FIFO empty                           */
   SDIO_STA_RXFIFOE                    :constant word :=16#00080000#;       -- /*!<Receive FIFO empty                            */
   SDIO_STA_TXDAVL                     :constant word :=16#00100000#;       -- /*!<Data available in transmit FIFO               */
   SDIO_STA_RXDAVL                     :constant word :=16#00200000#;       -- /*!<Data available in receive FIFO                */
   SDIO_STA_SDIOIT                     :constant word :=16#00400000#;       -- /*!<SDIO interrupt received                       */
   SDIO_STA_CEATAEND                   :constant word :=16#00800000#;       -- /*!<CE-ATA command completion signal received for CMD61 */

-- /*******************  Bit definition for SDIO_ICR register  *******************/
   SDIO_ICR_CCRCFAILC                  :constant word :=16#00000001#;       -- /*!<CCRCFAIL flag clear bit */
   SDIO_ICR_DCRCFAILC                  :constant word :=16#00000002#;       -- /*!<DCRCFAIL flag clear bit */
   SDIO_ICR_CTIMEOUTC                  :constant word :=16#00000004#;       -- /*!<CTIMEOUT flag clear bit */
   SDIO_ICR_DTIMEOUTC                  :constant word :=16#00000008#;       -- /*!<DTIMEOUT flag clear bit */
   SDIO_ICR_TXUNDERRC                  :constant word :=16#00000010#;       -- /*!<TXUNDERR flag clear bit */
   SDIO_ICR_RXOVERRC                   :constant word :=16#00000020#;       -- /*!<RXOVERR flag clear bit  */
   SDIO_ICR_CMDRENDC                   :constant word :=16#00000040#;       -- /*!<CMDREND flag clear bit  */
   SDIO_ICR_CMDSENTC                   :constant word :=16#00000080#;       -- /*!<CMDSENT flag clear bit  */
   SDIO_ICR_DATAENDC                   :constant word :=16#00000100#;       -- /*!<DATAEND flag clear bit  */
   SDIO_ICR_STBITERRC                  :constant word :=16#00000200#;       -- /*!<STBITERR flag clear bit */
   SDIO_ICR_DBCKENDC                   :constant word :=16#00000400#;       -- /*!<DBCKEND flag clear bit  */
   SDIO_ICR_SDIOITC                    :constant word :=16#00400000#;       -- /*!<SDIOIT flag clear bit   */
   SDIO_ICR_CEATAENDC                  :constant word :=16#00800000#;       -- /*!<CEATAEND flag clear bit */

-- /******************  Bit definition for SDIO_MASK register  *******************/
   SDIO_MASK_CCRCFAILIE                :constant word :=16#00000001#;       -- /*!<Command CRC Fail Interrupt Enable          */
   SDIO_MASK_DCRCFAILIE                :constant word :=16#00000002#;       -- /*!<Data CRC Fail Interrupt Enable             */
   SDIO_MASK_CTIMEOUTIE                :constant word :=16#00000004#;       -- /*!<Command TimeOut Interrupt Enable           */
   SDIO_MASK_DTIMEOUTIE                :constant word :=16#00000008#;       -- /*!<Data TimeOut Interrupt Enable              */
   SDIO_MASK_TXUNDERRIE                :constant word :=16#00000010#;       -- /*!<Tx FIFO UnderRun Error Interrupt Enable    */
   SDIO_MASK_RXOVERRIE                 :constant word :=16#00000020#;       -- /*!<Rx FIFO OverRun Error Interrupt Enable     */
   SDIO_MASK_CMDRENDIE                 :constant word :=16#00000040#;       -- /*!<Command Response Received Interrupt Enable */
   SDIO_MASK_CMDSENTIE                 :constant word :=16#00000080#;       -- /*!<Command Sent Interrupt Enable              */
   SDIO_MASK_DATAENDIE                 :constant word :=16#00000100#;       -- /*!<Data End Interrupt Enable                  */
   SDIO_MASK_STBITERRIE                :constant word :=16#00000200#;       -- /*!<Start Bit Error Interrupt Enable           */
   SDIO_MASK_DBCKENDIE                 :constant word :=16#00000400#;       -- /*!<Data Block End Interrupt Enable            */
   SDIO_MASK_CMDACTIE                  :constant word :=16#00000800#;       -- /*!<CCommand Acting Interrupt Enable           */
   SDIO_MASK_TXACTIE                   :constant word :=16#00001000#;       -- /*!<Data Transmit Acting Interrupt Enable      */
   SDIO_MASK_RXACTIE                   :constant word :=16#00002000#;       -- /*!<Data receive acting interrupt enabled      */
   SDIO_MASK_TXFIFOHEIE                :constant word :=16#00004000#;       -- /*!<Tx FIFO Half Empty interrupt Enable        */
   SDIO_MASK_RXFIFOHFIE                :constant word :=16#00008000#;       -- /*!<Rx FIFO Half Full interrupt Enable         */
   SDIO_MASK_TXFIFOFIE                 :constant word :=16#00010000#;       -- /*!<Tx FIFO Full interrupt Enable              */
   SDIO_MASK_RXFIFOFIE                 :constant word :=16#00020000#;       -- /*!<Rx FIFO Full interrupt Enable              */
   SDIO_MASK_TXFIFOEIE                 :constant word :=16#00040000#;       -- /*!<Tx FIFO Empty interrupt Enable             */
   SDIO_MASK_RXFIFOEIE                 :constant word :=16#00080000#;       -- /*!<Rx FIFO Empty interrupt Enable             */
   SDIO_MASK_TXDAVLIE                  :constant word :=16#00100000#;       -- /*!<Data available in Tx FIFO interrupt Enable */
   SDIO_MASK_RXDAVLIE                  :constant word :=16#00200000#;       -- /*!<Data available in Rx FIFO interrupt Enable */
   SDIO_MASK_SDIOITIE                  :constant word :=16#00400000#;       -- /*!<SDIO Mode Interrupt Received interrupt Enable */
   SDIO_MASK_CEATAENDIE                :constant word :=16#00800000#;       -- /*!<CE-ATA command completion signal received Interrupt Enable */

-- /*****************  Bit definition for SDIO_FIFOCNT register  *****************/
   SDIO_FIFOCNT_FIFOCOUNT              :constant word :=16#00FFFFFF#;       -- /*!<Remaining number of words to be written to or read from the FIFO */

-- /******************  Bit definition for SDIO_FIFO register  *******************/
   SDIO_FIFO_FIFODATA                  :constant word :=16#FFFFFFFF#;       -- /*!<Receive and transmit FIFO data */


end stm32f407.registers.sdio;
