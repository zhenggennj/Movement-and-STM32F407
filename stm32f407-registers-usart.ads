pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.usart is
  --*
   --  * @brief Universal Synchronous Asynchronous Receiver Transmitter
   --

  --!< USART Status register,                   Address offset: 16#00
  --!< USART Data register,                     Address offset: 16#04
  --!< USART Baud rate register,                Address offset: 16#08
  --!< USART Control register 1,                Address offset: 16#0C
  --!< USART Control register 2,                Address offset: 16#10
  --!< USART Control register 3,                Address offset: 16#14
  --!< USART Guard time and prescaler register, Address offset: 16#18
   type USART_Register is record
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:778
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:779
      BRR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:780
      CR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:781
      CR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:782
      CR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:783
      GTPR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:784
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      USART_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:785
   subtype USART_TypeDef is USART_Register;

   USART2 : USART_Register with
      Volatile,
      Address => System'To_Address (USART2_BASE),
      Import;
   USART3 : USART_Register with
      Volatile,
      Address => System'To_Address (USART3_BASE),
      Import;
   UART4 : USART_Register with
      Volatile,
      Address => System'To_Address (UART4_BASE),
      Import;
   UART5 : USART_Register with
      Volatile,
      Address => System'To_Address (UART5_BASE),
      Import;
   USART1 : USART_Register with
      Volatile,
      Address => System'To_Address (USART1_BASE),
      Import;
   USART6 : USART_Register with
      Volatile,
      Address => System'To_Address (USART6_BASE),
     Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*         Universal Synchronous Asynchronous Receiver Transmitter            */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for USART_SR register  *******************/
   USART_SR_PE                         :constant word :=16#0001#;           -- /*!<Parity Error                 */
   USART_SR_FE                         :constant word :=16#0002#;           -- /*!<Framing Error                */
   USART_SR_NE                         :constant word :=16#0004#;           -- /*!<Noise Error Flag             */
   USART_SR_ORE                        :constant word :=16#0008#;           -- /*!<OverRun Error                */
   USART_SR_IDLE                       :constant word :=16#0010#;           -- /*!<IDLE line detected           */
   USART_SR_RXNE                       :constant word :=16#0020#;           -- /*!<Read Data Register Not Empty */
   USART_SR_TC                         :constant word :=16#0040#;           -- /*!<Transmission Complete        */
   USART_SR_TXE                        :constant word :=16#0080#;           -- /*!<Transmit Data Register Empty */
   USART_SR_LBD                        :constant word :=16#0100#;           -- /*!<LIN Break Detection Flag     */
   USART_SR_CTS                        :constant word :=16#0200#;           -- /*!<CTS Flag                     */

-- /*******************  Bit definition for USART_DR register  *******************/
   USART_DR_DR                         :constant word :=16#01FF#;           -- /*!<Data value */

-- /******************  Bit definition for USART_BRR register  *******************/
   USART_BRR_DIV_Fraction              :constant word :=16#000F#;           -- /*!<Fraction of USARTDIV */
   USART_BRR_DIV_Mantissa              :constant word :=16#FFF0#;           -- /*!<Mantissa of USARTDIV */

-- /******************  Bit definition for USART_CR1 register  *******************/
   USART_CR1_SBK                       :constant word :=16#0001#;           -- /*!<Send Break                             */
   USART_CR1_RWU                       :constant word :=16#0002#;           -- /*!<Receiver wakeup                        */
   USART_CR1_RE                        :constant word :=16#0004#;           -- /*!<Receiver Enable                        */
   USART_CR1_TE                        :constant word :=16#0008#;           -- /*!<Transmitter Enable                     */
   USART_CR1_IDLEIE                    :constant word :=16#0010#;           -- /*!<IDLE Interrupt Enable                  */
   USART_CR1_RXNEIE                    :constant word :=16#0020#;           -- /*!<RXNE Interrupt Enable                  */
   USART_CR1_TCIE                      :constant word :=16#0040#;           -- /*!<Transmission Complete Interrupt Enable */
   USART_CR1_TXEIE                     :constant word :=16#0080#;           -- /*!<PE Interrupt Enable                    */
   USART_CR1_PEIE                      :constant word :=16#0100#;           -- /*!<PE Interrupt Enable                    */
   USART_CR1_PS                        :constant word :=16#0200#;           -- /*!<Parity Selection                       */
   USART_CR1_PCE                       :constant word :=16#0400#;           -- /*!<Parity Control Enable                  */
   USART_CR1_WAKE                      :constant word :=16#0800#;           -- /*!<Wakeup method                          */
   USART_CR1_M                         :constant word :=16#1000#;           -- /*!<Word length                            */
   USART_CR1_UE                        :constant word :=16#2000#;           -- /*!<USART Enable                           */
   USART_CR1_OVER8                     :constant word :=16#8000#;           -- /*!<USART Oversampling by 8 enable         */

-- /******************  Bit definition for USART_CR2 register  *******************/
   USART_CR2_ADD                       :constant word :=16#000F#;           -- /*!<Address of the USART node            */
   USART_CR2_LBDL                      :constant word :=16#0020#;           -- /*!<LIN Break Detection Length           */
   USART_CR2_LBDIE                     :constant word :=16#0040#;           -- /*!<LIN Break Detection Interrupt Enable */
   USART_CR2_LBCL                      :constant word :=16#0100#;           -- /*!<Last Bit Clock pulse                 */
   USART_CR2_CPHA                      :constant word :=16#0200#;           -- /*!<Clock Phase                          */
   USART_CR2_CPOL                      :constant word :=16#0400#;           -- /*!<Clock Polarity                       */
   USART_CR2_CLKEN                     :constant word :=16#0800#;           -- /*!<Clock Enable                         */

   USART_CR2_STOP                      :constant word :=16#3000#;           -- /*!<STOP[1:0] bits (STOP bits) */
   USART_CR2_STOP_0                    :constant word :=16#1000#;           -- /*!<Bit 0 */
   USART_CR2_STOP_1                    :constant word :=16#2000#;           -- /*!<Bit 1 */

   USART_CR2_LINEN                     :constant word :=16#4000#;           -- /*!<LIN mode enable */

-- /******************  Bit definition for USART_CR3 register  *******************/
   USART_CR3_EIE                       :constant word :=16#0001#;           -- /*!<Error Interrupt Enable      */
   USART_CR3_IREN                      :constant word :=16#0002#;           -- /*!<IrDA mode Enable            */
   USART_CR3_IRLP                      :constant word :=16#0004#;           -- /*!<IrDA Low-Power              */
   USART_CR3_HDSEL                     :constant word :=16#0008#;           -- /*!<Half-Duplex Selection       */
   USART_CR3_NACK                      :constant word :=16#0010#;           -- /*!<Smartcard NACK enable       */
   USART_CR3_SCEN                      :constant word :=16#0020#;           -- /*!<Smartcard mode enable       */
   USART_CR3_DMAR                      :constant word :=16#0040#;           -- /*!<DMA Enable Receiver         */
   USART_CR3_DMAT                      :constant word :=16#0080#;           -- /*!<DMA Enable Transmitter      */
   USART_CR3_RTSE                      :constant word :=16#0100#;           -- /*!<RTS Enable                  */
   USART_CR3_CTSE                      :constant word :=16#0200#;           -- /*!<CTS Enable                  */
   USART_CR3_CTSIE                     :constant word :=16#0400#;           -- /*!<CTS Interrupt Enable        */
   USART_CR3_ONEBIT                    :constant word :=16#0800#;           -- /*!<USART One bit method enable */

-- /******************  Bit definition for USART_GTPR register  ******************/
   USART_GTPR_PSC                      :constant word :=16#00FF#;           -- /*!<PSC[7:0] bits (Prescaler value) */
   USART_GTPR_PSC_0                    :constant word :=16#0001#;           -- /*!<Bit 0 */
   USART_GTPR_PSC_1                    :constant word :=16#0002#;           -- /*!<Bit 1 */
   USART_GTPR_PSC_2                    :constant word :=16#0004#;           -- /*!<Bit 2 */
   USART_GTPR_PSC_3                    :constant word :=16#0008#;           -- /*!<Bit 3 */
   USART_GTPR_PSC_4                    :constant word :=16#0010#;           -- /*!<Bit 4 */
   USART_GTPR_PSC_5                    :constant word :=16#0020#;           -- /*!<Bit 5 */
   USART_GTPR_PSC_6                    :constant word :=16#0040#;           -- /*!<Bit 6 */
   USART_GTPR_PSC_7                    :constant word :=16#0080#;           -- /*!<Bit 7 */

   USART_GTPR_GT                       :constant word :=16#FF00#;           -- /*!<Guard time value */



end stm32f407.registers.usart;
