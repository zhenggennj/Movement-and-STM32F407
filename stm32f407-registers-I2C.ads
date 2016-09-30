pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.i2c is
  --*
   --  * @brief Inter-integrated Circuit Interface
   --

  --!< I2C Control register 1,     Address offset: 16#00
  --!< I2C Control register 2,     Address offset: 16#04
  --!< I2C Own address register 1, Address offset: 16#08
  --!< I2C Own address register 2, Address offset: 16#0C
  --!< I2C Data register,          Address offset: 16#10
  --!< I2C Status register 1,      Address offset: 16#14
  --!< I2C Status register 2,      Address offset: 16#18
  --!< I2C Clock control register, Address offset: 16#1C
  --!< I2C TRISE register,         Address offset: 16#20
  --!< I2C FLTR register,          Address offset: 16#24
   type I2C_Register is record
      CR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:576
      CR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:577
      OAR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:578
      OAR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:579
      DR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:580
      SR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:581
      SR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:582
      CCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:583
      TRISE : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:584
      FLTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:585
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      I2C_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:586
   subtype I2C_TypeDef is I2C_Register;     
      
   I2C1 : I2C_Register with
      Volatile,
      Address => System'To_Address (I2C1_BASE),
      Import;
   I2C2 : I2C_Register with
      Volatile,
      Address => System'To_Address (I2C2_BASE),
      Import;
   I2C3 : I2C_Register with
      Volatile,
      Address => System'To_Address (I2C3_BASE),
     Import;
   
 
-- /******************************************************************************/
-- /*                                                                            */
-- /*                      Inter-integrated Circuit Interface                    */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for I2C_CR1 register  ********************/
   I2C_CR1_PE                          :constant word :=16#00000001#;    -- /*!<Peripheral Enable                             */
   I2C_CR1_SMBUS                       :constant word :=16#00000002#;    -- /*!<SMBus Mode                                    */
   I2C_CR1_SMBTYPE                     :constant word :=16#00000008#;    -- /*!<SMBus Type                                    */
   I2C_CR1_ENARP                       :constant word :=16#00000010#;    -- /*!<ARP Enable                                    */
   I2C_CR1_ENPEC                       :constant word :=16#00000020#;    -- /*!<PEC Enable                                    */
   I2C_CR1_ENGC                        :constant word :=16#00000040#;    -- /*!<General Call Enable                           */
   I2C_CR1_NOSTRETCH                   :constant word :=16#00000080#;    -- /*!<Clock Stretching Disable (Slave mode)  */
   I2C_CR1_START                       :constant word :=16#00000100#;    -- /*!<Start Generation                              */
   I2C_CR1_STOP                        :constant word :=16#00000200#;    -- /*!<Stop Generation                               */
   I2C_CR1_ACK                         :constant word :=16#00000400#;    -- /*!<Acknowledge Enable                            */
   I2C_CR1_POS                         :constant word :=16#00000800#;    -- /*!<Acknowledge/PEC Position (for data reception) */
   I2C_CR1_PEC                         :constant word :=16#00001000#;    -- /*!<Packet Error Checking                         */
   I2C_CR1_ALERT                       :constant word :=16#00002000#;    -- /*!<SMBus Alert                                   */
   I2C_CR1_SWRST                       :constant word :=16#00008000#;    -- /*!<Software Reset                                */

-- /*******************  Bit definition for I2C_CR2 register  ********************/
   I2C_CR2_FREQ                        :constant word :=16#0000003F#;    -- /*!<FREQ[5:0] bits (Peripheral Clock Frequency)   */
   I2C_CR2_FREQ_0                      :constant word :=16#00000001#;    -- /*!<Bit 0 */
   I2C_CR2_FREQ_1                      :constant word :=16#00000002#;    -- /*!<Bit 1 */
   I2C_CR2_FREQ_2                      :constant word :=16#00000004#;    -- /*!<Bit 2 */
   I2C_CR2_FREQ_3                      :constant word :=16#00000008#;    -- /*!<Bit 3 */
   I2C_CR2_FREQ_4                      :constant word :=16#00000010#;    -- /*!<Bit 4 */
   I2C_CR2_FREQ_5                      :constant word :=16#00000020#;    -- /*!<Bit 5 */

   I2C_CR2_ITERREN                     :constant word :=16#00000100#;    -- /*!<Error Interrupt Enable  */
   I2C_CR2_ITEVTEN                     :constant word :=16#00000200#;    -- /*!<Event Interrupt Enable  */
   I2C_CR2_ITBUFEN                     :constant word :=16#00000400#;    -- /*!<Buffer Interrupt Enable */
   I2C_CR2_DMAEN                       :constant word :=16#00000800#;    -- /*!<DMA Requests Enable     */
   I2C_CR2_LAST                        :constant word :=16#00001000#;    -- /*!<DMA Last Transfer       */

-- /*******************  Bit definition for I2C_OAR1 register  *******************/
   I2C_OAR1_ADD1_7                     :constant word :=16#000000FE#;    -- /*!<Interface Address */
   I2C_OAR1_ADD8_9                     :constant word :=16#00000300#;    -- /*!<Interface Address */

   I2C_OAR1_ADD0                       :constant word :=16#00000001#;    -- /*!<Bit 0 */
   I2C_OAR1_ADD1                       :constant word :=16#00000002#;    -- /*!<Bit 1 */
   I2C_OAR1_ADD2                       :constant word :=16#00000004#;    -- /*!<Bit 2 */
   I2C_OAR1_ADD3                       :constant word :=16#00000008#;    -- /*!<Bit 3 */
   I2C_OAR1_ADD4                       :constant word :=16#00000010#;    -- /*!<Bit 4 */
   I2C_OAR1_ADD5                       :constant word :=16#00000020#;    -- /*!<Bit 5 */
   I2C_OAR1_ADD6                       :constant word :=16#00000040#;    -- /*!<Bit 6 */
   I2C_OAR1_ADD7                       :constant word :=16#00000080#;    -- /*!<Bit 7 */
   I2C_OAR1_ADD8                       :constant word :=16#00000100#;    -- /*!<Bit 8 */
   I2C_OAR1_ADD9                       :constant word :=16#00000200#;    -- /*!<Bit 9 */

   I2C_OAR1_ADDMODE                    :constant word :=16#00008000#;    -- /*!<Addressing Mode (Slave mode) */

-- /*******************  Bit definition for I2C_OAR2 register  *******************/
   I2C_OAR2_ENDUAL                     :constant word :=16#00000001#;       -- /*!<Dual addressing mode enable */
   I2C_OAR2_ADD2                       :constant word :=16#000000FE#;       -- /*!<Interface address           */

-- /********************  Bit definition for I2C_DR register  ********************/
   I2C_DR_DR                           :constant word :=16#000000FF#;       -- /*!<8-bit Data Register         */

-- /*******************  Bit definition for I2C_SR1 register  ********************/
   I2C_SR1_SB                          :constant word :=16#00000001#;    -- /*!<Start Bit (Master mode)                  */
   I2C_SR1_ADDR                        :constant word :=16#00000002#;    -- /*!<Address sent (master mode)/matched (slave mode) */
   I2C_SR1_BTF                         :constant word :=16#00000004#;    -- /*!<Byte Transfer Finished                          */
   I2C_SR1_ADD10                       :constant word :=16#00000008#;    -- /*!<10-bit header sent (Master mode)         */
   I2C_SR1_STOPF                       :constant word :=16#00000010#;    -- /*!<Stop detection (Slave mode)              */
   I2C_SR1_RXNE                        :constant word :=16#00000040#;    -- /*!<Data Register not Empty (receivers)      */
   I2C_SR1_TXE                         :constant word :=16#00000080#;    -- /*!<Data Register Empty (transmitters)       */
   I2C_SR1_BERR                        :constant word :=16#00000100#;    -- /*!<Bus Error                                       */
   I2C_SR1_ARLO                        :constant word :=16#00000200#;    -- /*!<Arbitration Lost (master mode)           */
   I2C_SR1_AF                          :constant word :=16#00000400#;    -- /*!<Acknowledge Failure                             */
   I2C_SR1_OVR                         :constant word :=16#00000800#;    -- /*!<Overrun/Underrun                                */
   I2C_SR1_PECERR                      :constant word :=16#00001000#;    -- /*!<PEC Error in reception                          */
   I2C_SR1_TIMEOUT                     :constant word :=16#00004000#;    -- /*!<Timeout or Tlow Error                           */
   I2C_SR1_SMBALERT                    :constant word :=16#00008000#;    -- /*!<SMBus Alert                                     */

-- /*******************  Bit definition for I2C_SR2 register  ********************/
   I2C_SR2_MSL                         :constant word :=16#00000001#;    -- /*!<Master/Slave                              */
   I2C_SR2_BUSY                        :constant word :=16#00000002#;    -- /*!<Bus Busy                                  */
   I2C_SR2_TRA                         :constant word :=16#00000004#;    -- /*!<Transmitter/Receiver                      */
   I2C_SR2_GENCALL                     :constant word :=16#00000010#;    -- /*!<General Call Address (Slave mode)  */
   I2C_SR2_SMBDEFAULT                  :constant word :=16#00000020#;    -- /*!<SMBus Device Default Address (Slave mode) */
   I2C_SR2_SMBHOST                     :constant word :=16#00000040#;    -- /*!<SMBus Host Header (Slave mode)     */
   I2C_SR2_DUALF                       :constant word :=16#00000080#;    -- /*!<Dual Flag (Slave mode)             */
   I2C_SR2_PEC                         :constant word :=16#0000FF00#;    -- /*!<Packet Error Checking Register            */

-- /*******************  Bit definition for I2C_CCR register  ********************/
   I2C_CCR_CCR                         :constant word :=16#00000FFF#;    -- /*!<Clock Control Register in Fast/Standard mode (Master mode) */
   I2C_CCR_DUTY                        :constant word :=16#00004000#;    -- /*!<Fast Mode Duty Cycle                                       */
   I2C_CCR_FS                          :constant word :=16#00008000#;    -- /*!<I2C Master Mode Selection                                  */

-- /******************  Bit definition for I2C_TRISE register  *******************/
   I2C_TRISE_TRISE                     :constant word :=16#0000003F#;    -- /*!<Maximum Rise Time in Fast/Standard mode (Master mode) */

-- /******************  Bit definition for I2C_FLTR register  *******************/
   I2C_FLTR_DNF                        :constant word :=16#0000000F#;    -- /*!<Digital Noise Filter */
   I2C_FLTR_ANOFF                      :constant word :=16#00000010#;    -- /*!<Analog Noise Filter OFF */
  
end stm32f407.registers.i2c;
