pragma Ada_2012;
pragma Style_Checks (Off);
with System;
package stm32f407.registers.tim is
        --*
   --  * @brief TIM
   --

  --!< TIM control register 1,              Address offset: 16#00
  --!< TIM control register 2,              Address offset: 16#04
  --!< TIM slave mode control register,     Address offset: 16#08
  --!< TIM DMA/interrupt enable register,   Address offset: 16#0C
  --!< TIM status register,                 Address offset: 16#10
  --!< TIM event generation register,       Address offset: 16#14
  --!< TIM capture/compare mode register 1, Address offset: 16#18
  --!< TIM capture/compare mode register 2, Address offset: 16#1C
  --!< TIM capture/compare enable register, Address offset: 16#20
  --!< TIM counter register,                Address offset: 16#24
  --!< TIM prescaler,                       Address offset: 16#28
  --!< TIM auto-reload register,            Address offset: 16#2C
  --!< TIM repetition counter register,     Address offset: 16#30
  --!< TIM capture/compare register 1,      Address offset: 16#34
  --!< TIM capture/compare register 2,      Address offset: 16#38
  --!< TIM capture/compare register 3,      Address offset: 16#3C
  --!< TIM capture/compare register 4,      Address offset: 16#40
  --!< TIM break and dead-time register,    Address offset: 16#44
  --!< TIM DMA control register,            Address offset: 16#48
  --!< TIM DMA address for full transfer,   Address offset: 16#4C
  --!< TIM option register,                 Address offset: 16#50
   type TIM_Register is record
      CR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:749
      CR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:750
      SMCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:751
      DIER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:752
      SR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:753
      EGR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:754
      CCMR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:755
      CCMR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:756
      CCER : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:757
      CNT : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:758
      PSC : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:759
      ARR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:760
      RCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:761
      CCR1 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:762
      CCR2 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:763
      CCR3 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:764
      CCR4 : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:765
      BDTR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:766
      DCR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:767
      DMAR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:768
      c_OR : aliased Word;  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:769
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      TIM_Register);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f407xx.h:770
   subtype TIM_TypeDef is TIM_Register;

   TIM2 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM2_BASE),
      Import;
   TIM3 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM3_BASE),
      Import;
   TIM4 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM4_BASE),
      Import;
   TIM5 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM5_BASE),
      Import;
   TIM6 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM6_BASE),
      Import;
   TIM7 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM7_BASE),
      Import;

   TIM12 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM12_BASE),
      Import;
   TIM13 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM13_BASE),
      Import;
   TIM14 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM14_BASE),
      Import;

   TIM1 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM1_BASE),
      Import;
   TIM8 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM8_BASE),
      Import;
   TIM9 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM9_BASE),
      Import;
   TIM10 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM10_BASE),
      Import;
   TIM11 : TIM_Register with
      Volatile,
      Address => System'To_Address (TIM11_BASE),
     Import;


-- /******************************************************************************/
-- /*                                                                            */
-- /*                                    TIM                                     */
-- /*                                                                            */
-- /******************************************************************************/
-- /*******************  Bit definition for TIM_CR1 register  ********************/
   TIM_CR1_CEN                         :constant word :=16#0001#;           -- /*!<Counter enable        */
   TIM_CR1_UDIS                        :constant word :=16#0002#;           -- /*!<Update disable        */
   TIM_CR1_URS                         :constant word :=16#0004#;           -- /*!<Update request source */
   TIM_CR1_OPM                         :constant word :=16#0008#;           -- /*!<One pulse mode        */
   TIM_CR1_DIR                         :constant word :=16#0010#;           -- /*!<Direction             */

   TIM_CR1_CMS                         :constant word :=16#0060#;           -- /*!<CMS[1:0] bits (Center-aligned mode selection) */
   TIM_CR1_CMS_0                       :constant word :=16#0020#;           -- /*!<Bit 0 */
   TIM_CR1_CMS_1                       :constant word :=16#0040#;           -- /*!<Bit 1 */

   TIM_CR1_ARPE                        :constant word :=16#0080#;           -- /*!<Auto-reload preload enable     */

   TIM_CR1_CKD                         :constant word :=16#0300#;           -- /*!<CKD[1:0] bits (clock division) */
   TIM_CR1_CKD_0                       :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_CR1_CKD_1                       :constant word :=16#0200#;           -- /*!<Bit 1 */

-- /*******************  Bit definition for TIM_CR2 register  ********************/
   TIM_CR2_CCPC                        :constant word :=16#0001#;           -- /*!<Capture/Compare Preloaded Control        */
   TIM_CR2_CCUS                        :constant word :=16#0004#;           -- /*!<Capture/Compare Control Update Selection */
   TIM_CR2_CCDS                        :constant word :=16#0008#;           -- /*!<Capture/Compare DMA Selection            */

   TIM_CR2_MMS                         :constant word :=16#0070#;           -- /*!<MMS[2:0] bits (Master Mode Selection) */
   TIM_CR2_MMS_0                       :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_CR2_MMS_1                       :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_CR2_MMS_2                       :constant word :=16#0040#;           -- /*!<Bit 2 */

   TIM_CR2_TI1S                        :constant word :=16#0080#;           -- /*!<TI1 Selection */
   TIM_CR2_OIS1                        :constant word :=16#0100#;           -- /*!<Output Idle state 1 (OC1 output)  */
   TIM_CR2_OIS1N                       :constant word :=16#0200#;           -- /*!<Output Idle state 1 (OC1N output) */
   TIM_CR2_OIS2                        :constant word :=16#0400#;           -- /*!<Output Idle state 2 (OC2 output)  */
   TIM_CR2_OIS2N                       :constant word :=16#0800#;           -- /*!<Output Idle state 2 (OC2N output) */
   TIM_CR2_OIS3                        :constant word :=16#1000#;           -- /*!<Output Idle state 3 (OC3 output)  */
   TIM_CR2_OIS3N                       :constant word :=16#2000#;           -- /*!<Output Idle state 3 (OC3N output) */
   TIM_CR2_OIS4                        :constant word :=16#4000#;           -- /*!<Output Idle state 4 (OC4 output)  */

-- /*******************  Bit definition for TIM_SMCR register  *******************/
   TIM_SMCR_SMS                        :constant word :=16#0007#;           -- /*!<SMS[2:0] bits (Slave mode selection)    */
   TIM_SMCR_SMS_0                      :constant word :=16#0001#;           -- /*!<Bit 0 */
   TIM_SMCR_SMS_1                      :constant word :=16#0002#;           -- /*!<Bit 1 */
   TIM_SMCR_SMS_2                      :constant word :=16#0004#;           -- /*!<Bit 2 */

   TIM_SMCR_TS                         :constant word :=16#0070#;           -- /*!<TS[2:0] bits (Trigger selection)        */
   TIM_SMCR_TS_0                       :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_SMCR_TS_1                       :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_SMCR_TS_2                       :constant word :=16#0040#;           -- /*!<Bit 2 */

   TIM_SMCR_MSM                        :constant word :=16#0080#;           -- /*!<Master/slave mode                       */

   TIM_SMCR_ETF                        :constant word :=16#0F00#;           -- /*!<ETF[3:0] bits (External trigger filter) */
   TIM_SMCR_ETF_0                      :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_SMCR_ETF_1                      :constant word :=16#0200#;           -- /*!<Bit 1 */
   TIM_SMCR_ETF_2                      :constant word :=16#0400#;           -- /*!<Bit 2 */
   TIM_SMCR_ETF_3                      :constant word :=16#0800#;           -- /*!<Bit 3 */

   TIM_SMCR_ETPS                       :constant word :=16#3000#;           -- /*!<ETPS[1:0] bits (External trigger prescaler) */
   TIM_SMCR_ETPS_0                     :constant word :=16#1000#;           -- /*!<Bit 0 */
   TIM_SMCR_ETPS_1                     :constant word :=16#2000#;           -- /*!<Bit 1 */

   TIM_SMCR_ECE                        :constant word :=16#4000#;           -- /*!<External clock enable     */
   TIM_SMCR_ETP                        :constant word :=16#8000#;           -- /*!<External trigger polarity */

-- /*******************  Bit definition for TIM_DIER register  *******************/
   TIM_DIER_UIE                        :constant word :=16#0001#;           -- /*!<Update interrupt enable */
   TIM_DIER_CC1IE                      :constant word :=16#0002#;           -- /*!<Capture/Compare 1 interrupt enable   */
   TIM_DIER_CC2IE                      :constant word :=16#0004#;           -- /*!<Capture/Compare 2 interrupt enable   */
   TIM_DIER_CC3IE                      :constant word :=16#0008#;           -- /*!<Capture/Compare 3 interrupt enable   */
   TIM_DIER_CC4IE                      :constant word :=16#0010#;           -- /*!<Capture/Compare 4 interrupt enable   */
   TIM_DIER_COMIE                      :constant word :=16#0020#;           -- /*!<COM interrupt enable                 */
   TIM_DIER_TIE                        :constant word :=16#0040#;           -- /*!<Trigger interrupt enable             */
   TIM_DIER_BIE                        :constant word :=16#0080#;           -- /*!<Break interrupt enable               */
   TIM_DIER_UDE                        :constant word :=16#0100#;           -- /*!<Update DMA request enable            */
   TIM_DIER_CC1DE                      :constant word :=16#0200#;           -- /*!<Capture/Compare 1 DMA request enable */
   TIM_DIER_CC2DE                      :constant word :=16#0400#;           -- /*!<Capture/Compare 2 DMA request enable */
   TIM_DIER_CC3DE                      :constant word :=16#0800#;           -- /*!<Capture/Compare 3 DMA request enable */
   TIM_DIER_CC4DE                      :constant word :=16#1000#;           -- /*!<Capture/Compare 4 DMA request enable */
   TIM_DIER_COMDE                      :constant word :=16#2000#;           -- /*!<COM DMA request enable               */
   TIM_DIER_TDE                        :constant word :=16#4000#;           -- /*!<Trigger DMA request enable           */

-- /********************  Bit definition for TIM_SR register  ********************/
   TIM_SR_UIF                          :constant word :=16#0001#;           -- /*!<Update interrupt Flag              */
   TIM_SR_CC1IF                        :constant word :=16#0002#;           -- /*!<Capture/Compare 1 interrupt Flag   */
   TIM_SR_CC2IF                        :constant word :=16#0004#;           -- /*!<Capture/Compare 2 interrupt Flag   */
   TIM_SR_CC3IF                        :constant word :=16#0008#;           -- /*!<Capture/Compare 3 interrupt Flag   */
   TIM_SR_CC4IF                        :constant word :=16#0010#;           -- /*!<Capture/Compare 4 interrupt Flag   */
   TIM_SR_COMIF                        :constant word :=16#0020#;           -- /*!<COM interrupt Flag                 */
   TIM_SR_TIF                          :constant word :=16#0040#;           -- /*!<Trigger interrupt Flag             */
   TIM_SR_BIF                          :constant word :=16#0080#;           -- /*!<Break interrupt Flag               */
   TIM_SR_CC1OF                        :constant word :=16#0200#;           -- /*!<Capture/Compare 1 Overcapture Flag */
   TIM_SR_CC2OF                        :constant word :=16#0400#;           -- /*!<Capture/Compare 2 Overcapture Flag */
   TIM_SR_CC3OF                        :constant word :=16#0800#;           -- /*!<Capture/Compare 3 Overcapture Flag */
   TIM_SR_CC4OF                        :constant word :=16#1000#;           -- /*!<Capture/Compare 4 Overcapture Flag */

-- /*******************  Bit definition for TIM_EGR register  ********************/
   TIM_EGR_UG                          :constant word :=16#01#;              -- /*!<Update Generation                         */
   TIM_EGR_CC1G                        :constant word :=16#02#;              -- /*!<Capture/Compare 1 Generation              */
   TIM_EGR_CC2G                        :constant word :=16#04#;              -- /*!<Capture/Compare 2 Generation              */
   TIM_EGR_CC3G                        :constant word :=16#08#;              -- /*!<Capture/Compare 3 Generation              */
   TIM_EGR_CC4G                        :constant word :=16#10#;              -- /*!<Capture/Compare 4 Generation              */
   TIM_EGR_COMG                        :constant word :=16#20#;              -- /*!<Capture/Compare Control Update Generation */
   TIM_EGR_TG                          :constant word :=16#40#;              -- /*!<Trigger Generation                        */
   TIM_EGR_BG                          :constant word :=16#80#;              -- /*!<Break Generation                          */

-- /******************  Bit definition for TIM_CCMR1 register  *******************/
   TIM_CCMR1_CC1S                      :constant word :=16#0003#;           -- /*!<CC1S[1:0] bits (Capture/Compare 1 Selection) */
   TIM_CCMR1_CC1S_0                    :constant word :=16#0001#;           -- /*!<Bit 0 */
   TIM_CCMR1_CC1S_1                    :constant word :=16#0002#;           -- /*!<Bit 1 */

   TIM_CCMR1_OC1FE                     :constant word :=16#0004#;           -- /*!<Output Compare 1 Fast enable                 */
   TIM_CCMR1_OC1PE                     :constant word :=16#0008#;           -- /*!<Output Compare 1 Preload enable              */

   TIM_CCMR1_OC1M                      :constant word :=16#0070#;           -- /*!<OC1M[2:0] bits (Output Compare 1 Mode)       */
   TIM_CCMR1_OC1M_0                    :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_CCMR1_OC1M_1                    :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_CCMR1_OC1M_2                    :constant word :=16#0040#;           -- /*!<Bit 2 */

   TIM_CCMR1_OC1CE                     :constant word :=16#0080#;           -- /*!<Output Compare 1Clear Enable                 */

   TIM_CCMR1_CC2S                      :constant word :=16#0300#;           -- /*!<CC2S[1:0] bits (Capture/Compare 2 Selection) */
   TIM_CCMR1_CC2S_0                    :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_CCMR1_CC2S_1                    :constant word :=16#0200#;           -- /*!<Bit 1 */

   TIM_CCMR1_OC2FE                     :constant word :=16#0400#;           -- /*!<Output Compare 2 Fast enable                 */
   TIM_CCMR1_OC2PE                     :constant word :=16#0800#;           -- /*!<Output Compare 2 Preload enable              */

   TIM_CCMR1_OC2M                      :constant word :=16#7000#;           -- /*!<OC2M[2:0] bits (Output Compare 2 Mode)       */
   TIM_CCMR1_OC2M_0                    :constant word :=16#1000#;           -- /*!<Bit 0 */
   TIM_CCMR1_OC2M_1                    :constant word :=16#2000#;           -- /*!<Bit 1 */
   TIM_CCMR1_OC2M_2                    :constant word :=16#4000#;           -- /*!<Bit 2 */

   TIM_CCMR1_OC2CE                     :constant word :=16#8000#;           -- /*!<Output Compare 2 Clear Enable */

-- /*----------------------------------------------------------------------------*/

   TIM_CCMR1_IC1PSC                    :constant word :=16#000C#;           -- /*!<IC1PSC[1:0] bits (Input Capture 1 Prescaler) */
   TIM_CCMR1_IC1PSC_0                  :constant word :=16#0004#;           -- /*!<Bit 0 */
   TIM_CCMR1_IC1PSC_1                  :constant word :=16#0008#;           -- /*!<Bit 1 */

   TIM_CCMR1_IC1F                      :constant word :=16#00F0#;           -- /*!<IC1F[3:0] bits (Input Capture 1 Filter)      */
   TIM_CCMR1_IC1F_0                    :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_CCMR1_IC1F_1                    :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_CCMR1_IC1F_2                    :constant word :=16#0040#;           -- /*!<Bit 2 */
   TIM_CCMR1_IC1F_3                    :constant word :=16#0080#;           -- /*!<Bit 3 */

   TIM_CCMR1_IC2PSC                    :constant word :=16#0C00#;           -- /*!<IC2PSC[1:0] bits (Input Capture 2 Prescaler)  */
   TIM_CCMR1_IC2PSC_0                  :constant word :=16#0400#;           -- /*!<Bit 0 */
   TIM_CCMR1_IC2PSC_1                  :constant word :=16#0800#;           -- /*!<Bit 1 */

   TIM_CCMR1_IC2F                      :constant word :=16#F000#;           -- /*!<IC2F[3:0] bits (Input Capture 2 Filter)       */
   TIM_CCMR1_IC2F_0                    :constant word :=16#1000#;           -- /*!<Bit 0 */
   TIM_CCMR1_IC2F_1                    :constant word :=16#2000#;           -- /*!<Bit 1 */
   TIM_CCMR1_IC2F_2                    :constant word :=16#4000#;           -- /*!<Bit 2 */
   TIM_CCMR1_IC2F_3                    :constant word :=16#8000#;           -- /*!<Bit 3 */

-- /******************  Bit definition for TIM_CCMR2 register  *******************/
   TIM_CCMR2_CC3S                      :constant word :=16#0003#;           -- /*!<CC3S[1:0] bits (Capture/Compare 3 Selection)  */
   TIM_CCMR2_CC3S_0                    :constant word :=16#0001#;           -- /*!<Bit 0 */
   TIM_CCMR2_CC3S_1                    :constant word :=16#0002#;           -- /*!<Bit 1 */

   TIM_CCMR2_OC3FE                     :constant word :=16#0004#;           -- /*!<Output Compare 3 Fast enable           */
   TIM_CCMR2_OC3PE                     :constant word :=16#0008#;           -- /*!<Output Compare 3 Preload enable        */

   TIM_CCMR2_OC3M                      :constant word :=16#0070#;           -- /*!<OC3M[2:0] bits (Output Compare 3 Mode) */
   TIM_CCMR2_OC3M_0                    :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_CCMR2_OC3M_1                    :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_CCMR2_OC3M_2                    :constant word :=16#0040#;           -- /*!<Bit 2 */

   TIM_CCMR2_OC3CE                     :constant word :=16#0080#;           -- /*!<Output Compare 3 Clear Enable */

   TIM_CCMR2_CC4S                      :constant word :=16#0300#;           -- /*!<CC4S[1:0] bits (Capture/Compare 4 Selection) */
   TIM_CCMR2_CC4S_0                    :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_CCMR2_CC4S_1                    :constant word :=16#0200#;           -- /*!<Bit 1 */

   TIM_CCMR2_OC4FE                     :constant word :=16#0400#;           -- /*!<Output Compare 4 Fast enable    */
   TIM_CCMR2_OC4PE                     :constant word :=16#0800#;           -- /*!<Output Compare 4 Preload enable */

   TIM_CCMR2_OC4M                      :constant word :=16#7000#;           -- /*!<OC4M[2:0] bits (Output Compare 4 Mode) */
   TIM_CCMR2_OC4M_0                    :constant word :=16#1000#;           -- /*!<Bit 0 */
   TIM_CCMR2_OC4M_1                    :constant word :=16#2000#;           -- /*!<Bit 1 */
   TIM_CCMR2_OC4M_2                    :constant word :=16#4000#;           -- /*!<Bit 2 */

   TIM_CCMR2_OC4CE                     :constant word :=16#8000#;           -- /*!<Output Compare 4 Clear Enable */

-- /*----------------------------------------------------------------------------*/

   TIM_CCMR2_IC3PSC                    :constant word :=16#000C#;           -- /*!<IC3PSC[1:0] bits (Input Capture 3 Prescaler) */
   TIM_CCMR2_IC3PSC_0                  :constant word :=16#0004#;           -- /*!<Bit 0 */
   TIM_CCMR2_IC3PSC_1                  :constant word :=16#0008#;           -- /*!<Bit 1 */

   TIM_CCMR2_IC3F                      :constant word :=16#00F0#;           -- /*!<IC3F[3:0] bits (Input Capture 3 Filter) */
   TIM_CCMR2_IC3F_0                    :constant word :=16#0010#;           -- /*!<Bit 0 */
   TIM_CCMR2_IC3F_1                    :constant word :=16#0020#;           -- /*!<Bit 1 */
   TIM_CCMR2_IC3F_2                    :constant word :=16#0040#;           -- /*!<Bit 2 */
   TIM_CCMR2_IC3F_3                    :constant word :=16#0080#;           -- /*!<Bit 3 */

   TIM_CCMR2_IC4PSC                    :constant word :=16#0C00#;           -- /*!<IC4PSC[1:0] bits (Input Capture 4 Prescaler) */
   TIM_CCMR2_IC4PSC_0                  :constant word :=16#0400#;           -- /*!<Bit 0 */
   TIM_CCMR2_IC4PSC_1                  :constant word :=16#0800#;           -- /*!<Bit 1 */

   TIM_CCMR2_IC4F                      :constant word :=16#F000#;           -- /*!<IC4F[3:0] bits (Input Capture 4 Filter) */
   TIM_CCMR2_IC4F_0                    :constant word :=16#1000#;           -- /*!<Bit 0 */
   TIM_CCMR2_IC4F_1                    :constant word :=16#2000#;           -- /*!<Bit 1 */
   TIM_CCMR2_IC4F_2                    :constant word :=16#4000#;           -- /*!<Bit 2 */
   TIM_CCMR2_IC4F_3                    :constant word :=16#8000#;           -- /*!<Bit 3 */

-- /*******************  Bit definition for TIM_CCER register  *******************/
   TIM_CCER_CC1E                       :constant word :=16#0001#;           -- /*!<Capture/Compare 1 output enable                 */
   TIM_CCER_CC1P                       :constant word :=16#0002#;           -- /*!<Capture/Compare 1 output Polarity               */
   TIM_CCER_CC1NE                      :constant word :=16#0004#;           -- /*!<Capture/Compare 1 Complementary output enable   */
   TIM_CCER_CC1NP                      :constant word :=16#0008#;           -- /*!<Capture/Compare 1 Complementary output Polarity */
   TIM_CCER_CC2E                       :constant word :=16#0010#;           -- /*!<Capture/Compare 2 output enable                 */
   TIM_CCER_CC2P                       :constant word :=16#0020#;           -- /*!<Capture/Compare 2 output Polarity               */
   TIM_CCER_CC2NE                      :constant word :=16#0040#;           -- /*!<Capture/Compare 2 Complementary output enable   */
   TIM_CCER_CC2NP                      :constant word :=16#0080#;           -- /*!<Capture/Compare 2 Complementary output Polarity */
   TIM_CCER_CC3E                       :constant word :=16#0100#;           -- /*!<Capture/Compare 3 output enable                 */
   TIM_CCER_CC3P                       :constant word :=16#0200#;           -- /*!<Capture/Compare 3 output Polarity               */
   TIM_CCER_CC3NE                      :constant word :=16#0400#;           -- /*!<Capture/Compare 3 Complementary output enable   */
   TIM_CCER_CC3NP                      :constant word :=16#0800#;           -- /*!<Capture/Compare 3 Complementary output Polarity */
   TIM_CCER_CC4E                       :constant word :=16#1000#;           -- /*!<Capture/Compare 4 output enable                 */
   TIM_CCER_CC4P                       :constant word :=16#2000#;           -- /*!<Capture/Compare 4 output Polarity               */
   TIM_CCER_CC4NP                      :constant word :=16#8000#;           -- /*!<Capture/Compare 4 Complementary output Polarity */

-- /*******************  Bit definition for TIM_CNT register  ********************/
   TIM_CNT_CNT                         :constant word :=16#FFFF#;           -- /*!<Counter Value            */

-- /*******************  Bit definition for TIM_PSC register  ********************/
   TIM_PSC_PSC                         :constant word :=16#FFFF#;           -- /*!<Prescaler Value          */

-- /*******************  Bit definition for TIM_ARR register  ********************/
   TIM_ARR_ARR                         :constant word :=16#FFFF#;           -- /*!<actual auto-reload Value */

-- /*******************  Bit definition for TIM_RCR register  ********************/
   TIM_RCR_REP                         :constant word :=16#FF#;              -- /*!<Repetition Counter Value */

-- /*******************  Bit definition for TIM_CCR1 register  *******************/
   TIM_CCR1_CCR1                       :constant word :=16#FFFF#;           -- /*!<Capture/Compare 1 Value  */

-- /*******************  Bit definition for TIM_CCR2 register  *******************/
   TIM_CCR2_CCR2                       :constant word :=16#FFFF#;           -- /*!<Capture/Compare 2 Value  */

-- /*******************  Bit definition for TIM_CCR3 register  *******************/
   TIM_CCR3_CCR3                       :constant word :=16#FFFF#;           -- /*!<Capture/Compare 3 Value  */

-- /*******************  Bit definition for TIM_CCR4 register  *******************/
   TIM_CCR4_CCR4                       :constant word :=16#FFFF#;           -- /*!<Capture/Compare 4 Value  */

-- /*******************  Bit definition for TIM_BDTR register  *******************/
   TIM_BDTR_DTG                        :constant word :=16#00FF#;           -- /*!<DTG[0:7] bits (Dead-Time Generator set-up) */
   TIM_BDTR_DTG_0                      :constant word :=16#0001#;           -- /*!<Bit 0 */
   TIM_BDTR_DTG_1                      :constant word :=16#0002#;           -- /*!<Bit 1 */
   TIM_BDTR_DTG_2                      :constant word :=16#0004#;           -- /*!<Bit 2 */
   TIM_BDTR_DTG_3                      :constant word :=16#0008#;           -- /*!<Bit 3 */
   TIM_BDTR_DTG_4                      :constant word :=16#0010#;           -- /*!<Bit 4 */
   TIM_BDTR_DTG_5                      :constant word :=16#0020#;           -- /*!<Bit 5 */
   TIM_BDTR_DTG_6                      :constant word :=16#0040#;           -- /*!<Bit 6 */
   TIM_BDTR_DTG_7                      :constant word :=16#0080#;           -- /*!<Bit 7 */

   TIM_BDTR_LOCK                       :constant word :=16#0300#;           -- /*!<LOCK[1:0] bits (Lock Configuration) */
   TIM_BDTR_LOCK_0                     :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_BDTR_LOCK_1                     :constant word :=16#0200#;           -- /*!<Bit 1 */

   TIM_BDTR_OSSI                       :constant word :=16#0400#;           -- /*!<Off-State Selection for Idle mode */
   TIM_BDTR_OSSR                       :constant word :=16#0800#;           -- /*!<Off-State Selection for Run mode  */
   TIM_BDTR_BKE                        :constant word :=16#1000#;           -- /*!<Break enable                      */
   TIM_BDTR_BKP                        :constant word :=16#2000#;           -- /*!<Break Polarity                    */
   TIM_BDTR_AOE                        :constant word :=16#4000#;           -- /*!<Automatic Output enable           */
   TIM_BDTR_MOE                        :constant word :=16#8000#;           -- /*!<Main Output enable                */

-- /*******************  Bit definition for TIM_DCR register  ********************/
   TIM_DCR_DBA                         :constant word :=16#001F#;           -- /*!<DBA[4:0] bits (DMA Base Address) */
   TIM_DCR_DBA_0                       :constant word :=16#0001#;           -- /*!<Bit 0 */
   TIM_DCR_DBA_1                       :constant word :=16#0002#;           -- /*!<Bit 1 */
   TIM_DCR_DBA_2                       :constant word :=16#0004#;           -- /*!<Bit 2 */
   TIM_DCR_DBA_3                       :constant word :=16#0008#;           -- /*!<Bit 3 */
   TIM_DCR_DBA_4                       :constant word :=16#0010#;           -- /*!<Bit 4 */

   TIM_DCR_DBL                         :constant word :=16#1F00#;           -- /*!<DBL[4:0] bits (DMA Burst Length) */
   TIM_DCR_DBL_0                       :constant word :=16#0100#;           -- /*!<Bit 0 */
   TIM_DCR_DBL_1                       :constant word :=16#0200#;           -- /*!<Bit 1 */
   TIM_DCR_DBL_2                       :constant word :=16#0400#;           -- /*!<Bit 2 */
   TIM_DCR_DBL_3                       :constant word :=16#0800#;           -- /*!<Bit 3 */
   TIM_DCR_DBL_4                       :constant word :=16#1000#;           -- /*!<Bit 4 */

-- /*******************  Bit definition for TIM_DMAR register  *******************/
   TIM_DMAR_DMAB                       :constant word :=16#FFFF#;           -- /*!<DMA register for burst accesses                    */

-- /*******************  Bit definition for TIM_OR register  *********************/
  TIM_OR_TI4_RMP                       :constant word :=16#00C0#;           -- /*!<TI4_RMP[1:0] bits (TIM5 Input 4 remap)             */
  TIM_OR_TI4_RMP_0                     :constant word :=16#0040#;           -- /*!<Bit 0 */
  TIM_OR_TI4_RMP_1                     :constant word :=16#0080#;           -- /*!<Bit 1 */
  TIM_OR_ITR1_RMP                      :constant word :=16#0C00#;           -- /*!<ITR1_RMP[1:0] bits (TIM2 Internal trigger 1 remap) */
  TIM_OR_ITR1_RMP_0                    :constant word :=16#0400#;           -- /*!<Bit 0 */
  TIM_OR_ITR1_RMP_1                    :constant word :=16#0800#;           -- /*!<Bit 1 */





end stm32f407.registers.tim;
