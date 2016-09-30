pragma Ada_2012;
pragma Style_Checks (Off);

--  with Interfaces.C; use Interfaces.C;
--  with HalDriver.ustdint_h;
--  limited with HalDriver.stm32f407xx_h;
--  with HalDriver.stm32f4xx_hal_def_h;
--with stm32f407.registers;

package stm32f407.Hal.gpio_ex is
--  /** 
--    * @brief   AF 0 selection  
--    */ 
--  #define GPIO_AF0_RTC_50Hz      ((uint8_t)0x00U)  /* RTC_50Hz Alternate Function mapping                       */
--  #define GPIO_AF0_MCO           ((uint8_t)0x00U)  /* MCO (MCO1 and MCO2) Alternate Function mapping            */
--  #define GPIO_AF0_TAMPER        ((uint8_t)0x00U)  /* TAMPER (TAMPER_1 and TAMPER_2) Alternate Function mapping */
--  #define GPIO_AF0_SWJ           ((uint8_t)0x00U)  /* SWJ (SWD and JTAG) Alternate Function mapping             */
--  #define GPIO_AF0_TRACE         ((uint8_t)0x00U)  /* TRACE Alternate Function mapping                          */
   type GPIO_AF_T is new Byte;
   GPIO_AF0_RTC_50Hz  : constant GPIO_AF_T := 16#00#;
   GPIO_AF0_MCO       : constant GPIO_AF_T := 16#00#;
   GPIO_AF0_TAMPER    : constant GPIO_AF_T := 16#00#;
   GPIO_AF0_SWJ       : constant GPIO_AF_T := 16#00#;
   GPIO_AF0_TRACE     : constant GPIO_AF_T := 16#00#;
   
--  /** 
--    * @brief   AF 1 selection  
--    */ 
--  #define GPIO_AF1_TIM1          ((uint8_t)0x01U)  /* TIM1 Alternate Function mapping */
--  #define GPIO_AF1_TIM2          ((uint8_t)0x01U)  /* TIM2 Alternate Function mapping */
--  
   GPIO_AF1_TIM1  : constant GPIO_AF_T := 16#01#;
   GPIO_AF1_TIM2  : constant GPIO_AF_T := 16#01#;

--  /** 
--    * @brief   AF 2 selection  
--    */ 
--  #define GPIO_AF2_TIM3          ((uint8_t)0x02U)  /* TIM3 Alternate Function mapping */
--  #define GPIO_AF2_TIM4          ((uint8_t)0x02U)  /* TIM4 Alternate Function mapping */
--  #define GPIO_AF2_TIM5          ((uint8_t)0x02U)  /* TIM5 Alternate Function mapping */

GPIO_AF2_TIM3: constant GPIO_AF_T := 16#02#;
GPIO_AF2_TIM4: constant GPIO_AF_T := 16#02#;
GPIO_AF2_TIM5: constant GPIO_AF_T := 16#02#;
--  
--  /** 
--    * @brief   AF 3 selection  
--    */ 
--  #define GPIO_AF3_TIM8          ((uint8_t)0x03U)  /* TIM8 Alternate Function mapping  */
--  #define GPIO_AF3_TIM9          ((uint8_t)0x03U)  /* TIM9 Alternate Function mapping  */
--  #define GPIO_AF3_TIM10         ((uint8_t)0x03U)  /* TIM10 Alternate Function mapping */
--  #define GPIO_AF3_TIM11         ((uint8_t)0x03U)  /* TIM11 Alternate Function mapping */

GPIO_AF3_TIM8         :constant GPIO_AF_T :=16#03#;
GPIO_AF3_TIM9         :constant GPIO_AF_T :=16#03#;
GPIO_AF3_TIM10        :constant GPIO_AF_T :=16#03#;
GPIO_AF3_TIM11        :constant GPIO_AF_T :=16#03#;
--  
--  /** 
--    * @brief   AF 4 selection  
--    */ 
--  #define GPIO_AF4_I2C1          ((uint8_t)0x04U)  /* I2C1 Alternate Function mapping */
--  #define GPIO_AF4_I2C2          ((uint8_t)0x04U)  /* I2C2 Alternate Function mapping */
--  #define GPIO_AF4_I2C3          ((uint8_t)0x04U)  /* I2C3 Alternate Function mapping */
GPIO_AF4_I2C1         :constant GPIO_AF_T :=16#04#;
GPIO_AF4_I2C2         :constant GPIO_AF_T :=16#04#;
GPIO_AF4_I2C3         :constant GPIO_AF_T :=16#04#;

--  
--  /** 
--    * @brief   AF 5 selection  
--    */ 
--  #define GPIO_AF5_SPI1          ((uint8_t)0x05U)  /* SPI1 Alternate Function mapping        */
--  #define GPIO_AF5_SPI2          ((uint8_t)0x05U)  /* SPI2/I2S2 Alternate Function mapping   */
--  #define GPIO_AF5_I2S3ext       ((uint8_t)0x05U)  /* I2S3ext_SD Alternate Function mapping  */
GPIO_AF5_SPI1         :constant GPIO_AF_T :=16#05#;
GPIO_AF5_SPI2         :constant GPIO_AF_T :=16#05#;
GPIO_AF5_I2S3ext      :constant GPIO_AF_T :=16#05#;

--  
--  /** 
--    * @brief   AF 6 selection  
--    */ 
--  #define GPIO_AF6_SPI3          ((uint8_t)0x06U)  /* SPI3/I2S3 Alternate Function mapping  */
--  #define GPIO_AF6_I2S2ext       ((uint8_t)0x06U)  /* I2S2ext_SD Alternate Function mapping */
 GPIO_AF6_SPI3         :constant GPIO_AF_T :=16#06#;
 GPIO_AF6_I2S2ext      :constant GPIO_AF_T :=16#06#;

--  
--  /** 
--    * @brief   AF 7 selection  
--    */ 
--  #define GPIO_AF7_USART1        ((uint8_t)0x07U)  /* USART1 Alternate Function mapping     */
--  #define GPIO_AF7_USART2        ((uint8_t)0x07U)  /* USART2 Alternate Function mapping     */
--  #define GPIO_AF7_USART3        ((uint8_t)0x07U)  /* USART3 Alternate Function mapping     */
--  #define GPIO_AF7_I2S3ext       ((uint8_t)0x07U)  /* I2S3ext_SD Alternate Function mapping */
GPIO_AF7_USART1        :constant GPIO_AF_T := 16#07#;
GPIO_AF7_USART2        :constant GPIO_AF_T := 16#07#;
GPIO_AF7_USART3        :constant GPIO_AF_T := 16#07#;
GPIO_AF7_I2S3ext       :constant GPIO_AF_T := 16#07#;

--  
--  /** 
--    * @brief   AF 8 selection  
--    */ 
--  #define GPIO_AF8_UART4         ((uint8_t)0x08U)  /* UART4 Alternate Function mapping  */
--  #define GPIO_AF8_UART5         ((uint8_t)0x08U)  /* UART5 Alternate Function mapping  */
--  #define GPIO_AF8_USART6        ((uint8_t)0x08U)  /* USART6 Alternate Function mapping */

GPIO_AF8_UART4         :constant GPIO_AF_T := 16#08#;
GPIO_AF8_UART5         :constant GPIO_AF_T := 16#08#;
GPIO_AF8_USART6        :constant GPIO_AF_T := 16#08#;
--  
--  /** 
--    * @brief   AF 9 selection 
--    */ 
--  #define GPIO_AF9_CAN1          ((uint8_t)0x09U)  /* CAN1 Alternate Function mapping  */
--  #define GPIO_AF9_CAN2          ((uint8_t)0x09U)  /* CAN2 Alternate Function mapping  */
--  #define GPIO_AF9_TIM12         ((uint8_t)0x09U)  /* TIM12 Alternate Function mapping */
--  #define GPIO_AF9_TIM13         ((uint8_t)0x09U)  /* TIM13 Alternate Function mapping */
--  #define GPIO_AF9_TIM14         ((uint8_t)0x09U)  /* TIM14 Alternate Function mapping */
GPIO_AF9_CAN1          :constant GPIO_AF_T := 16#09#;
GPIO_AF9_CAN2          :constant GPIO_AF_T := 16#09#;
GPIO_AF9_TIM12         :constant GPIO_AF_T := 16#09#;
GPIO_AF9_TIM13         :constant GPIO_AF_T := 16#09#;
GPIO_AF9_TIM14         :constant GPIO_AF_T := 16#09#;

--  
--  /** 
--    * @brief   AF 10 selection  
--    */ 
--  #define GPIO_AF10_OTG_FS        ((uint8_t)0x0AU)  /* OTG_FS Alternate Function mapping */
--  #define GPIO_AF10_OTG_HS        ((uint8_t)0x0AU)  /* OTG_HS Alternate Function mapping */
GPIO_AF10_OTG_FS        :constant GPIO_AF_T := 16#0A#;
GPIO_AF10_OTG_HS        :constant GPIO_AF_T := 16#0A#;

--  
--  /** 
--    * @brief   AF 11 selection  
--    */ 
--  #define GPIO_AF11_ETH           ((uint8_t)0x0BU)  /* ETHERNET Alternate Function mapping */
GPIO_AF11_ETH           :constant GPIO_AF_T := 16#0B#;
--  
--  /** 
--    * @brief   AF 12 selection  
--    */ 
--  #define GPIO_AF12_FSMC          ((uint8_t)0x0CU)  /* FSMC Alternate Function mapping                     */
--  #define GPIO_AF12_OTG_HS_FS     ((uint8_t)0x0CU)  /* OTG HS configured in FS, Alternate Function mapping */
--  #define GPIO_AF12_SDIO          ((uint8_t)0x0CU)  /* SDIO Alternate Function mapping                     */
GPIO_AF12_FSMC          :constant GPIO_AF_T := 16#0C#;
GPIO_AF12_OTG_HS_FS     :constant GPIO_AF_T := 16#0C#;
GPIO_AF12_SDIO          :constant GPIO_AF_T := 16#0C#;

--  
--  /** 
--    * @brief   AF 13 selection  
--    */ 
--  #define GPIO_AF13_DCMI          ((uint8_t)0x0DU)  /* DCMI Alternate Function mapping */
GPIO_AF13_DCMI          :constant GPIO_AF_T := 16#0D#;
--  
--  /** 
--    * @brief   AF 15 selection  
--    */ 
--  #define GPIO_AF15_EVENTOUT      ((uint8_t)0x0FU)  /* EVENTOUT Alternate Function mapping */
GPIO_AF15_EVENTOUT      :constant GPIO_AF_T := 16#0F#;
end stm32f407.Hal.gpio_ex;
