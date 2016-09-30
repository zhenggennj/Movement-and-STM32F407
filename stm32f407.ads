pragma Ada_2012;
pragma Style_Checks (Off);

with Interfaces; 

package stm32f407 is
   type Word      is new Interfaces.Unsigned_32;  -- for shift/rotate
   type Half_Word is new Interfaces.Unsigned_16;  -- for shift/rotate
   subtype HWord is Half_Word;  -- for shift/rotate
   type Byte      is new Interfaces.Unsigned_8;   -- for shift/rotate

   type Bits_1  is mod 2**1 with Size => 1;
   type Bits_2  is mod 2**2 with Size => 2;
   type Bits_4  is mod 2**4 with Size => 4;

   type Bits_32x1 is array (0 .. 31) of Bits_1 with Pack, Size => 32;
   type Bits_16x2 is array (0 .. 15) of Bits_2 with Pack, Size => 32;
   type Bits_8x4  is array (0 ..  7) of Bits_4 with Pack, Size => 32;


   type FlagStatus is
     (RESET,
      SET);
   pragma Convention (C, FlagStatus);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f4xx.h:200

   type ITStatus is
     (RESET,
      SET);
   pragma Convention (C, ITStatus);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f4xx.h:200

   type FunctionalState is
     (DISABLE,
      ENABLE);
   pragma Convention (C, FunctionalState);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f4xx.h:206

   type ErrorStatus is
     (ERROR,
      SUCCESS);
   pragma Convention (C, ErrorStatus);  -- ../CMSIS/Device/ST/STM32F4xx/Include/stm32f4xx.h:213
end stm32f407;
