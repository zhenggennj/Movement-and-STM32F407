with Ada.Text_IO;                   use Ada.Text_IO;
with Ada.Strings;                   use Ada.Strings;
with Ada.Strings.Fixed;             use Ada.Strings.Fixed;
with Ada.Strings.Maps;              use Ada.Strings.Maps;
with Ada.Strings.Unbounded;         use Ada.Strings.Unbounded;
with Ada.Strings.Unbounded.Text_IO; use Ada.Strings.Unbounded.Text_IO;
with Ada.Command_Line;              use Ada.Command_Line;
procedure deal_with_unsupported_macro is
   type ustringarray is array (Positive range 1 .. 100) of Unbounded_String;
   block_buffer       : ustringarray;
   block_buffer_count : Natural := 0;
   line_buffer        : Unbounded_String;

   header_str     : String            := "   --  unsupported macro: ";
   header_str_len : constant Positive := header_str'Length;
   --token1_pos1,token1_pos2,token2_pos1,token2_pos2:positive;
--   underline1_pos,underline2_pos,space_pos:natural;
   function Processing_Second_part (string_in : String) return String is
      str_in             : String           := Trim (string_in, Side => Left);
      string_uint32_t    : constant String  := "(uint32_t)";
      string_uint16_t    : constant String  := "(uint16_t)";
      string_uint8_t     : constant String  := "(uint8_t)";
      string_0x          : constant String  := "0x";
      string_U           : constant String  := "U";
      string_word        : constant String  := " Word := ";
      string_hword       : constant String  := " HWord := ";
      string_byte        : constant String  := " Byte := ";
      pos                : Natural;
      occurs             : Natural;
      str_start, str_end : Natural;
      str_return         : Unbounded_String := To_Unbounded_String ("");
   begin
      -- return "word :=" or "Hword :=" or "byte:=" according to c_types found
      occurs := Ada.Strings.Fixed.Count (str_in, string_uint8_t);
      if occurs >= 1 then
         --         put(string_byte);
         str_return := str_return & string_byte;

         str_start := str_in'First;
         str_end   := str_in'Last;
         for i in 1 .. occurs loop
            pos := Index (str_in (str_start .. str_end), string_uint8_t);
            Replace_Slice
              (str_in (str_start .. str_end),
               pos,
               pos + string_uint8_t'Length - 1,
               string_uint8_t'Length * ' ');
            str_start := pos + string_uint8_t'Length;
         end loop;

      else
         occurs := Ada.Strings.Fixed.Count (str_in, string_uint16_t);
         if occurs >= 1 then
--           put(string_hword);
            str_return := str_return & string_hword;
            str_start  := str_in'First;
            str_end    := str_in'Last;
            for i in 1 .. occurs loop
               pos := Index (str_in (str_start .. str_end), string_uint16_t);
               Replace_Slice
                 (str_in (str_start .. str_end),
                  pos,
                  pos + string_uint16_t'Length - 1,
                  string_uint16_t'Length * ' ');
               str_start := pos + string_uint16_t'Length;
            end loop;
         else
            occurs     := Ada.Strings.Fixed.Count (str_in, string_uint32_t);
            str_return := str_return & string_word;
            if occurs >= 1 then
--               put(string_word);
               str_start := str_in'First;
               str_end   := str_in'Last;
               for i in 1 .. occurs loop
                  pos :=
                    Index (str_in (str_start .. str_end), string_uint32_t);
                  Replace_Slice
                    (str_in (str_start .. str_end),
                     pos,
                     pos + string_uint32_t'Length - 1,
                     string_uint32_t'Length * ' ');
                  str_start := pos + string_uint32_t'Length;
               end loop;
            end if;
         end if;

      end if;
      -- reformat a C_numberical_literal to Ada alternative.
      occurs := Ada.Strings.Fixed.Count (str_in, string_0x);
      if occurs >= 1 then
         declare
--            str_in_ub:Unbounded_String:=To_Unbounded_String(str_in);
            set   : Maps.Character_Set := To_Set ("0123456789ABCDEF");
            first : Positive;
            last  : Natural;
         begin
            str_start := str_in'First;--1;
            str_end   := str_in'Last;--length(str_in_ub);

            for i in 1 .. occurs loop
               pos        := Index (str_in, string_0x, str_start);
               str_return := str_return & str_in (str_start .. pos - 1);
               str_return := str_return & "16#";
               Find_Token (str_in, set, pos + 2, Inside, first, last);
               str_return := str_return & str_in (first .. last);
               str_return := str_return & "#";
               if str_in (last + 1) = 'U' then
                  str_start := last + 2;
               else
                  str_start := last + 1;
               end if;
            end loop;
            str_return := str_return & str_in (str_start .. str_in'Last);
         end;
      else
         declare
            u_pos  : Natural;
         begin
            u_pos:=str_in'First;
            loop
               u_pos:=index (str_in,"U",u_pos);
               if u_pos>0 then
                  if str_in(u_pos-1) in '0'..'9' then
                     str_in(u_pos):=' '; -- remove U
                  end if;

                  u_pos:=u_pos+1;
                  if u_pos >= str_end then
                     exit;
                  end if;
               else
                  exit;
               end if;
            end loop;
         end;

         str_return := str_return & str_in;
      end if;
      return To_String (str_return);

   end Processing_Second_part;

   function Processing_representation_part
     (string_in : String) return String
   is
      str_in             : String           := Trim (string_in, Side => Left);
      string_uint32_t    : constant String  := "(uint32_t)";
      string_uint16_t    : constant String  := "(uint16_t)";
      string_uint8_t     : constant String  := "(uint8_t)";
      string_0x          : constant String  := "0x";
      string_U           : constant String  := "U";
      string_word        : constant String  := " => ";
      string_hword       : constant String  := " => ";
      string_byte        : constant String  := " => ";
      pos                : Natural;
      occurs             : Natural;
      str_start, str_end : Natural;
      str_return         : Unbounded_String := To_Unbounded_String ("");
   begin
      -- return "word :=" or "Hword :=" or "byte:=" according to c_types found
      occurs := Ada.Strings.Fixed.Count (str_in, string_uint8_t);
      if occurs >= 1 then
         --         put(string_byte);
         str_return := str_return & string_byte;

         str_start := str_in'First;
         str_end   := str_in'Last;
         for i in 1 .. occurs loop
            pos := Index (str_in (str_start .. str_end), string_uint8_t);
            Replace_Slice
              (str_in (str_start .. str_end),
               pos,
               pos + string_uint8_t'Length - 1,
               string_uint8_t'Length * ' ');
            str_start := pos + string_uint8_t'Length;
         end loop;

      else
         occurs := Ada.Strings.Fixed.Count (str_in, string_uint16_t);
         if occurs >= 1 then
--           put(string_hword);
            str_return := str_return & string_hword;
            str_start  := str_in'First;
            str_end    := str_in'Last;
            for i in 1 .. occurs loop
               pos := Index (str_in (str_start .. str_end), string_uint16_t);
               Replace_Slice
                 (str_in (str_start .. str_end),
                  pos,
                  pos + string_uint16_t'Length - 1,
                  string_uint16_t'Length * ' ');
               str_start := pos + string_uint16_t'Length;
            end loop;
         else
            occurs     := Ada.Strings.Fixed.Count (str_in, string_uint32_t);
            str_return := str_return & string_word;
            if occurs >= 1 then
--               put(string_word);
               str_start := str_in'First;
               str_end   := str_in'Last;
               for i in 1 .. occurs loop
                  pos :=
                    Index (str_in (str_start .. str_end), string_uint32_t);
                  Replace_Slice
                    (str_in (str_start .. str_end),
                     pos,
                     pos + string_uint32_t'Length - 1,
                     string_uint32_t'Length * ' ');
                  str_start := pos + string_uint32_t'Length;
               end loop;
            end if;
         end if;

      end if;
      -- reformat a C_numberical_literal to Ada alternative.
      occurs := Ada.Strings.Fixed.Count (str_in, string_0x);
      if occurs >= 1 then
         declare
--            str_in_ub:Unbounded_String:=To_Unbounded_String(str_in);
            set   : Maps.Character_Set := To_Set ("0123456789ABCDEF");
            first : Positive;
            last  : Natural;
         begin
            str_start := str_in'First;--1;
            str_end   := str_in'Last;--length(str_in_ub);

            for i in 1 .. occurs loop
               pos        := Index (str_in, string_0x, str_start);
               str_return := str_return & str_in (str_start .. pos - 1);
               str_return := str_return & "16#";
               Find_Token (str_in, set, pos + 2, Inside, first, last);
               str_return := str_return & str_in (first .. last);
               str_return := str_return & "#";
               if str_in (last + 1) = 'U' then
                  str_start := last + 2;
               else
                  str_start := last + 1;
               end if;
            end loop;
            str_return := str_return & str_in (str_start .. str_in'Last);
         end;
      else
         declare
            set   : Maps.Character_Set := To_Set ("0123456789U");
            first : Positive;
            last  : Natural;
         begin
            str_start := str_in'First;--1;
            str_end   := str_in'Last;--length(str_in_ub);

            last:=str_end;
            first:=str_start;
            loop
               Find_Token (str_in, set, str_start, Inside, first, last);
               if last >= first and then last <=str_end then
                  if str_in(last)='U' then
                     str_in(last):=' '; -- remove U
                  end if;
                  str_start := last +1;
                  if str_start >= str_end then
                     exit;
                  end if;

               else
                  exit;
               end if;

            end loop;
         end;
         str_return := str_return & str_in;
      end if;
      pos := Index(str_return,"|");
      if pos>0 then
         Replace_Slice(str_return,pos,pos," or ");
      end if;

      return To_String (str_return);

   end Processing_representation_part;

   ads_file       : File_Type;
   line_buffer_us : Unbounded_String;
begin
   if Argument_Count /= 1 then
      Put_Line ("Invoking Syntax: deal_with_unsupported_macro.exe  xxx.ads");
      return;
   end if;

   Open (ads_file, In_File, Argument (1));
   line_buffer_us := Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
   loop
      declare
         space_set : Maps.Character_Set := To_Set (" ");
         item_first                                      : Positive;
         item_last                                       : Natural;
         underline_count, underline1_pos, underline2_pos : Natural;
         line_buffer : String             := To_String (line_buffer_us);
         str_2005:constant string := "pragma Ada_2005;";
         str_2012:constant string:="pragma Ada_2012;";
      begin

         if head(line_buffer,str_2005'Length)=str_2005 then
            Put_Line (str_2012);
            if not End_Of_File(ads_file) then
               line_buffer_us :=
                 Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
            else
               exit;
            end if;
         elsif (line_buffer'Length < header_str_len) then
            Put_Line (line_buffer);
            if not End_Of_File(ads_file) then
               line_buffer_us :=
                 Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
            else
               exit;
            end if;

         elsif (line_buffer'Length >= header_str_len)
           and then
           (line_buffer
              (line_buffer'First .. line_buffer'First + header_str_len - 1) /=
            header_str)
         then
            Put_Line (line_buffer);
            if not End_Of_File(ads_file) then
               line_buffer_us :=
                 Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
            else
               exit;
            end if;
         else
         --  unsupported macro: RCC_OSCILLATORTYPE_LSI ((uint32_t)0x00000008U)
         --  unsupported macro: RCC_HSE_OFF ((uint8_t)0x00U)
         --  unsupported macro: RCC_DBP_TIMEOUT_VALUE ((uint32_t)2U)

            --  unsupported macro: RCC_PLLSOURCE_HSI RCC_PLLCFGR_PLLSRC_HSI
            --  unsupported macro: RCC_HSION_BIT_NUMBER 0x00U
            --  unsupported macro: RCC_SYSCLKSOURCE_PLLRCLK ((uint32_t)(RCC_CFGR_SW_0 | RCC_CFGR_SW_1))
            --  unsupported macro: RCC_CR_OFFSET (RCC_OFFSET + 0x00U)
            Find_Token
              (line_buffer,
               space_set,
               header_str_len + 1,
               Outside,
               item_first,
               item_last);
            underline_count :=
              Ada.Strings.Fixed.Count
                (line_buffer (item_first .. item_last),
                 "_");
            if underline_count = 1 then
               --  unsupported macro: RCC_OFFSET (RCC_BASE - PERIPH_BASE)
               --  unsupported macro: RCC_MCO1 ((uint32_t)0x00000000U)
               Put (line_buffer (item_first .. item_last));
               Put (": constant ");
               Put
                 (Processing_Second_part
                    (line_buffer (item_last + 2 .. line_buffer'Last)));
               Put (";");
               New_Line;
               if not End_Of_File(ads_file) then
                  line_buffer_us :=
                    Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
               else
                  exit;
               end if;
            else

               underline1_pos :=
                 Ada.Strings.Fixed.Index
                   (line_buffer (item_first .. item_last),
                    "_");
               underline2_pos :=
                 Index (line_buffer (underline1_pos + 1 .. item_last), "_");
               block_buffer_count := 0;
               while (not End_Of_File (ads_file))
                 and then
                 (Slice (line_buffer_us, item_first, underline2_pos) =
                  line_buffer (item_first .. underline2_pos))
               loop
                  block_buffer_count                := block_buffer_count + 1;
                  block_buffer (block_buffer_count) := line_buffer_us;
                  line_buffer_us                    :=
                    Ada.Strings.Unbounded.Text_IO.Get_Line (ads_file);
               end loop;
               if block_buffer_count = 1 then
                  -- two underscore and only one sample
                  Put
                    (Slice
                       (block_buffer (block_buffer_count),
                        item_first,
                        item_last));
                  Put (": constant ");
                  Put
                    (Processing_Second_part
                       (Slice
                          (block_buffer (block_buffer_count),
                           item_last + 2,
                           Length (block_buffer (block_buffer_count)))));
                  Put (";");
                  New_Line;

               else  --many sample
                  Put ("type ");
                  Put (line_buffer (item_first .. underline2_pos));
                  Put ("t is (");
                  for i in 1 .. block_buffer_count loop
                     Find_Token
                       (To_String (block_buffer (i)),
                        space_set,
                        header_str_len + 1,
                        Outside,
                        item_first,
                        item_last);

                     Put (Slice (block_buffer (i), item_first, item_last));
                     if i /= block_buffer_count then
                        Put (",");
                     end if;
                     New_Line;
                  end loop;
                  Put_Line (") with size=>32;");
                  Put ("for ");
                  Put (line_buffer (item_first .. underline2_pos));
                  Put ("t use (");
                  for i in 1 .. block_buffer_count loop
                     Find_Token
                       (To_String (block_buffer (i)),
                        space_set,
                        header_str_len + 1,
                        Outside,
                        item_first,
                        item_last);
                     Put (Slice (block_buffer (i), item_first, item_last));
                     Put
                       (Processing_representation_part
                          (Slice
                             (block_buffer (i),
                              item_last + 2,
                              Length (block_buffer (i)))));
                     if i /= block_buffer_count then
                        Put (",");
                     end if;
                     New_Line;
                  end loop;
                  Put_Line (") ;");

               end if; --many sample
            end if; -- double underline

         end if;  --with unsupported macro
      end;
   end loop;
   Close (ads_file);
end deal_with_unsupported_macro;
