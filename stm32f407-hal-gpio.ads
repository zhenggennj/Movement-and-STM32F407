pragma Ada_2012;
pragma Style_Checks (Off);

--  with Interfaces.C; use Interfaces.C;
--  with HalDriver.ustdint_h;
--  limited with HalDriver.stm32f407xx_h;
--  with HalDriver.stm32f4xx_hal_def_h;
with stm32f407.registers;
with stm32f407.Hal.gpio_ex;
package stm32f407.Hal.gpio is

   type GPIO_PIN_t is
     (GPIO_Pin_0,
      GPIO_Pin_1,
      GPIO_Pin_2,
      GPIO_Pin_3,
      GPIO_Pin_4,
      GPIO_Pin_5,
      GPIO_Pin_6,
      GPIO_Pin_7,
      GPIO_Pin_8,
      GPIO_Pin_9,
      GPIO_Pin_10,
      GPIO_Pin_11,
      GPIO_Pin_12,
      GPIO_Pin_13,
      GPIO_Pin_14,
      GPIO_Pin_15,
      GPIO_Pin_All) with
        Size => 16;

   for GPIO_PIN_t use
     (GPIO_Pin_0   => 16#0001#,
      GPIO_Pin_1   => 16#0002#,
      GPIO_Pin_2   => 16#0004#,
      GPIO_Pin_3   => 16#0008#,
      GPIO_Pin_4   => 16#0010#,
      GPIO_Pin_5   => 16#0020#,
      GPIO_Pin_6   => 16#0040#,
      GPIO_Pin_7   => 16#0080#,
      GPIO_Pin_8   => 16#0100#,
      GPIO_Pin_9   => 16#0200#,
      GPIO_Pin_10  => 16#0400#,
      GPIO_Pin_11  => 16#0800#,
      GPIO_Pin_12  => 16#1000#,
      GPIO_Pin_13  => 16#2000#,
      GPIO_Pin_14  => 16#4000#,
      GPIO_Pin_15  => 16#8000#,
      GPIO_Pin_All => 16#FFFF#);
   --  unsupported macro: GPIO_PIN_MASK ((uint32_t)0x0000FFFFU)
   type GPIO_Mode_TypeDef is
     (GPIO_MODE_INPUT,
      GPIO_MODE_OUTPUT_PP,
      GPIO_MODE_AF_PP,
      GPIO_MODE_ANALOG,
      GPIO_MODE_OUTPUT_OD,
      GPIO_MODE_AF_OD,
      GPIO_MODE_IT_RISING,
      GPIO_MODE_EVT_RISING,
      GPIO_MODE_IT_FALLING,
      GPIO_MODE_EVT_FALLING,
      GPIO_MODE_IT_RISING_FALLING,
      GPIO_MODE_EVT_RISING_FALLING) with
        Size => 32;
   for GPIO_Mode_TypeDef use
     (GPIO_MODE_INPUT              => 16#00000000#,
      GPIO_MODE_OUTPUT_PP          => 16#00000001#,
      GPIO_MODE_AF_PP              => 16#00000002#,
      GPIO_MODE_ANALOG             => 16#00000003#,
      GPIO_MODE_OUTPUT_OD          => 16#00000011#,
      GPIO_MODE_AF_OD              => 16#00000012#,
      GPIO_MODE_IT_RISING          => 16#10110000#,
      GPIO_MODE_EVT_RISING         => 16#10120000#,
      GPIO_MODE_IT_FALLING         => 16#10210000#,
      GPIO_MODE_EVT_FALLING        => 16#10220000#,
      GPIO_MODE_IT_RISING_FALLING  => 16#10310000#,
      GPIO_MODE_EVT_RISING_FALLING => 16#10320000#);

   type GPIO_SPEED_TypeDef is
     (GPIO_SPEED_FREQ_LOW,
      GPIO_SPEED_FREQ_MEDIUM,
      GPIO_SPEED_FREQ_HIGH,
      GPIO_SPEED_FREQ_VERY_HIGH) with
        Size => 32;
   for GPIO_SPEED_TypeDef use
     (GPIO_SPEED_FREQ_LOW       => 16#00000000#,
      GPIO_SPEED_FREQ_MEDIUM    => 16#00000001#,
      GPIO_SPEED_FREQ_HIGH      => 16#00000002#,
      GPIO_SPEED_FREQ_VERY_HIGH => 16#00000003#);

   GPIO_Speed_2MHz   : constant GPIO_Speed_TypeDef := GPIO_SPEED_FREQ_LOW;
   GPIO_Speed_25MHz  : constant GPIO_Speed_TypeDef := GPIO_SPEED_FREQ_MEDIUM;
   GPIO_Speed_50MHz  : constant GPIO_Speed_TypeDef := GPIO_SPEED_FREQ_HIGH;
   GPIO_Speed_100MHz : constant GPIO_Speed_TypeDef := GPIO_SPEED_FREQ_VERY_HIGH;

   type GPIO_PULL_TypeDef is (GPIO_NOPULL, GPIO_PULLUP, GPIO_PULLDOWN) with
        Size => 32;
   for GPIO_PULL_TypeDef use
     (GPIO_NOPULL   => 16#00000000#,
      GPIO_PULLUP   => 16#00000001#,
      GPIO_PULLDOWN => 16#00000002#);
   --  arg-macro: function IS_GPIO_PIN_ACTION (ACTION)
--    return ((ACTION) = GPIO_PIN_RESET)  or else  ((ACTION) = GPIO_PIN_SET);
   --  arg-macro: function IS_GPIO_PIN (PIN)
   --    return ((PIN) and GPIO_PIN_MASK ) /= (uint32_t)0x00U;
   --  arg-macro: function IS_GPIO_MODE (MODE)
   --    return ((MODE) = GPIO_MODE_INPUT)  or else  ((MODE) = GPIO_MODE_OUTPUT_PP)  or else  ((MODE) = GPIO_MODE_OUTPUT_OD)  or else  ((MODE) = GPIO_MODE_AF_PP)  or else  ((MODE) = GPIO_MODE_AF_OD)  or else  ((MODE) = GPIO_MODE_IT_RISING)  or else  ((MODE) = GPIO_MODE_IT_FALLING)  or else  ((MODE) = GPIO_MODE_IT_RISING_FALLING)  or else  ((MODE) = GPIO_MODE_EVT_RISING)  or else  ((MODE) = GPIO_MODE_EVT_FALLING)  or else  ((MODE) = GPIO_MODE_EVT_RISING_FALLING)  or else  ((MODE) = GPIO_MODE_ANALOG);
   --  arg-macro: function IS_GPIO_SPEED (SPEED)
   --    return ((SPEED) = GPIO_SPEED_FREQ_LOW)  or else  ((SPEED) = GPIO_SPEED_FREQ_MEDIUM)  or else  ((SPEED) = GPIO_SPEED_FREQ_HIGH)  or else  ((SPEED) = GPIO_SPEED_FREQ_VERY_HIGH);
   --  arg-macro: function IS_GPIO_PULL (PULL)
   --    return ((PULL) = GPIO_NOPULL)  or else  ((PULL) = GPIO_PULLUP)  or else  ((PULL) = GPIO_PULLDOWN);
  --*
   --  ******************************************************************************
   --  * @file    stm32f4xx_hal_gpio.h
   --  * @author  MCD Application Team
   --  * @version V1.5.0
   --  * @date    06-May-2016
   --  * @brief   Header file of GPIO HAL module.
   --  ******************************************************************************
   --  * @attention
   --  *
   --  * <h2><center>&copy; COPYRIGHT(c) 2016 STMicroelectronics</center></h2>
   --  *
   --  * Redistribution and use in source and binary forms, with or without modification,
   --  * are permitted provided that the following conditions are met:
   --  *   1. Redistributions of source code must retain the above copyright notice,
   --  *      this list of conditions and the following disclaimer.
   --  *   2. Redistributions in binary form must reproduce the above copyright notice,
   --  *      this list of conditions and the following disclaimer in the documentation
   --  *      and/or other materials provided with the distribution.
   --  *   3. Neither the name of STMicroelectronics nor the names of its contributors
   --  *      may be used to endorse or promote products derived from this software
   --  *      without specific prior written permission.
   --  *
   --  * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   --  * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   --  * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
   --  * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
   --  * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
   --  * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
   --  * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
   --  * CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
   --  * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
   --  * OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
   --  *
   --  ******************************************************************************
   --

-- Define to prevent recursive inclusion -------------------------------------
-- Includes ------------------------------------------------------------------
  --* @addtogroup STM32F4xx_HAL_Driver
   --  * @{
   --

  --* @addtogroup GPIO
   --  * @{
   --

-- Exported types ------------------------------------------------------------
  --* @defgroup GPIO_Exported_Types GPIO Exported Types
   --  * @{
   --

  --*
   --  * @brief GPIO Init structure definition
   --

  --!< Specifies the GPIO pins to be configured.
   --                           This parameter can be any value of @ref GPIO_pins_define

   type GPIO_InitTypeDef is record
      Pin       : aliased GPIO_PIN_t;  -- Inc/stm32f4xx_hal_gpio.h:67
      Mode      : aliased GPIO_Mode_TypeDef;  -- Inc/stm32f4xx_hal_gpio.h:70
      Pull      : aliased GPIO_PULL_TypeDef;  -- Inc/stm32f4xx_hal_gpio.h:73
      Speed     : aliased GPIO_SPEED_TypeDef;  -- Inc/stm32f4xx_hal_gpio.h:76
      Alternate : aliased stm32f407.Hal.gpio_ex.GPIO_AF_T;  -- Inc/stm32f4xx_hal_gpio.h:79
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      GPIO_InitTypeDef);  -- Inc/stm32f4xx_hal_gpio.h:81

   --  skipped anonymous struct anon_73

  --!< Specifies the operating mode for the selected pins.
   --                           This parameter can be a value of @ref GPIO_mode_define

  --!< Specifies the Pull-up or Pull-Down activation for the selected pins.
   --                           This parameter can be a value of @ref GPIO_pull_define

  --!< Specifies the speed for the selected pins.
   --                           This parameter can be a value of @ref GPIO_speed_define

  --!< Peripheral to be connected to the selected pins.
   --                            This parameter can be a value of @ref GPIO_Alternate_function_selection

  --*
   --  * @brief  GPIO Bit SET and Bit RESET enumeration
   --

   type GPIO_PinState is (GPIO_PIN_RESET, GPIO_PIN_SET);
   pragma Convention (C, GPIO_PinState);  -- Inc/stm32f4xx_hal_gpio.h:90

  --*
   --  * @}
   --

-- Exported constants --------------------------------------------------------
  --* @defgroup GPIO_Exported_Constants GPIO Exported Constants
   --  * @{
   --

  --* @defgroup GPIO_pins_define GPIO pins define
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup GPIO_mode_define GPIO mode define
--  * @brief GPIO Configuration Mode
--  *        Elements values convention: 0xX0yz00YZ
--  *           - X  : GPIO mode or EXTI Mode
--  *           - y  : External IT or Event trigger detection
--  *           - z  : IO configuration on External IT or Event
--  *           - Y  : Output type (Push Pull or Open Drain)
--  *           - Z  : IO Direction mode (Input, Output, Alternate or Analog)
--  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup GPIO_speed_define  GPIO speed define
   --  * @brief GPIO Output Maximum frequency
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup GPIO_pull_define GPIO pull define
   --   * @brief GPIO Pull-Up or Pull-Down Activation
   --   * @{
   --

  --*
   --  * @}
   --

  --*
   --  * @}
   --

-- Exported macro ------------------------------------------------------------
  --* @defgroup GPIO_Exported_Macros GPIO Exported Macros
   --  * @{
   --

  --*
   --  * @brief  Checks whether the specified EXTI line flag is set or not.
   --  * @param  __EXTI_LINE__: specifies the EXTI line flag to check.
   --  *         This parameter can be GPIO_PIN_x where x can be(0..15)
   --  * @retval The new state of __EXTI_LINE__ (SET or RESET).
   --

  --*
   --  * @brief  Clears the EXTI's line pending flags.
   --  * @param  __EXTI_LINE__: specifies the EXTI lines flags to clear.
   --  *         This parameter can be any combination of GPIO_PIN_x where x can be (0..15)
   --  * @retval None
   --

  --*
   --  * @brief  Checks whether the specified EXTI line is asserted or not.
   --  * @param  __EXTI_LINE__: specifies the EXTI line to check.
   --  *          This parameter can be GPIO_PIN_x where x can be(0..15)
   --  * @retval The new state of __EXTI_LINE__ (SET or RESET).
   --

  --*
   --  * @brief  Clears the EXTI's line pending bits.
   --  * @param  __EXTI_LINE__: specifies the EXTI lines to clear.
   --  *          This parameter can be any combination of GPIO_PIN_x where x can be (0..15)
   --  * @retval None
   --

  --*
   --  * @brief  Generates a Software interrupt on selected EXTI line.
   --  * @param  __EXTI_LINE__: specifies the EXTI line to check.
   --  *          This parameter can be GPIO_PIN_x where x can be(0..15)
   --  * @retval None
   --

  --*
   --  * @}
   --

   -- Include GPIO HAL Extension module
-- Exported functions --------------------------------------------------------
  --* @addtogroup GPIO_Exported_Functions
   --  * @{
   --

  --* @addtogroup GPIO_Exported_Functions_Group1
   --  * @{
   --

-- Initialization and de-initialization functions ****************************
   procedure HAL_GPIO_Init
     (GPIOx     : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Init : access GPIO_InitTypeDef);  -- Inc/stm32f4xx_hal_gpio.h:243
   pragma Import (C, HAL_GPIO_Init, "HAL_GPIO_Init");

   procedure HAL_GPIO_DeInit
     (GPIOx    : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Pin : GPIO_PIN_t);  -- Inc/stm32f4xx_hal_gpio.h:244
   pragma Import (C, HAL_GPIO_DeInit, "HAL_GPIO_DeInit");

  --*
   --  * @}
   --

  --* @addtogroup GPIO_Exported_Functions_Group2
   --  * @{
   --

-- IO operation functions ****************************************************
   function HAL_GPIO_ReadPin
     (GPIOx    : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Pin : GPIO_PIN_t)
     return GPIO_PinState;  -- Inc/stm32f4xx_hal_gpio.h:253
   pragma Import (C, HAL_GPIO_ReadPin, "HAL_GPIO_ReadPin");

   procedure HAL_GPIO_WritePin
     (GPIOx    : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Pin : GPIO_PIN_t;
      PinState : GPIO_PinState);  -- Inc/stm32f4xx_hal_gpio.h:254
   pragma Import (C, HAL_GPIO_WritePin, "HAL_GPIO_WritePin");

   procedure HAL_GPIO_TogglePin
     (GPIOx    : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Pin : GPIO_PIN_t);  -- Inc/stm32f4xx_hal_gpio.h:255
   pragma Import (C, HAL_GPIO_TogglePin, "HAL_GPIO_TogglePin");

   function HAL_GPIO_LockPin
     (GPIOx    : access stm32f407.registers.GPIO_TypeDef;
      GPIO_Pin : GPIO_PIN_t)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_gpio.h:256
   pragma Import (C, HAL_GPIO_LockPin, "HAL_GPIO_LockPin");

   procedure HAL_GPIO_EXTI_IRQHandler
     (GPIO_Pin : GPIO_PIN_t);  -- Inc/stm32f4xx_hal_gpio.h:257
   pragma Import (C, HAL_GPIO_EXTI_IRQHandler, "HAL_GPIO_EXTI_IRQHandler");

   procedure HAL_GPIO_EXTI_Callback
     (GPIO_Pin : GPIO_PIN_t);  -- Inc/stm32f4xx_hal_gpio.h:258
   pragma Import (C, HAL_GPIO_EXTI_Callback, "HAL_GPIO_EXTI_Callback");

  --*
   --  * @}
   --

  --*
   --  * @}
   --

-- Private types -------------------------------------------------------------
-- Private variables ---------------------------------------------------------
-- Private constants ---------------------------------------------------------
  --* @defgroup GPIO_Private_Constants GPIO Private Constants
   --  * @{
   --

  --*
   --  * @}
   --

-- Private macros ------------------------------------------------------------
  --* @defgroup GPIO_Private_Macros GPIO Private Macros
   --  * @{
   --

  --*
   --  * @}
   --

-- Private functions ---------------------------------------------------------
  --* @defgroup GPIO_Private_Functions GPIO Private Functions
   --  * @{
   --

  --*
   --  * @}
   --

  --*
   --  * @}
   --

  --*
   --  * @}
   --

  --*********************** (C) COPYRIGHT STMicroelectronics *****END OF FILE***
end stm32f407.Hal.gpio;
