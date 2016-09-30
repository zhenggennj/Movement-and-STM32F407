pragma Ada_2005;
pragma Style_Checks (Off);

-- This is an integration of stm32f4xx_hal.h and stm32f4xx_hal_def.h
package stm32f407.Hal  is
   pragma Linker_Options("-lhalperiph");
   
   --  unsupported macro: HAL_MAX_DELAY 0xFFFFFFFFU
   --  arg-macro: function HAL_IS_BIT_SET (REG, BIT)
   --    return ((REG) and (BIT)) /= RESET;
   --  arg-macro: function HAL_IS_BIT_CLR (REG, BIT)
   --    return ((REG) and (BIT)) = RESET;
   --  arg-macro: function UNUSED (x)
   --    return (void)(x);
  --*
  --  ******************************************************************************
  --  * @file    stm32f4xx_hal_def.h
  --  * @author  MCD Application Team
  --  * @version V1.5.0
  --  * @date    06-May-2016
  --  * @brief   This file contains HAL common defines, enumeration, macros and 
  --  *          structures definitions. 
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
  -- Exported types ------------------------------------------------------------ 
  --* 
  --  * @brief  HAL Status structures definition  
  --   

   type HAL_StatusTypeDef is 
     (HAL_OK,
      HAL_ERROR,
      HAL_BUSY,
      HAL_TIMEOUT);
   pragma Convention (C, HAL_StatusTypeDef);  -- Inc/stm32f4xx_hal_def.h:63

  --* 
  --  * @brief  HAL Lock structures definition  
  --   

   type HAL_LockTypeDef is 
     (HAL_UNLOCKED,
      HAL_LOCKED);
   pragma Convention (C, HAL_LockTypeDef);  -- Inc/stm32f4xx_hal_def.h:72

  -- Exported macro ------------------------------------------------------------ 
  --* @brief Reset the Handle's State field.
  --  * @param __HANDLE__: specifies the Peripheral Handle.
  --  * @note  This macro can be used for the following purpose: 
  --  *          - When the Handle is declared as local variable; before passing it as parameter
  --  *            to HAL_PPP_Init() for the first time, it is mandatory to use this macro 
  --  *            to set to 0 the Handle's "State" field.
  --  *            Otherwise, "State" field may have any random value and the first time the function 
  --  *            HAL_PPP_Init() is called, the low level hardware initialization will be missed
  --  *            (i.e. HAL_PPP_MspInit() will not be executed).
  --  *          - When there is a need to reconfigure the low level hardware: instead of calling
  --  *            HAL_PPP_DeInit() then HAL_PPP_Init(), user can make a call to this macro then HAL_PPP_Init().
  --  *            In this later function, when the Handle's "State" field is set to 0, it will execute the function
  --  *            HAL_PPP_MspInit() which will reconfigure the low level hardware.
  --  * @retval None
  --   

  -- Reserved for future use  
  -- Macro to get variable aligned on 4-bytes, for __ICCARM__ the directive "#pragma data_alignment=4" must be used instead  
  --* 
  --  * @brief  __RAM_FUNC definition
  --   

  -- ARM Compiler
  --   ------------
  --   RAM functions are defined using the toolchain options. 
  --   Functions that are executed in RAM should reside in a separate source module.
  --   Using the 'Options for File' dialog you can simply change the 'Code / Const' 
  --   area of a module to a memory space in physical RAM.
  --   Available memory areas are declared in the 'Target' tab of the 'Options for Target'
  --   dialog. 
  -- 

  -- ICCARM Compiler
  --   ---------------
  --   RAM functions are defined using a specific toolchain keyword "__ramfunc". 
  -- 

  -- GNU Compiler
  --   ------------
  --  RAM functions are defined using a specific toolchain attribute 
  --   "__attribute__((section(".RamFunc")))".
  -- 

  --* 
  --  * @brief  __NOINLINE definition
  --   

  -- ARM & GNUCompiler 
  --   ---------------- 
  -- 

  -- ICCARM Compiler
  --   ---------------
  -- 

   --*********************** (C) COPYRIGHT STMicroelectronics *****END OF FILE*** 
   
     -- Initialization and de-initialization functions  ***************************** 
   function HAL_Init return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal.h:193
   pragma Import (C, HAL_Init, "HAL_Init");

   function HAL_DeInit return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal.h:194
   pragma Import (C, HAL_DeInit, "HAL_DeInit");

   procedure HAL_MspInit;  -- Inc/stm32f4xx_hal.h:195
   pragma Import (C, HAL_MspInit, "HAL_MspInit");

   procedure HAL_MspDeInit;  -- Inc/stm32f4xx_hal.h:196
   pragma Import (C, HAL_MspDeInit, "HAL_MspDeInit");

   function HAL_InitTick (arg1 :word) return HAL_StatusTypeDef;  -- Inc/stm32f4xx_hal.h:197
   pragma Import (C, HAL_InitTick, "HAL_InitTick");

  --*
  --  * @}
  --   

  --* @addtogroup HAL_Exported_Functions_Group2
  --  * @{
  --   

  -- Peripheral Control functions  *********************************************** 
   procedure HAL_IncTick;  -- Inc/stm32f4xx_hal.h:206
   pragma Import (C, HAL_IncTick, "HAL_IncTick");

   procedure HAL_Delay (arg1 :word);  -- Inc/stm32f4xx_hal.h:207
   pragma Import (C, HAL_Delay, "HAL_Delay");

   function HAL_GetTick return word;  -- Inc/stm32f4xx_hal.h:208
   pragma Import (C, HAL_GetTick, "HAL_GetTick");

   procedure HAL_SuspendTick;  -- Inc/stm32f4xx_hal.h:209
   pragma Import (C, HAL_SuspendTick, "HAL_SuspendTick");

   procedure HAL_ResumeTick;  -- Inc/stm32f4xx_hal.h:210
   pragma Import (C, HAL_ResumeTick, "HAL_ResumeTick");

   function HAL_GetHalVersion return word;  -- Inc/stm32f4xx_hal.h:211
   pragma Import (C, HAL_GetHalVersion, "HAL_GetHalVersion");

   function HAL_GetREVID return word;  -- Inc/stm32f4xx_hal.h:212
   pragma Import (C, HAL_GetREVID, "HAL_GetREVID");

   function HAL_GetDEVID return word;  -- Inc/stm32f4xx_hal.h:213
   pragma Import (C, HAL_GetDEVID, "HAL_GetDEVID");

   procedure HAL_DBGMCU_EnableDBGSleepMode;  -- Inc/stm32f4xx_hal.h:214
   pragma Import (C, HAL_DBGMCU_EnableDBGSleepMode, "HAL_DBGMCU_EnableDBGSleepMode");

   procedure HAL_DBGMCU_DisableDBGSleepMode;  -- Inc/stm32f4xx_hal.h:215
   pragma Import (C, HAL_DBGMCU_DisableDBGSleepMode, "HAL_DBGMCU_DisableDBGSleepMode");

   procedure HAL_DBGMCU_EnableDBGStopMode;  -- Inc/stm32f4xx_hal.h:216
   pragma Import (C, HAL_DBGMCU_EnableDBGStopMode, "HAL_DBGMCU_EnableDBGStopMode");

   procedure HAL_DBGMCU_DisableDBGStopMode;  -- Inc/stm32f4xx_hal.h:217
   pragma Import (C, HAL_DBGMCU_DisableDBGStopMode, "HAL_DBGMCU_DisableDBGStopMode");

   procedure HAL_DBGMCU_EnableDBGStandbyMode;  -- Inc/stm32f4xx_hal.h:218
   pragma Import (C, HAL_DBGMCU_EnableDBGStandbyMode, "HAL_DBGMCU_EnableDBGStandbyMode");

   procedure HAL_DBGMCU_DisableDBGStandbyMode;  -- Inc/stm32f4xx_hal.h:219
   pragma Import (C, HAL_DBGMCU_DisableDBGStandbyMode, "HAL_DBGMCU_DisableDBGStandbyMode");

   procedure HAL_EnableCompensationCell;  -- Inc/stm32f4xx_hal.h:220
   pragma Import (C, HAL_EnableCompensationCell, "HAL_EnableCompensationCell");

   procedure HAL_DisableCompensationCell;  -- Inc/stm32f4xx_hal.h:221
   pragma Import (C, HAL_DisableCompensationCell, "HAL_DisableCompensationCell");
end Stm32F407.Hal ;
