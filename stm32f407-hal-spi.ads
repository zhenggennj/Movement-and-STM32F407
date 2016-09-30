pragma Ada_2012;
pragma Style_Checks (Off);

--with Interfaces.C; use Interfaces.C;
--with HalDriver.ustdint_h;
with stm32f407.registers;
with stm32f407.registers.spi; use stm32f407.registers.spi;
limited with stm32f407.Hal.Dma;
--with HalDriver.stm32f4xx_hal_def_h;

package stm32f407.Hal.spi is
   type HAL_SPI_ERROR_t is
     (HAL_SPI_ERROR_NONE,
      HAL_SPI_ERROR_MODF,
      HAL_SPI_ERROR_CRC,
      HAL_SPI_ERROR_OVR,
      HAL_SPI_ERROR_FRE,
      HAL_SPI_ERROR_DMA,
      HAL_SPI_ERROR_FLAG) with
        Size => 32;
   for HAL_SPI_ERROR_t use
     (HAL_SPI_ERROR_NONE => 16#00000000#,
      HAL_SPI_ERROR_MODF => 16#00000001#,
      HAL_SPI_ERROR_CRC  => 16#00000002#,
      HAL_SPI_ERROR_OVR  => 16#00000004#,
      HAL_SPI_ERROR_FRE  => 16#00000008#,
      HAL_SPI_ERROR_DMA  => 16#00000010#,
      HAL_SPI_ERROR_FLAG => 16#00000020#);

   type SPI_MODE_T is (SPI_MODE_SLAVE, SPI_MODE_MASTER) with
        Size => 32;

   for SPI_MODE_T use
     (SPI_MODE_SLAVE  => 16#00000000#,
      SPI_MODE_MASTER => SPI_CR1_MSTR or SPI_CR1_SSI);

   type SPI_DIRECTION_T is
     (SPI_DIRECTION_2LINES,
      SPI_DIRECTION_2LINES_RXONLY,
      SPI_DIRECTION_1LINE) with
        Size => 32;
   for SPI_DIRECTION_T use
     (SPI_DIRECTION_2LINES        => 16#00000000#,
      SPI_DIRECTION_2LINES_RXONLY => SPI_CR1_RXONLY,
      SPI_DIRECTION_1LINE         => SPI_CR1_BIDIMODE);

   type SPI_DATASIZE_T is (SPI_DATASIZE_8BIT, SPI_DATASIZE_16BIT) with
        Size => 32;

   for SPI_DATASIZE_T use
     (SPI_DATASIZE_8BIT  => 16#00000000#,
      SPI_DATASIZE_16BIT => SPI_CR1_DFF);
   type SPI_POLARITY_T is (SPI_POLARITY_LOW, SPI_POLARITY_HIGH) with
        Size => 32;
   for SPI_POLARITY_T use
     (SPI_POLARITY_LOW  => 16#00000000#,
      SPI_POLARITY_HIGH => SPI_CR1_CPOL);
   type SPI_PHASE_T is (SPI_PHASE_1EDGE, SPI_PHASE_2EDGE) with
        Size => 32;
   for SPI_PHASE_T use
     (SPI_PHASE_1EDGE => 16#00000000#,
      SPI_PHASE_2EDGE => SPI_CR1_CPHA);
   type SPI_NSS_T is
     (SPI_NSS_HARD_INPUT, SPI_NSS_SOFT, SPI_NSS_HARD_OUTPUT) with
        Size => 32;
   for SPI_NSS_T use
     (SPI_NSS_HARD_INPUT  => 16#00000000#,
      SPI_NSS_SOFT        => SPI_CR1_SSM,
      SPI_NSS_HARD_OUTPUT => 16#00040000#);
   type SPI_BAUDRATEPRESCALER_t is
     (SPI_BAUDRATEPRESCALER_2,
      SPI_BAUDRATEPRESCALER_4,
      SPI_BAUDRATEPRESCALER_8,
      SPI_BAUDRATEPRESCALER_16,
      SPI_BAUDRATEPRESCALER_32,
      SPI_BAUDRATEPRESCALER_64,
      SPI_BAUDRATEPRESCALER_128,
      SPI_BAUDRATEPRESCALER_256) with
        Size => 32;
   for SPI_BAUDRATEPRESCALER_t use
     (SPI_BAUDRATEPRESCALER_2   => 16#00000000#,
      SPI_BAUDRATEPRESCALER_4   => 16#00000008#,
      SPI_BAUDRATEPRESCALER_8   => 16#00000010#,
      SPI_BAUDRATEPRESCALER_16  => 16#00000018#,
      SPI_BAUDRATEPRESCALER_32  => 16#00000020#,
      SPI_BAUDRATEPRESCALER_64  => 16#00000028#,
      SPI_BAUDRATEPRESCALER_128 => 16#00000030#,
      SPI_BAUDRATEPRESCALER_256 => 16#00000038#);
   type SPI_FIRSTBIT_T is (SPI_FIRSTBIT_MSB, SPI_FIRSTBIT_LSB) with
        Size => 32;
   for SPI_FIRSTBIT_T use
     (SPI_FIRSTBIT_MSB => 16#00000000#,
      SPI_FIRSTBIT_LSB => SPI_CR1_LSBFIRST);

   type SPI_TIMODE_T is (SPI_TIMODE_DISABLE, SPI_TIMODE_ENABLE) with
        Size => 32;
   for SPI_TIMODE_T use
     (SPI_TIMODE_DISABLE => 16#00000000#,
      SPI_TIMODE_ENABLE  => SPI_CR2_FRF);
   type SPI_CRCCALCULATION_T is
     (SPI_CRCCALCULATION_DISABLE, SPI_CRCCALCULATION_ENABLE) with
        Size => 32;
   for SPI_CRCCALCULATION_T use
     (SPI_CRCCALCULATION_DISABLE => 16#00000000#,
      SPI_CRCCALCULATION_ENABLE  => SPI_CR1_CRCEN);

   type SPI_IT_T is (SPI_IT_ERR, SPI_IT_RXNE, SPI_IT_TXE) with
        Size => 32;
   for SPI_IT_T use
     (SPI_IT_ERR  => SPI_CR2_ERRIE,
      SPI_IT_RXNE => SPI_CR2_RXNEIE,
      SPI_IT_TXE  => SPI_CR2_TXEIE);

   type SPI_FLAG_T is
     (SPI_FLAG_RXNE,
      SPI_FLAG_TXE,
      SPI_FLAG_CRCERR,
      SPI_FLAG_MODF,
      SPI_FLAG_OVR,
      SPI_FLAG_BSY,
      SPI_FLAG_FRE) with
        Size => 32;
   for SPI_FLAG_T use
     (SPI_FLAG_RXNE   => SPI_SR_RXNE,
      SPI_FLAG_TXE    => SPI_SR_TXE,
      SPI_FLAG_CRCERR => SPI_SR_CRCERR,
      SPI_FLAG_MODF   => SPI_SR_MODF,
      SPI_FLAG_OVR    => SPI_SR_OVR,
      SPI_FLAG_BSY    => SPI_SR_BSY,
      SPI_FLAG_FRE    => SPI_SR_FRE);

   --  arg-macro: function SPI_1LINE_TX (__HANDLE__)
   --    return (__HANDLE__).Instance.CR1 |= SPI_CR1_BIDIOE;
   --  arg-macro: function SPI_1LINE_RX (__HANDLE__)
   --    return (__HANDLE__).Instance.CR1 &= (~SPI_CR1_BIDIOE);
   --  arg-macro: procedure SPI_RESET_CRC (__HANDLE__)
   --    do{(__HANDLE__).Instance.CR1 &= (uint16_t)(~SPI_CR1_CRCEN); (__HANDLE__).Instance.CR1 |= SPI_CR1_CRCEN;}while(0)
   --  arg-macro: function IS_SPI_MODE (MODE)
   --    return ((MODE) = SPI_MODE_SLAVE)  or else  ((MODE) = SPI_MODE_MASTER);
   --  arg-macro: function IS_SPI_DIRECTION (MODE)
   --    return ((MODE) = SPI_DIRECTION_2LINES)  or else  ((MODE) = SPI_DIRECTION_2LINES_RXONLY)  or else  ((MODE) = SPI_DIRECTION_1LINE);
   --  arg-macro: function IS_SPI_DIRECTION_2LINES (MODE)
   --    return (MODE) = SPI_DIRECTION_2LINES;
   --  arg-macro: function IS_SPI_DIRECTION_2LINES_OR_1LINE (MODE)
   --    return ((MODE) = SPI_DIRECTION_2LINES)  or else  ((MODE) = SPI_DIRECTION_1LINE);
   --  arg-macro: function IS_SPI_DATASIZE (DATASIZE)
   --    return ((DATASIZE) = SPI_DATASIZE_16BIT)  or else  ((DATASIZE) = SPI_DATASIZE_8BIT);
   --  arg-macro: function IS_SPI_CPOL (CPOL)
   --    return ((CPOL) = SPI_POLARITY_LOW)  or else  ((CPOL) = SPI_POLARITY_HIGH);
   --  arg-macro: function IS_SPI_CPHA (CPHA)
--    return ((CPHA) = SPI_PHASE_1EDGE)  or else  ((CPHA) = SPI_PHASE_2EDGE);
   --  arg-macro: function IS_SPI_NSS (NSS)
   --    return ((NSS) = SPI_NSS_SOFT)  or else  ((NSS) = SPI_NSS_HARD_INPUT)  or else  ((NSS) = SPI_NSS_HARD_OUTPUT);
   --  arg-macro: function IS_SPI_BAUDRATE_PRESCALER (PRESCALER)
   --    return ((PRESCALER) = SPI_BAUDRATEPRESCALER_2)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_4)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_8)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_16)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_32)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_64)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_128)  or else  ((PRESCALER) = SPI_BAUDRATEPRESCALER_256);
   --  arg-macro: function IS_SPI_FIRST_BIT (BIT)
--    return ((BIT) = SPI_FIRSTBIT_MSB)  or else  ((BIT) = SPI_FIRSTBIT_LSB);
   --  arg-macro: function IS_SPI_TIMODE (MODE)
   --    return ((MODE) = SPI_TIMODE_DISABLE)  or else  ((MODE) = SPI_TIMODE_ENABLE);
   --  arg-macro: function IS_SPI_CRC_CALCULATION (CALCULATION)
   --    return ((CALCULATION) = SPI_CRCCALCULATION_DISABLE)  or else  ((CALCULATION) = SPI_CRCCALCULATION_ENABLE);
   --  arg-macro: function IS_SPI_CRC_POLYNOMIAL (POLYNOMIAL)
   --    return ((POLYNOMIAL) >= 0x01U)  and then  ((POLYNOMIAL) <= 0xFFFFU);
  --*
   --  ******************************************************************************
   --  * @file    stm32f4xx_hal_spi.h
   --  * @author  MCD Application Team
   --  * @version V1.5.0
   --  * @date    06-May-2016
   --  * @brief   Header file of SPI HAL module.
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

  --* @addtogroup SPI
   --  * @{
   --

-- Exported types ------------------------------------------------------------
  --* @defgroup SPI_Exported_Types SPI Exported Types
   --  * @{
   --

  --*
   --  * @brief  SPI Configuration Structure definition
   --

  --!< Specifies the SPI operating mode.
   --                                     This parameter can be a value of @ref SPI_Mode

   type SPI_InitTypeDef is record
      Mode              : aliased SPI_MODE_T;  -- Inc/stm32f4xx_hal_spi.h:67
      Direction         : aliased SPI_DIRECTION_T;  -- Inc/stm32f4xx_hal_spi.h:70
      DataSize          : aliased SPI_DATASIZE_T;  -- Inc/stm32f4xx_hal_spi.h:73
      CLKPolarity       : aliased SPI_POLARITY_T;  -- Inc/stm32f4xx_hal_spi.h:76
      CLKPhase          : aliased SPI_PHASE_T;  -- Inc/stm32f4xx_hal_spi.h:79
      NSS               : aliased SPI_NSS_T;  -- Inc/stm32f4xx_hal_spi.h:82
      BaudRatePrescaler : aliased SPI_BAUDRATEPRESCALER_t;  -- Inc/stm32f4xx_hal_spi.h:86
      FirstBit          : aliased SPI_FIRSTBIT_T;  -- Inc/stm32f4xx_hal_spi.h:92
      TIMode            : aliased SPI_TIMODE_T;  -- Inc/stm32f4xx_hal_spi.h:95
      CRCCalculation    : aliased SPI_CRCCALCULATION_T;  -- Inc/stm32f4xx_hal_spi.h:98
      CRCPolynomial     : aliased Word;  -- Inc/stm32f4xx_hal_spi.h:101
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      SPI_InitTypeDef);  -- Inc/stm32f4xx_hal_spi.h:103

   --  skipped anonymous struct anon_90

  --!< Specifies the SPI bidirectional mode state.
   --                                     This parameter can be a value of @ref SPI_Direction

  --!< Specifies the SPI data size.
   --                                     This parameter can be a value of @ref SPI_Data_Size

  --!< Specifies the serial clock steady state.
   --                                    This parameter can be a value of @ref SPI_Clock_Polarity

  --!< Specifies the clock active edge for the bit capture.
   --                                    This parameter can be a value of @ref SPI_Clock_Phase

  --!< Specifies whether the NSS signal is managed by
   --                                    hardware (NSS pin) or by software using the SSI bit.
   --                                    This parameter can be a value of @ref SPI_Slave_Select_management

  --!< Specifies the Baud Rate prescaler value which will be
   --                                    used to configure the transmit and receive SCK clock.
   --                                    This parameter can be a value of @ref SPI_BaudRate_Prescaler
   --                                    @note The communication clock is derived from the master
   --                                     clock. The slave clock does not need to be set.

  --!< Specifies whether data transfers start from MSB or LSB bit.
   --                                    This parameter can be a value of @ref SPI_MSB_LSB_transmission

  --!< Specifies if the TI mode is enabled or not.
   --                                    This parameter can be a value of @ref SPI_TI_mode

  --!< Specifies if the CRC calculation is enabled or not.
   --                                    This parameter can be a value of @ref SPI_CRC_Calculation

  --!< Specifies the polynomial used for the CRC calculation.
   --                                    This parameter must be a number between Min_Data = 0 and Max_Data = 65535

  --*
   --  * @brief  HAL SPI State structure definition
   --

  --!< Peripheral not Initialized
  --!< Peripheral Initialized and ready for use
  --!< an internal process is ongoing
  --!< Data Transmission process is ongoing
  --!< Data Reception process is ongoing
  --!< Data Transmission and Reception process is ongoing
  --!< SPI error state
   type HAL_SPI_StateTypeDef is
     (HAL_SPI_STATE_RESET,
      HAL_SPI_STATE_READY,
      HAL_SPI_STATE_BUSY,
      HAL_SPI_STATE_BUSY_TX,
      HAL_SPI_STATE_BUSY_RX,
      HAL_SPI_STATE_BUSY_TX_RX,
      HAL_SPI_STATE_ERROR);
   pragma Convention (C, HAL_SPI_StateTypeDef);  -- Inc/stm32f4xx_hal_spi.h:117

  --*
   --  * @brief  SPI handle Structure definition
   --

   -- SPI registers base address
   type uu_SPI_HandleTypeDef is record
      Instance    : access SPI_Register;  -- Inc/stm32f4xx_hal_spi.h:124
      Init        : aliased SPI_InitTypeDef;  -- Inc/stm32f4xx_hal_spi.h:126
      pTxBuffPtr  : access Byte;  -- Inc/stm32f4xx_hal_spi.h:128
      TxXferSize  : aliased HWord;  -- Inc/stm32f4xx_hal_spi.h:130
      TxXferCount : aliased HWord;  -- Inc/stm32f4xx_hal_spi.h:132
      pRxBuffPtr  : access Byte;  -- Inc/stm32f4xx_hal_spi.h:134
      RxXferSize  : aliased HWord;  -- Inc/stm32f4xx_hal_spi.h:136
      RxXferCount : aliased HWord;  -- Inc/stm32f4xx_hal_spi.h:138
      RxISR       : access procedure
        (arg1 : access uu_SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:140
      TxISR : access procedure
        (arg1 : access uu_SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:142
      hdmatx : access stm32f407.Hal.Dma
        .DMA_HandleTypeDef;  -- Inc/stm32f4xx_hal_spi.h:144
      hdmarx : access stm32f407.Hal.Dma
        .DMA_HandleTypeDef;  -- Inc/stm32f4xx_hal_spi.h:146
      Lock      : aliased HAL_LockTypeDef;  -- Inc/stm32f4xx_hal_spi.h:148
      State     : aliased HAL_SPI_StateTypeDef;  -- Inc/stm32f4xx_hal_spi.h:150
      ErrorCode : aliased HAL_SPI_ERROR_t;  -- Inc/stm32f4xx_hal_spi.h:152
   end record;
   pragma Convention
     (C_Pass_By_Copy,
      uu_SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:122

   -- SPI communication parameters
   -- Pointer to SPI Tx transfer Buffer
   -- SPI Tx Transfer size
   -- SPI Tx Transfer Counter
   -- Pointer to SPI Rx transfer Buffer
   -- SPI Rx Transfer size
   -- SPI Rx Transfer Counter
   -- function pointer on Rx ISR
   -- function pointer on Tx ISR
   -- SPI Tx DMA Handle parameters
   -- SPI Rx DMA Handle parameters
   -- Locking object
   -- SPI communication state
   -- SPI Error code
   subtype SPI_HandleTypeDef is uu_SPI_HandleTypeDef;

  --*
   --  * @}
   --

-- Exported constants --------------------------------------------------------
  --* @defgroup SPI_Exported_Constants SPI Exported Constants
   --  * @{
   --

  --* @defgroup SPI_Error_Code SPI Error Code
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Mode SPI Mode
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Direction SPI Direction Mode
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Data_Size SPI Data Size
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Clock_Polarity SPI Clock Polarity
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Clock_Phase SPI Clock Phase
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Slave_Select_management SPI Slave Select Management
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_BaudRate_Prescaler SPI BaudRate Prescaler
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_MSB_LSB_transmission SPI MSB LSB Transmission
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_TI_mode SPI TI Mode
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_CRC_Calculation SPI CRC Calculation
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Interrupt_definition SPI Interrupt Definition
   --  * @{
   --

  --*
   --  * @}
   --

  --* @defgroup SPI_Flags_definition SPI Flags Definition
   --  * @{
   --

  --*
   --  * @}
   --

  --*
   --  * @}
   --

-- Exported macro ------------------------------------------------------------
  --* @defgroup SPI_Exported_Macros SPI Exported Macros
   --  * @{
   --

  --* @brief  Reset SPI handle state.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Enable or disable the specified SPI interrupts.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @param  __INTERRUPT__: specifies the interrupt source to enable or disable.
   --  *         This parameter can be one of the following values:
   --  *            @arg SPI_IT_TXE: Tx buffer empty interrupt enable
   --  *            @arg SPI_IT_RXNE: RX buffer not empty interrupt enable
   --  *            @arg SPI_IT_ERR: Error interrupt enable
   --  * @retval None
   --

  --* @brief  Check whether the specified SPI interrupt source is enabled or not.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @param  __INTERRUPT__: specifies the SPI interrupt source to check.
   --  *          This parameter can be one of the following values:
   --  *             @arg SPI_IT_TXE: Tx buffer empty interrupt enable
   --  *             @arg SPI_IT_RXNE: RX buffer not empty interrupt enable
   --  *             @arg SPI_IT_ERR: Error interrupt enable
   --  * @retval The new state of __IT__ (TRUE or FALSE).
   --

  --* @brief  Check whether the specified SPI flag is set or not.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @param  __FLAG__: specifies the flag to check.
   --  *         This parameter can be one of the following values:
   --  *            @arg SPI_FLAG_RXNE: Receive buffer not empty flag
   --  *            @arg SPI_FLAG_TXE: Transmit buffer empty flag
   --  *            @arg SPI_FLAG_CRCERR: CRC error flag
   --  *            @arg SPI_FLAG_MODF: Mode fault flag
   --  *            @arg SPI_FLAG_OVR: Overrun flag
   --  *            @arg SPI_FLAG_BSY: Busy flag
   --  *            @arg SPI_FLAG_FRE: Frame format error flag
   --  * @retval The new state of __FLAG__ (TRUE or FALSE).
   --

  --* @brief  Clear the SPI CRCERR pending flag.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Clear the SPI MODF pending flag.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Clear the SPI OVR pending flag.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Clear the SPI FRE pending flag.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Enable the SPI peripheral.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Disable the SPI peripheral.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --*
   --  * @}
   --

-- Exported functions --------------------------------------------------------
  --* @addtogroup SPI_Exported_Functions
   --  * @{
   --

  --* @addtogroup SPI_Exported_Functions_Group1
   --  * @{
   --

   -- Initialization/de-initialization functions  *********************************
   function HAL_SPI_Init
     (hspi : access SPI_HandleTypeDef)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:429
   pragma Import (C, HAL_SPI_Init, "HAL_SPI_Init");

   function HAL_SPI_DeInit
     (hspi : access SPI_HandleTypeDef)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:430
   pragma Import (C, HAL_SPI_DeInit, "HAL_SPI_DeInit");

   procedure HAL_SPI_MspInit
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:431
   pragma Import (C, HAL_SPI_MspInit, "HAL_SPI_MspInit");

   procedure HAL_SPI_MspDeInit
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:432
   pragma Import (C, HAL_SPI_MspDeInit, "HAL_SPI_MspDeInit");

  --*
   --  * @}
   --

  --* @addtogroup SPI_Exported_Functions_Group2
   --  * @{
   --

   -- I/O operation functions  ****************************************************
   function HAL_SPI_Transmit
     (hspi    : access SPI_HandleTypeDef;
      pData   : access Byte;
      Size    : HWord;
      Timeout : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:441
   pragma Import (C, HAL_SPI_Transmit, "HAL_SPI_Transmit");

   function HAL_SPI_Receive
     (hspi    : access SPI_HandleTypeDef;
      pData   : access Byte;
      Size    : HWord;
      Timeout : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:442
   pragma Import (C, HAL_SPI_Receive, "HAL_SPI_Receive");

   function HAL_SPI_TransmitReceive
     (hspi    : access SPI_HandleTypeDef;
      pTxData : access Byte;
      pRxData : access Byte;
      Size    : HWord;
      Timeout : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:443
   pragma Import (C, HAL_SPI_TransmitReceive, "HAL_SPI_TransmitReceive");

   function HAL_SPI_Transmit_IT
     (hspi  : access SPI_HandleTypeDef;
      pData : access Byte;
      Size  : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:444
   pragma Import (C, HAL_SPI_Transmit_IT, "HAL_SPI_Transmit_IT");

   function HAL_SPI_Receive_IT
     (hspi  : access SPI_HandleTypeDef;
      pData : access Byte;
      Size  : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:445
   pragma Import (C, HAL_SPI_Receive_IT, "HAL_SPI_Receive_IT");

   function HAL_SPI_TransmitReceive_IT
     (hspi    : access SPI_HandleTypeDef;
      pTxData : access Byte;
      pRxData : access Byte;
      Size : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:446
   pragma Import (C, HAL_SPI_TransmitReceive_IT, "HAL_SPI_TransmitReceive_IT");

   function HAL_SPI_Transmit_DMA
     (hspi  : access SPI_HandleTypeDef;
      pData : access Byte;
      Size  : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:447
   pragma Import (C, HAL_SPI_Transmit_DMA, "HAL_SPI_Transmit_DMA");

   function HAL_SPI_Receive_DMA
     (hspi  : access SPI_HandleTypeDef;
      pData : access Byte;
      Size  : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:448
   pragma Import (C, HAL_SPI_Receive_DMA, "HAL_SPI_Receive_DMA");

   function HAL_SPI_TransmitReceive_DMA
     (hspi    : access SPI_HandleTypeDef;
      pTxData : access Byte;
      pRxData : access Byte;
      Size : HWord) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:449
   pragma Import
     (C,
      HAL_SPI_TransmitReceive_DMA,
      "HAL_SPI_TransmitReceive_DMA");

   function HAL_SPI_DMAPause
     (hspi : access SPI_HandleTypeDef)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:450
   pragma Import (C, HAL_SPI_DMAPause, "HAL_SPI_DMAPause");

   function HAL_SPI_DMAResume
     (hspi : access SPI_HandleTypeDef)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:451
   pragma Import (C, HAL_SPI_DMAResume, "HAL_SPI_DMAResume");

   function HAL_SPI_DMAStop
     (hspi : access SPI_HandleTypeDef)
     return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_spi.h:452
   pragma Import (C, HAL_SPI_DMAStop, "HAL_SPI_DMAStop");

   procedure HAL_SPI_IRQHandler
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:454
   pragma Import (C, HAL_SPI_IRQHandler, "HAL_SPI_IRQHandler");

   procedure HAL_SPI_TxCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:455
   pragma Import (C, HAL_SPI_TxCpltCallback, "HAL_SPI_TxCpltCallback");

   procedure HAL_SPI_RxCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:456
   pragma Import (C, HAL_SPI_RxCpltCallback, "HAL_SPI_RxCpltCallback");

   procedure HAL_SPI_TxRxCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:457
   pragma Import (C, HAL_SPI_TxRxCpltCallback, "HAL_SPI_TxRxCpltCallback");

   procedure HAL_SPI_TxHalfCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:458
   pragma Import (C, HAL_SPI_TxHalfCpltCallback, "HAL_SPI_TxHalfCpltCallback");

   procedure HAL_SPI_RxHalfCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:459
   pragma Import (C, HAL_SPI_RxHalfCpltCallback, "HAL_SPI_RxHalfCpltCallback");

   procedure HAL_SPI_TxRxHalfCpltCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:460
   pragma Import
     (C,
      HAL_SPI_TxRxHalfCpltCallback,
      "HAL_SPI_TxRxHalfCpltCallback");

   procedure HAL_SPI_ErrorCallback
     (hspi : access SPI_HandleTypeDef);  -- Inc/stm32f4xx_hal_spi.h:461
   pragma Import (C, HAL_SPI_ErrorCallback, "HAL_SPI_ErrorCallback");

  --*
   --  * @}
   --

  --* @addtogroup SPI_Exported_Functions_Group3
   --  * @{
   --

-- Peripheral State and Error functions **************************************
   function HAL_SPI_GetState
     (hspi : access SPI_HandleTypeDef)
     return HAL_SPI_StateTypeDef;  -- Inc/stm32f4xx_hal_spi.h:470
   pragma Import (C, HAL_SPI_GetState, "HAL_SPI_GetState");

   function HAL_SPI_GetError
     (hspi : access SPI_HandleTypeDef)
     return Word;  -- Inc/stm32f4xx_hal_spi.h:471
   pragma Import (C, HAL_SPI_GetError, "HAL_SPI_GetError");

  --*
   --  * @}
   --

  --*
   --  * @}
   --

-- Private types -------------------------------------------------------------
-- Private variables ---------------------------------------------------------
-- Private constants ---------------------------------------------------------
-- Private macros ------------------------------------------------------------
  --* @defgroup SPI_Private_Macros SPI Private Macros
   --  * @{
   --

  --* @brief  Set the SPI transmit-only mode.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Set the SPI receive-only mode.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --* @brief  Reset the CRC calculation of the SPI.
   --  * @param  __HANDLE__: specifies the SPI Handle.
   --  *         This parameter can be SPI where x: 1, 2, or 3 to select the SPI peripheral.
   --  * @retval None
   --

  --*
   --  * @}
   --

-- Private functions ---------------------------------------------------------
  --* @defgroup SPI_Private_Functions SPI Private Functions
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
end stm32f407.Hal.spi;
