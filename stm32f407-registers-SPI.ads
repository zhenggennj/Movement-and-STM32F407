pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.spi is
  --*
   --  * @brief Serial Peripheral Interface
   --

  --!< SPI control register 1 (not used in I2S mode),      Address offset: 16#00
  --!< SPI control register 2,                             Address offset: 16#04
  --!< SPI status register,                                Address offset: 16#08
  --!< SPI data register,                                  Address offset: 16#0C
  --!< SPI CRC polynomial register (not used in I2S mode), Address offset: 16#10
  --!< SPI RX CRC register (not used in I2S mode),         Address offset: 16#14
  --!< SPI TX CRC register (not used in I2S mode),         Address offset: 16#18
  --!< SPI_I2S configuration register,                     Address offset: 16#1C
  --!< SPI_I2S prescaler register,                         Address offset: 16#20
   type SPI_Register is record
      CR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:732
      CR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:733
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:734
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:735
      CRCPR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:736
      RXCRCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:737
      TXCRCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:738
      I2SCFGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:739
      I2SPR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:740
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      SPI_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:741
   subtype SPI_TypeDef is SPI_Register;
   SPI1 : SPI_Register with
      Volatile,
      Address => System'To_Address (SPI1_BASE),
      Import;

   I2S2ext : SPI_Register with
      Volatile,
      Address => System'To_Address (I2S2ext_BASE),
      Import;

   SPI2 : SPI_Register with
      Volatile,
      Address => System'To_Address (SPI2_BASE),
      Import;
   SPI3 : SPI_Register with
      Volatile,
      Address => System'To_Address (SPI3_BASE),
      Import;
   I2S3ext : SPI_Register with
      Volatile,
      Address => System'To_Address (I2S3ext_BASE),
     Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                        Serial Peripheral Interface                         */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for SPI_CR1 register  ********************/
   SPI_CR1_CPHA                        :constant word :=16#00000001#;           -- /*!<Clock Phase      */
   SPI_CR1_CPOL                        :constant word :=16#00000002#;           -- /*!<Clock Polarity   */
   SPI_CR1_MSTR                        :constant word :=16#00000004#;           -- /*!<Master Selection */

   SPI_CR1_BR                          :constant word :=16#00000038#;           -- /*!<BR[2:0] bits (Baud Rate Control) */
   SPI_CR1_BR_0                        :constant word :=16#00000008#;           -- /*!<Bit 0 */
   SPI_CR1_BR_1                        :constant word :=16#00000010#;           -- /*!<Bit 1 */
   SPI_CR1_BR_2                        :constant word :=16#00000020#;           -- /*!<Bit 2 */

   SPI_CR1_SPE                         :constant word :=16#00000040#;           -- /*!<SPI Enable                          */
   SPI_CR1_LSBFIRST                    :constant word :=16#00000080#;           -- /*!<Frame Format                        */
   SPI_CR1_SSI                         :constant word :=16#00000100#;           -- /*!<Internal slave select               */
   SPI_CR1_SSM                         :constant word :=16#00000200#;           -- /*!<Software slave management           */
   SPI_CR1_RXONLY                      :constant word :=16#00000400#;           -- /*!<Receive only                        */
   SPI_CR1_DFF                         :constant word :=16#00000800#;           -- /*!<Data Frame Format                   */
   SPI_CR1_CRCNEXT                     :constant word :=16#00001000#;           -- /*!<Transmit CRC next                   */
   SPI_CR1_CRCEN                       :constant word :=16#00002000#;           -- /*!<Hardware CRC calculation enable     */
   SPI_CR1_BIDIOE                      :constant word :=16#00004000#;           -- /*!<Output enable in bidirectional mode */
   SPI_CR1_BIDIMODE                    :constant word :=16#00008000#;           -- /*!<Bidirectional data mode enable      */

-- /*******************  Bit definition for SPI_CR2 register  ********************/
   SPI_CR2_RXDMAEN                     :constant word :=16#00000001#;              -- /*!<Rx Buffer DMA Enable                 */
   SPI_CR2_TXDMAEN                     :constant word :=16#00000002#;              -- /*!<Tx Buffer DMA Enable                 */
   SPI_CR2_SSOE                        :constant word :=16#00000004#;              -- /*!<SS Output Enable                     */
   SPI_CR2_FRF                         :constant word :=16#00000010#;              -- /*!<Frame Format                         */
   SPI_CR2_ERRIE                       :constant word :=16#00000020#;              -- /*!<Error Interrupt Enable               */
   SPI_CR2_RXNEIE                      :constant word :=16#00000040#;              -- /*!<RX buffer Not Empty Interrupt Enable */
   SPI_CR2_TXEIE                       :constant word :=16#00000080#;              -- /*!<Tx buffer Empty Interrupt Enable     */

-- /********************  Bit definition for SPI_SR register  ********************/
   SPI_SR_RXNE                         :constant word :=16#00000001#;              -- /*!<Receive buffer Not Empty */
   SPI_SR_TXE                          :constant word :=16#00000002#;              -- /*!<Transmit buffer Empty    */
   SPI_SR_CHSIDE                       :constant word :=16#00000004#;              -- /*!<Channel side             */
   SPI_SR_UDR                          :constant word :=16#00000008#;              -- /*!<Underrun flag            */
   SPI_SR_CRCERR                       :constant word :=16#00000010#;              -- /*!<CRC Error flag           */
   SPI_SR_MODF                         :constant word :=16#00000020#;              -- /*!<Mode fault               */
   SPI_SR_OVR                          :constant word :=16#00000040#;              -- /*!<Overrun flag             */
   SPI_SR_BSY                          :constant word :=16#00000080#;              -- /*!<Busy flag                */
   SPI_SR_FRE                          :constant word :=16#00000100#;              -- /*!<Frame format error flag  */

-- /********************  Bit definition for SPI_DR register  ********************/
   SPI_DR_DR                           :constant word :=16#0000FFFF#;           -- /*!<Data Register           */

-- /*******************  Bit definition for SPI_CRCPR register  ******************/
   SPI_CRCPR_CRCPOLY                   :constant word :=16#0000FFFF#;           -- /*!<CRC polynomial register */

-- /******************  Bit definition for SPI_RXCRCR register  ******************/
   SPI_RXCRCR_RXCRC                    :constant word :=16#0000FFFF#;           -- /*!<Rx CRC Register         */

-- /******************  Bit definition for SPI_TXCRCR register  ******************/
   SPI_TXCRCR_TXCRC                    :constant word :=16#0000FFFF#;           -- /*!<Tx CRC Register         */

-- /******************  Bit definition for SPI_I2SCFGR register  *****************/
   SPI_I2SCFGR_CHLEN                   :constant word :=16#00000001#;           -- /*!<Channel length (number of bits per audio channel) */

   SPI_I2SCFGR_DATLEN                  :constant word :=16#00000006#;           -- /*!<DATLEN[1:0] bits (Data length to be transferred)  */
   SPI_I2SCFGR_DATLEN_0                :constant word :=16#00000002#;           -- /*!<Bit 0 */
   SPI_I2SCFGR_DATLEN_1                :constant word :=16#00000004#;           -- /*!<Bit 1 */

   SPI_I2SCFGR_CKPOL                   :constant word :=16#00000008#;           -- /*!<steady state clock polarity               */

   SPI_I2SCFGR_I2SSTD                  :constant word :=16#00000030#;           -- /*!<I2SSTD[1:0] bits (I2S standard selection) */
   SPI_I2SCFGR_I2SSTD_0                :constant word :=16#00000010#;           -- /*!<Bit 0 */
   SPI_I2SCFGR_I2SSTD_1                :constant word :=16#00000020#;           -- /*!<Bit 1 */

   SPI_I2SCFGR_PCMSYNC                 :constant word :=16#00000080#;           -- /*!<PCM frame synchronization                 */

   SPI_I2SCFGR_I2SCFG                  :constant word :=16#00000300#;           -- /*!<I2SCFG[1:0] bits (I2S configuration mode) */
   SPI_I2SCFGR_I2SCFG_0                :constant word :=16#00000100#;           -- /*!<Bit 0 */
   SPI_I2SCFGR_I2SCFG_1                :constant word :=16#00000200#;           -- /*!<Bit 1 */

   SPI_I2SCFGR_I2SE                    :constant word :=16#00000400#;           -- /*!<I2S Enable         */
   SPI_I2SCFGR_I2SMOD                  :constant word :=16#00000800#;           -- /*!<I2S mode selection */

-- /******************  Bit definition for SPI_I2SPR register  *******************/
   SPI_I2SPR_I2SDIV                    :constant word :=16#000000FF#;           -- /*!<I2S Linear prescaler         */
   SPI_I2SPR_ODD                       :constant word :=16#00000100#;           -- /*!<Odd factor for the prescaler */
   SPI_I2SPR_MCKOE                     :constant word :=16#00000200#;           -- /*!<Master Clock Output Enable   */



      end stm32f407.registers.spi;
