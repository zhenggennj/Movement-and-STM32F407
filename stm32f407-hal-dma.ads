pragma Ada_2012;
pragma Style_Checks (Off);

--  with Interfaces.C; use Interfaces.C;
--  with HalDriver.ustdint_h;
--  limited with HalDriver.stm32f407xx_h;
--  with HalDriver.stm32f4xx_hal_def_h;
  with System;
 with stm32f407.registers;
package Stm32F407.Hal.Dma is

type HAL_DMA_t is (HAL_DMA_ERROR_NONE,
HAL_DMA_ERROR_TE,
HAL_DMA_ERROR_FE,
HAL_DMA_ERROR_DME,
HAL_DMA_ERROR_TIMEOUT,
HAL_DMA_ERROR_PARAM,
HAL_DMA_ERROR_NO_XFER,
HAL_DMA_ERROR_NOT_SUPPORTED
) with size=>32;
for HAL_DMA_t use (HAL_DMA_ERROR_NONE => (          16#00000000#),
HAL_DMA_ERROR_TE => (          16#00000001#),
HAL_DMA_ERROR_FE => (          16#00000002#),
HAL_DMA_ERROR_DME => (          16#00000004#),
HAL_DMA_ERROR_TIMEOUT => (          16#00000020#),
HAL_DMA_ERROR_PARAM => (          16#00000040#),
HAL_DMA_ERROR_NO_XFER => (          16#00000080#),
HAL_DMA_ERROR_NOT_SUPPORTED => (          16#00000100#)
) ;
type DMA_CHANNEL_t is (DMA_CHANNEL_0,
DMA_CHANNEL_1,
DMA_CHANNEL_2,
DMA_CHANNEL_3,
DMA_CHANNEL_4,
DMA_CHANNEL_5,
DMA_CHANNEL_6,
DMA_CHANNEL_7
) with size=>32;
for DMA_CHANNEL_t use (DMA_CHANNEL_0 => (          16#00000000#),
DMA_CHANNEL_1 => (          16#02000000#),
DMA_CHANNEL_2 => (          16#04000000#),
DMA_CHANNEL_3 => (          16#06000000#),
DMA_CHANNEL_4 => (          16#08000000#),
DMA_CHANNEL_5 => (          16#0A000000#),
DMA_CHANNEL_6 => (          16#0C000000#),
DMA_CHANNEL_7 => (          16#0E000000#)
) ;
DMA_PERIPH_TO_MEMORY: constant  Word := (          16#00000000#);
type DMA_MEMORY_t is (DMA_MEMORY_TO_PERIPH,
DMA_MEMORY_TO_MEMORY
) with size=>32;
for DMA_MEMORY_t use (DMA_MEMORY_TO_PERIPH => (          DMA_SxCR_DIR_0),
DMA_MEMORY_TO_MEMORY => (          DMA_SxCR_DIR_1)
) ;
type DMA_PINC_t is (DMA_PINC_ENABLE,
DMA_PINC_DISABLE
) with size=>32;
for DMA_PINC_t use (DMA_PINC_ENABLE => (          DMA_SxCR_PINC),
DMA_PINC_DISABLE => (          16#00000000#)
) ;
type DMA_MINC_t is (DMA_MINC_ENABLE,
DMA_MINC_DISABLE
) with size=>32;
for DMA_MINC_t use (DMA_MINC_ENABLE => (          DMA_SxCR_MINC),
DMA_MINC_DISABLE => (          16#00000000#)
) ;
type DMA_PDATAALIGN_t is (DMA_PDATAALIGN_BYTE,
DMA_PDATAALIGN_HALFWORD,
DMA_PDATAALIGN_WORD
) with size=>32;
for DMA_PDATAALIGN_t use (DMA_PDATAALIGN_BYTE => (          16#00000000#),
DMA_PDATAALIGN_HALFWORD => (          DMA_SxCR_PSIZE_0),
DMA_PDATAALIGN_WORD => (          DMA_SxCR_PSIZE_1)
) ;
type DMA_MDATAALIGN_t is (DMA_MDATAALIGN_BYTE,
DMA_MDATAALIGN_HALFWORD,
DMA_MDATAALIGN_WORD
) with size=>32;
for DMA_MDATAALIGN_t use (DMA_MDATAALIGN_BYTE => (          16#00000000#),
DMA_MDATAALIGN_HALFWORD => (          DMA_SxCR_MSIZE_0),
DMA_MDATAALIGN_WORD => (          DMA_SxCR_MSIZE_1)
) ;
DMA_NORMAL: constant  Word := (          16#00000000#);
DMA_CIRCULAR: constant  Word := (          DMA_SxCR_CIRC);
DMA_PFCTRL: constant  Word := (          DMA_SxCR_PFCTRL);
type DMA_PRIORITY_t is (DMA_PRIORITY_LOW,
DMA_PRIORITY_MEDIUM,
DMA_PRIORITY_HIGH,
DMA_PRIORITY_VERY_HIGH
) with size=>32;
for DMA_PRIORITY_t use (DMA_PRIORITY_LOW => (          16#00000000#),
DMA_PRIORITY_MEDIUM => (          DMA_SxCR_PL_0),
DMA_PRIORITY_HIGH => (          DMA_SxCR_PL_1),
DMA_PRIORITY_VERY_HIGH => (          DMA_SxCR_PL)
) ;
type DMA_FIFOMODE_t is (DMA_FIFOMODE_DISABLE,
DMA_FIFOMODE_ENABLE
) with size=>32;
for DMA_FIFOMODE_t use (DMA_FIFOMODE_DISABLE => (          16#00000000#),
DMA_FIFOMODE_ENABLE => (          DMA_SxFCR_DMDIS)
) ;
type DMA_FIFO_t is (DMA_FIFO_THRESHOLD_1QUARTERFULL,
DMA_FIFO_THRESHOLD_HALFFULL,
DMA_FIFO_THRESHOLD_3QUARTERSFULL,
DMA_FIFO_THRESHOLD_FULL
) with size=>32;
for DMA_FIFO_t use (DMA_FIFO_THRESHOLD_1QUARTERFULL => (          16#00000000#),
DMA_FIFO_THRESHOLD_HALFFULL => (          DMA_SxFCR_FTH_0),
DMA_FIFO_THRESHOLD_3QUARTERSFULL => (          DMA_SxFCR_FTH_1),
DMA_FIFO_THRESHOLD_FULL => (          DMA_SxFCR_FTH)
) ;
type DMA_MBURST_t is (DMA_MBURST_SINGLE,
DMA_MBURST_INC4,
DMA_MBURST_INC8,
DMA_MBURST_INC16
) with size=>32;
for DMA_MBURST_t use (DMA_MBURST_SINGLE => (          16#00000000#),
DMA_MBURST_INC4 => (          DMA_SxCR_MB RST_0),
DMA_MBURST_INC8 => (          DMA_SxCR_MB RST_1),
DMA_MBURST_INC16 => (          DMA_SxCR_MB RST)
) ;
type DMA_PBURST_t is (DMA_PBURST_SINGLE,
DMA_PBURST_INC4,
DMA_PBURST_INC8,
DMA_PBURST_INC16
) with size=>32;
for DMA_PBURST_t use (DMA_PBURST_SINGLE => (          16#00000000#),
DMA_PBURST_INC4 => (          DMA_SxCR_PB RST_0),
DMA_PBURST_INC8 => (          DMA_SxCR_PB RST_1),
DMA_PBURST_INC16 => (          DMA_SxCR_PB RST)
) ;
type DMA_IT_t is (DMA_IT_TC,
DMA_IT_HT,
DMA_IT_TE,
DMA_IT_DME,
DMA_IT_FE
) with size=>32;
for DMA_IT_t use (DMA_IT_TC => (          DMA_SxCR_TCIE),
DMA_IT_HT => (          DMA_SxCR_HTIE),
DMA_IT_TE => (          DMA_SxCR_TEIE),
DMA_IT_DME => (          DMA_SxCR_DMEIE),
DMA_IT_FE => (          16#00000080#)
) ;
type DMA_FLAG_t is (DMA_FLAG_FEIF0_4,
DMA_FLAG_DMEIF0_4,
DMA_FLAG_TEIF0_4,
DMA_FLAG_HTIF0_4,
DMA_FLAG_TCIF0_4,
DMA_FLAG_FEIF1_5,
DMA_FLAG_DMEIF1_5,
DMA_FLAG_TEIF1_5,
DMA_FLAG_HTIF1_5,
DMA_FLAG_TCIF1_5,
DMA_FLAG_FEIF2_6,
DMA_FLAG_DMEIF2_6,
DMA_FLAG_TEIF2_6,
DMA_FLAG_HTIF2_6,
DMA_FLAG_TCIF2_6,
DMA_FLAG_FEIF3_7,
DMA_FLAG_DMEIF3_7,
DMA_FLAG_TEIF3_7,
DMA_FLAG_HTIF3_7,
DMA_FLAG_TCIF3_7
) with size=>32;
for DMA_FLAG_t use (DMA_FLAG_FEIF0_4 => (          16#00800001#),
DMA_FLAG_DMEIF0_4 => (          16#00800004#),
DMA_FLAG_TEIF0_4 => (          16#00000008#),
DMA_FLAG_HTIF0_4 => (          16#00000010#),
DMA_FLAG_TCIF0_4 => (          16#00000020#),
DMA_FLAG_FEIF1_5 => (          16#00000040#),
DMA_FLAG_DMEIF1_5 => (          16#00000100#),
DMA_FLAG_TEIF1_5 => (          16#00000200#),
DMA_FLAG_HTIF1_5 => (          16#00000400#),
DMA_FLAG_TCIF1_5 => (          16#00000800#),
DMA_FLAG_FEIF2_6 => (          16#00010000#),
DMA_FLAG_DMEIF2_6 => (          16#00040000#),
DMA_FLAG_TEIF2_6 => (          16#00080000#),
DMA_FLAG_HTIF2_6 => (          16#00100000#),
DMA_FLAG_TCIF2_6 => (          16#00200000#),
DMA_FLAG_FEIF3_7 => (          16#00400000#),
DMA_FLAG_DMEIF3_7 => (          16#01000000#),
DMA_FLAG_TEIF3_7 => (          16#02000000#),
DMA_FLAG_HTIF3_7 => (          16#04000000#),
DMA_FLAG_TCIF3_7 => (          16#08000000#)
) ;
   --  arg-macro: function IS_DMA_CHANNEL (CHANNEL)
   --    return ((CHANNEL) = DMA_CHANNEL_0)  or else  ((CHANNEL) = DMA_CHANNEL_1)  or else  ((CHANNEL) = DMA_CHANNEL_2)  or else  ((CHANNEL) = DMA_CHANNEL_3)  or else  ((CHANNEL) = DMA_CHANNEL_4)  or else  ((CHANNEL) = DMA_CHANNEL_5)  or else  ((CHANNEL) = DMA_CHANNEL_6)  or else  ((CHANNEL) = DMA_CHANNEL_7);
   --  arg-macro: function IS_DMA_DIRECTION (DIRECTION)
   --    return ((DIRECTION) = DMA_PERIPH_TO_MEMORY )  or else  ((DIRECTION) = DMA_MEMORY_TO_PERIPH)  or else  ((DIRECTION) = DMA_MEMORY_TO_MEMORY);
   --  arg-macro: function IS_DMA_BUFFER_SIZE (SIZE)
   --    return ((SIZE) >= 0x01U)  and then  ((SIZE) < 0x10000U);
   --  arg-macro: function IS_DMA_PERIPHERAL_INC_STATE (STATE)
   --    return ((STATE) = DMA_PINC_ENABLE)  or else  ((STATE) = DMA_PINC_DISABLE);
   --  arg-macro: function IS_DMA_MEMORY_INC_STATE (STATE)
   --    return ((STATE) = DMA_MINC_ENABLE)  or else  ((STATE) = DMA_MINC_DISABLE);
   --  arg-macro: function IS_DMA_PERIPHERAL_DATA_SIZE (SIZE)
   --    return ((SIZE) = DMA_PDATAALIGN_BYTE)  or else  ((SIZE) = DMA_PDATAALIGN_HALFWORD)  or else  ((SIZE) = DMA_PDATAALIGN_WORD);
   --  arg-macro: function IS_DMA_MEMORY_DATA_SIZE (SIZE)
   --    return ((SIZE) = DMA_MDATAALIGN_BYTE)  or else  ((SIZE) = DMA_MDATAALIGN_HALFWORD)  or else  ((SIZE) = DMA_MDATAALIGN_WORD );
   --  arg-macro: function IS_DMA_MODE (MODE)
   --    return ((MODE) = DMA_NORMAL )  or else  ((MODE) = DMA_CIRCULAR)  or else  ((MODE) = DMA_PFCTRL);
   --  arg-macro: function IS_DMA_PRIORITY (PRIORITY)
   --    return ((PRIORITY) = DMA_PRIORITY_LOW )  or else  ((PRIORITY) = DMA_PRIORITY_MEDIUM)  or else  ((PRIORITY) = DMA_PRIORITY_HIGH)  or else  ((PRIORITY) = DMA_PRIORITY_VERY_HIGH);
   --  arg-macro: function IS_DMA_FIFO_MODE_STATE (STATE)
   --    return ((STATE) = DMA_FIFOMODE_DISABLE )  or else  ((STATE) = DMA_FIFOMODE_ENABLE);
   --  arg-macro: function IS_DMA_FIFO_THRESHOLD (THRESHOLD)
   --    return ((THRESHOLD) = DMA_FIFO_THRESHOLD_1QUARTERFULL )  or else  ((THRESHOLD) = DMA_FIFO_THRESHOLD_HALFFULL)  or else  ((THRESHOLD) = DMA_FIFO_THRESHOLD_3QUARTERSFULL)  or else  ((THRESHOLD) = DMA_FIFO_THRESHOLD_FULL);
   --  arg-macro: function IS_DMA_MEMORY_BURST (BURST)
   --    return ((BURST) = DMA_MBURST_SINGLE)  or else  ((BURST) = DMA_MBURST_INC4)  or else  ((BURST) = DMA_MBURST_INC8)  or else  ((BURST) = DMA_MBURST_INC16);
   --  arg-macro: function IS_DMA_PERIPHERAL_BURST (BURST)
   --    return ((BURST) = DMA_PBURST_SINGLE)  or else  ((BURST) = DMA_PBURST_INC4)  or else  ((BURST) = DMA_PBURST_INC8)  or else  ((BURST) = DMA_PBURST_INC16);
  --*
  --  ******************************************************************************
  --  * @file    stm32f4xx_hal_dma.h
  --  * @author  MCD Application Team
  --  * @version V1.5.0
  --  * @date    06-May-2016
  --  * @brief   Header file of DMA HAL module.
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

  --* @addtogroup DMA
  --  * @{
  --   

  -- Exported types ------------------------------------------------------------ 
  --* @defgroup DMA_Exported_Types DMA Exported Types
  --  * @brief    DMA Exported Types 
  --  * @{
  --   

  --* 
  --  * @brief  DMA Configuration Structure definition
  --   

  --!< Specifies the channel used for the specified stream. 
  --                                      This parameter can be a value of @ref DMA_Channel_selection                     

   type DMA_InitTypeDef is record
      Channel : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:69
      Direction : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:72
      PeriphInc : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:76
      MemInc : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:79
      PeriphDataAlignment : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:82
      MemDataAlignment : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:85
      Mode : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:88
      Priority : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:93
      FIFOMode : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:96
      FIFOThreshold : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:101
      MemBurst : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:104
      PeriphBurst : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:110
   end record;
   pragma Convention (C_Pass_By_Copy, DMA_InitTypeDef);  -- Inc/stm32f4xx_hal_dma.h:115

   --  skipped anonymous struct anon_75

  --!< Specifies if the data will be transferred from memory to peripheral, 
  --                                      from memory to memory or from peripheral to memory.
  --                                      This parameter can be a value of @ref DMA_Data_transfer_direction               

  --!< Specifies whether the Peripheral address register should be incremented or not.
  --                                      This parameter can be a value of @ref DMA_Peripheral_incremented_mode           

  --!< Specifies whether the memory address register should be incremented or not.
  --                                      This parameter can be a value of @ref DMA_Memory_incremented_mode               

  --!< Specifies the Peripheral data width.
  --                                      This parameter can be a value of @ref DMA_Peripheral_data_size                  

  --!< Specifies the Memory data width.
  --                                      This parameter can be a value of @ref DMA_Memory_data_size                      

  --!< Specifies the operation mode of the DMAy Streamx.
  --                                      This parameter can be a value of @ref DMA_mode
  --                                      @note The circular buffer mode cannot be used if the memory-to-memory
  --                                            data transfer is configured on the selected Stream                         

  --!< Specifies the software priority for the DMAy Streamx.
  --                                      This parameter can be a value of @ref DMA_Priority_level                        

  --!< Specifies if the FIFO mode or Direct mode will be used for the specified stream.
  --                                      This parameter can be a value of @ref DMA_FIFO_direct_mode
  --                                      @note The Direct mode (FIFO mode disabled) cannot be used if the 
  --                                            memory-to-memory data transfer is configured on the selected stream        

  --!< Specifies the FIFO threshold level.
  --                                      This parameter can be a value of @ref DMA_FIFO_threshold_level                   

  --!< Specifies the Burst transfer configuration for the memory transfers. 
  --                                      It specifies the amount of data to be transferred in a single non interruptible
  --                                      transaction.
  --                                      This parameter can be a value of @ref DMA_Memory_burst 
  --                                      @note The burst mode is possible only if the address Increment mode is enabled.  

  --!< Specifies the Burst transfer configuration for the peripheral transfers. 
  --                                      It specifies the amount of data to be transferred in a single non interruptible 
  --                                      transaction. 
  --                                      This parameter can be a value of @ref DMA_Peripheral_burst
  --                                      @note The burst mode is possible only if the address Increment mode is enabled.  

  --* 
  --  * @brief  HAL DMA State structures definition
  --   

  --!< DMA not yet initialized or disabled  
  --!< DMA initialized and ready for use    
  --!< DMA process is ongoing               
  --!< DMA timeout state                    
  --!< DMA error state                      
  --!< DMA Abort state                      
   type HAL_DMA_StateTypeDef is 
     (HAL_DMA_STATE_RESET,
      HAL_DMA_STATE_READY,
      HAL_DMA_STATE_BUSY,
      HAL_DMA_STATE_TIMEOUT,
      HAL_DMA_STATE_ERROR,
      HAL_DMA_STATE_ABORT);
   pragma Convention (C, HAL_DMA_StateTypeDef);  -- Inc/stm32f4xx_hal_dma.h:129

  --* 
  --  * @brief  HAL DMA Error Code structure definition
  --   

  --!< Full transfer      
  --!< Half Transfer      
   type HAL_DMA_LevelCompleteTypeDef is 
     (HAL_DMA_FULL_TRANSFER,
      HAL_DMA_HALF_TRANSFER);
   pragma Convention (C, HAL_DMA_LevelCompleteTypeDef);  -- Inc/stm32f4xx_hal_dma.h:138

  --* 
  --  * @brief  HAL DMA Error Code structure definition
  --   

  --!< Full transfer      
  --!< Half Transfer      
  --!< M1 Full Transfer   
  --!< M1 Half Transfer   
  --!< Error              
  --!< Abort              
  --!< All                
   type HAL_DMA_CallbackIDTypeDef is 
     (HAL_DMA_XFER_CPLT_CB_ID,
      HAL_DMA_XFER_HALFCPLT_CB_ID,
      HAL_DMA_XFER_M1CPLT_CB_ID,
      HAL_DMA_XFER_M1HALFCPLT_CB_ID,
      HAL_DMA_XFER_ERROR_CB_ID,
      HAL_DMA_XFER_ABORT_CB_ID,
      HAL_DMA_XFER_ALL_CB_ID);
   pragma Convention (C, HAL_DMA_CallbackIDTypeDef);  -- Inc/stm32f4xx_hal_dma.h:152

  --* 
  --  * @brief  DMA handle Structure definition
  --   

  --!< Register base address                   
   type uu_DMA_HandleTypeDef is record
      Instance : access stm32f407.registers.DMA_Stream_Register;  -- Inc/stm32f4xx_hal_dma.h:159
      Init : aliased DMA_InitTypeDef;  -- Inc/stm32f4xx_hal_dma.h:161
      Lock : aliased HAL_LockTypeDef;  -- Inc/stm32f4xx_hal_dma.h:163
      State : aliased HAL_DMA_StateTypeDef;  -- Inc/stm32f4xx_hal_dma.h:165
      Parent : System.Address;  -- Inc/stm32f4xx_hal_dma.h:167
      XferCpltCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:169
      XferHalfCpltCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:171
      XferM1CpltCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:173
      XferM1HalfCpltCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:175
      XferErrorCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:177
      XferAbortCallback : access procedure (arg1 : access uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:179
      ErrorCode : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:181
      StreamBaseAddress : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:183
      StreamIndex : aliased Word;  -- Inc/stm32f4xx_hal_dma.h:185
   end record;
   pragma Convention (C_Pass_By_Copy, uu_DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:157

  --!< DMA communication parameters            
  --!< DMA locking object                      
  --!< DMA transfer state                      
  --!< Parent object state                     
  --!< DMA transfer complete callback          
  --!< DMA Half transfer complete callback     
  --!< DMA transfer complete Memory1 callback  
  --!< DMA transfer Half complete Memory1 callback  
  --!< DMA transfer error callback             
  --!< DMA transfer Abort callback             
  --!< DMA Error code                           
  --!< DMA Stream Base Address                 
  --!< DMA Stream Index                        
   type DMA_HandleTypeDef is new uu_DMA_HandleTypeDef;

  --*
  --  * @}
  --   

  -- Exported constants -------------------------------------------------------- 
  --* @defgroup DMA_Exported_Constants DMA Exported Constants
  --  * @brief    DMA Exported constants 
  --  * @{
  --   

  --* @defgroup DMA_Error_Code DMA Error Code
  --  * @brief    DMA Error Code 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Channel_selection DMA Channel selection
  --  * @brief    DMA channel selection 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Data_transfer_direction DMA Data transfer direction
  --  * @brief    DMA data transfer direction 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Peripheral_incremented_mode DMA Peripheral incremented mode
  --  * @brief    DMA peripheral incremented mode 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Memory_incremented_mode DMA Memory incremented mode
  --  * @brief    DMA memory incremented mode 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Peripheral_data_size DMA Peripheral data size
  --  * @brief    DMA peripheral data size 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Memory_data_size DMA Memory data size
  --  * @brief    DMA memory data size 
  --  * @{ 
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_mode DMA mode
  --  * @brief    DMA mode 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Priority_level DMA Priority level
  --  * @brief    DMA priority levels 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_FIFO_direct_mode DMA FIFO direct mode
  --  * @brief    DMA FIFO direct mode
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_FIFO_threshold_level DMA FIFO threshold level
  --  * @brief    DMA FIFO level 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Memory_burst DMA Memory burst
  --  * @brief    DMA memory burst 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_Peripheral_burst DMA Peripheral burst
  --  * @brief    DMA peripheral burst 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_interrupt_enable_definitions DMA interrupt enable definitions
  --  * @brief    DMA interrupts definition 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --* @defgroup DMA_flag_definitions DMA flag definitions
  --  * @brief    DMA flag definitions 
  --  * @{
  --   

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Exported macro ------------------------------------------------------------ 
  --* @brief Reset DMA handle state
  --  * @param  __HANDLE__: specifies the DMA handle.
  --  * @retval None
  --   

  --*
  --  * @brief  Return the current DMA Stream FIFO filled level.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The FIFO filling state.
  --  *           - DMA_FIFOStatus_Less1QuarterFull: when FIFO is less than 1 quarter-full 
  --  *                                              and not empty.
  --  *           - DMA_FIFOStatus_1QuarterFull: if more than 1 quarter-full.
  --  *           - DMA_FIFOStatus_HalfFull: if more than 1 half-full.
  --  *           - DMA_FIFOStatus_3QuartersFull: if more than 3 quarters-full.
  --  *           - DMA_FIFOStatus_Empty: when FIFO is empty
  --  *           - DMA_FIFOStatus_Full: when FIFO is full
  --   

  --*
  --  * @brief  Enable the specified DMA Stream.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval None
  --   

  --*
  --  * @brief  Disable the specified DMA Stream.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval None
  --   

  -- Interrupt & Flag management  
  --*
  --  * @brief  Return the current DMA Stream transfer complete flag.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The specified transfer complete flag index.
  --   

  --*
  --  * @brief  Return the current DMA Stream half transfer complete flag.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The specified half transfer complete flag index.
  --   

  --*
  --  * @brief  Return the current DMA Stream transfer error flag.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The specified transfer error flag index.
  --   

  --*
  --  * @brief  Return the current DMA Stream FIFO error flag.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The specified FIFO error flag index.
  --   

  --*
  --  * @brief  Return the current DMA Stream direct mode error flag.
  --  * @param  __HANDLE__: DMA handle
  --  * @retval The specified direct mode error flag index.
  --   

  --*
  --  * @brief  Get the DMA Stream pending flags.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __FLAG__: Get the specified flag.
  --  *          This parameter can be any combination of the following values:
  --  *            @arg DMA_FLAG_TCIFx: Transfer complete flag.
  --  *            @arg DMA_FLAG_HTIFx: Half transfer complete flag.
  --  *            @arg DMA_FLAG_TEIFx: Transfer error flag.
  --  *            @arg DMA_FLAG_DMEIFx: Direct mode error flag.
  --  *            @arg DMA_FLAG_FEIFx: FIFO error flag.
  --  *         Where x can be 0_4, 1_5, 2_6 or 3_7 to select the DMA Stream flag.   
  --  * @retval The state of FLAG (SET or RESET).
  --   

  --*
  --  * @brief  Clear the DMA Stream pending flags.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __FLAG__: specifies the flag to clear.
  --  *          This parameter can be any combination of the following values:
  --  *            @arg DMA_FLAG_TCIFx: Transfer complete flag.
  --  *            @arg DMA_FLAG_HTIFx: Half transfer complete flag.
  --  *            @arg DMA_FLAG_TEIFx: Transfer error flag.
  --  *            @arg DMA_FLAG_DMEIFx: Direct mode error flag.
  --  *            @arg DMA_FLAG_FEIFx: FIFO error flag.
  --  *         Where x can be 0_4, 1_5, 2_6 or 3_7 to select the DMA Stream flag.   
  --  * @retval None
  --   

  --*
  --  * @brief  Enable the specified DMA Stream interrupts.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __INTERRUPT__: specifies the DMA interrupt sources to be enabled or disabled. 
  --  *        This parameter can be any combination of the following values:
  --  *           @arg DMA_IT_TC: Transfer complete interrupt mask.
  --  *           @arg DMA_IT_HT: Half transfer complete interrupt mask.
  --  *           @arg DMA_IT_TE: Transfer error interrupt mask.
  --  *           @arg DMA_IT_FE: FIFO error interrupt mask.
  --  *           @arg DMA_IT_DME: Direct mode error interrupt.
  --  * @retval None
  --   

  --*
  --  * @brief  Disable the specified DMA Stream interrupts.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __INTERRUPT__: specifies the DMA interrupt sources to be enabled or disabled. 
  --  *         This parameter can be any combination of the following values:
  --  *            @arg DMA_IT_TC: Transfer complete interrupt mask.
  --  *            @arg DMA_IT_HT: Half transfer complete interrupt mask.
  --  *            @arg DMA_IT_TE: Transfer error interrupt mask.
  --  *            @arg DMA_IT_FE: FIFO error interrupt mask.
  --  *            @arg DMA_IT_DME: Direct mode error interrupt.
  --  * @retval None
  --   

  --*
  --  * @brief  Check whether the specified DMA Stream interrupt is enabled or disabled.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __INTERRUPT__: specifies the DMA interrupt source to check.
  --  *         This parameter can be one of the following values:
  --  *            @arg DMA_IT_TC: Transfer complete interrupt mask.
  --  *            @arg DMA_IT_HT: Half transfer complete interrupt mask.
  --  *            @arg DMA_IT_TE: Transfer error interrupt mask.
  --  *            @arg DMA_IT_FE: FIFO error interrupt mask.
  --  *            @arg DMA_IT_DME: Direct mode error interrupt.
  --  * @retval The state of DMA_IT.
  --   

  --*
  --  * @brief  Writes the number of data units to be transferred on the DMA Stream.
  --  * @param  __HANDLE__: DMA handle
  --  * @param  __COUNTER__: Number of data units to be transferred (from 0 to 65535) 
  --  *          Number of data items depends only on the Peripheral data format.
  --  *            
  --  * @note   If Peripheral data format is Bytes: number of data units is equal 
  --  *         to total number of bytes to be transferred.
  --  *           
  --  * @note   If Peripheral data format is Half-Word: number of data units is  
  --  *         equal to total number of bytes to be transferred / 2.
  --  *           
  --  * @note   If Peripheral data format is Word: number of data units is equal 
  --  *         to total  number of bytes to be transferred / 4.
  --  *      
  --  * @retval The number of remaining data units in the current DMAy Streamx transfer.
  --   

  --*
  --  * @brief  Returns the number of remaining data units in the current DMAy Streamx transfer.
  --  * @param  __HANDLE__: DMA handle
  --  *   
  --  * @retval The number of remaining data units in the current DMA Stream transfer.
  --   

  -- Include DMA HAL Extension module  
  -- Exported functions -------------------------------------------------------- 
  --* @defgroup DMA_Exported_Functions DMA Exported Functions
  --  * @brief    DMA Exported functions 
  --  * @{
  --   

  --* @defgroup DMA_Exported_Functions_Group1 Initialization and de-initialization functions
  --  * @brief   Initialization and de-initialization functions 
  --  * @{
  --   

   function HAL_DMA_Init (hdma : access DMA_HandleTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:661
   pragma Import (C, HAL_DMA_Init, "HAL_DMA_Init");

   function HAL_DMA_DeInit (hdma : access DMA_HandleTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:662
   pragma Import (C, HAL_DMA_DeInit, "HAL_DMA_DeInit");

  --*
  --  * @}
  --   

  --* @defgroup DMA_Exported_Functions_Group2 I/O operation functions
  --  * @brief   I/O operation functions  
  --  * @{
  --   

   function HAL_DMA_Start
     (hdma : access DMA_HandleTypeDef;
      SrcAddress : Word;
      DstAddress : Word;
      DataLength : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:671
   pragma Import (C, HAL_DMA_Start, "HAL_DMA_Start");

   function HAL_DMA_Start_IT
     (hdma : access DMA_HandleTypeDef;
      SrcAddress : Word;
      DstAddress : Word;
      DataLength : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:672
   pragma Import (C, HAL_DMA_Start_IT, "HAL_DMA_Start_IT");

   function HAL_DMA_Abort (hdma : access DMA_HandleTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:673
   pragma Import (C, HAL_DMA_Abort, "HAL_DMA_Abort");

   function HAL_DMA_Abort_IT (hdma : access DMA_HandleTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:674
   pragma Import (C, HAL_DMA_Abort_IT, "HAL_DMA_Abort_IT");

   function HAL_DMA_PollForTransfer
     (hdma : access DMA_HandleTypeDef;
      CompleteLevel : HAL_DMA_LevelCompleteTypeDef;
      Timeout : Word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:675
   pragma Import (C, HAL_DMA_PollForTransfer, "HAL_DMA_PollForTransfer");

   procedure HAL_DMA_IRQHandler (hdma : access DMA_HandleTypeDef);  -- Inc/stm32f4xx_hal_dma.h:676
   pragma Import (C, HAL_DMA_IRQHandler, "HAL_DMA_IRQHandler");

   function HAL_DMA_CleanCallbacks (hdma : access DMA_HandleTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:677
   pragma Import (C, HAL_DMA_CleanCallbacks, "HAL_DMA_CleanCallbacks");

   function HAL_DMA_RegisterCallback
     (hdma : access DMA_HandleTypeDef;
      CallbackID : HAL_DMA_CallbackIDTypeDef;
      pCallback : access procedure (arg1 : access DMA_HandleTypeDef)) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:678
   pragma Import (C, HAL_DMA_RegisterCallback, "HAL_DMA_RegisterCallback");

   function HAL_DMA_UnRegisterCallback (hdma : access DMA_HandleTypeDef; CallbackID : HAL_DMA_CallbackIDTypeDef) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal_dma.h:679
   pragma Import (C, HAL_DMA_UnRegisterCallback, "HAL_DMA_UnRegisterCallback");

  --*
  --  * @}
  --   

  --* @defgroup DMA_Exported_Functions_Group3 Peripheral State functions
  --  * @brief    Peripheral State functions 
  --  * @{
  --   

   function HAL_DMA_GetState (hdma : access DMA_HandleTypeDef) return HAL_DMA_StateTypeDef;  -- Inc/stm32f4xx_hal_dma.h:689
   pragma Import (C, HAL_DMA_GetState, "HAL_DMA_GetState");

   function HAL_DMA_GetError (hdma : access DMA_HandleTypeDef) return Word;  -- Inc/stm32f4xx_hal_dma.h:690
   pragma Import (C, HAL_DMA_GetError, "HAL_DMA_GetError");

  --*
  --  * @}
  --   

  --*
  --  * @}
  --   

  -- Private Constants ------------------------------------------------------------- 
  --* @defgroup DMA_Private_Constants DMA Private Constants
  --  * @brief    DMA private defines and constants 
  --  * @{
  --   

  --*
  --  * @}
  --   

  -- Private macros ------------------------------------------------------------ 
  --* @defgroup DMA_Private_Macros DMA Private Macros
  --  * @brief    DMA private macros 
  --  * @{
  --   

  --*
  --  * @}
  --   

  -- Private functions --------------------------------------------------------- 
  --* @defgroup DMA_Private_Functions DMA Private Functions
  --  * @brief    DMA private  functions 
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
end Stm32F407.Hal.Dma;
