with Ada.Text_IO;
with Ada.Command_Line;
with Ada.Strings.Unbounded;
with Ada.Exceptions;
with Ada.IO_Exceptions;
use Ada.Text_IO;

package body Word_Lists is
   package ASU renames Ada.Strings.Unbounded;


x: Integer;

   type String_Cell;
   
   type Word_List_Type is access String_Cell;
   
   type String_Cell is record
      Word: ASU.Unbounded_String;
      Next: String_Pointer;
   end record;



begin
        loop



	Put_Line("               OPCIONES         ");
	Put_Line("                                ");
	Put_Line(" 1.Añadir palabra               ");
	Put_Line(" 2.Borrar palabra               ");
	Put_Line(" 3.Buscar palabra               ");
	Put_Line(" 4.Mostrar lista de palabras    ");
	Put_Line(" 5.Salir                        ");
	Put_LIne("                                ");
	Put_Line(" Selecciona la opcion que desea ");
	x:= Integer'Value(Get_Line);
	
	



	 case x is
	
	when 1 =>
	
	Put_Line(" Escribe la palabra a añadir ");
	US:= ASU.To_Unbounded_String(Get_Line);

        procedure Add_Word ( List : in out String_Pointer; Word: ASU.Unbouded_String) is
        P_Word : String_Pointer := List;

           begin
              
		if List = null then
		List := new String_Cell'(Word, null);
	        return;
                end if;

		while P_Word.Netx /= null loop
		P_Word := P_Word.Next;
		end loop;

		P_Word.Next := new String_Cell'(Word, null);
		end Add_Word;
	when 2 => 
	
	Put_Line(" Escriba la palabra que desea borrar ");
	US:=ASU.To_Unbounded_Strings(Get_Line);

	procedure Print_Word (List : String_Pointer) is 
	P_Word : String_Pointer := List;

	begin
       
           while P_String /= null loop 
	   Ada.Text_IO.Put_Line ("Palabra: " & String'Image(P_String.Word));
	   P_Word := P_Word.Next;
	   end loop;
	   end Print_Word;

	   List : String_Pointer;
	   Word : ASU.Unbounded_String;

	
	
	when 3 =>
	
	Put_Line(" Escriba la palabra que desea buscar ");
	US:= ASU.TO_Unbounded_String(Get_Line);
	
	
	when 4 =>
	
	Put_Line(" A continuación se mostrará la lista de palabras ");
	
		
	
	
	  end case;
   end loop;

   exception when Constraint_Error => null;
	begin

	loop
      Ada.Text_IO.Put ("Introduce un número entero (q para salir): ");
      Number := Integer'Value (Ada.Text_IO.Get_Line);
      Add_Number (List, Number);
   end loop;
   
exception
   when Constraint_Error =>
      Print_Numbers (List);
   end;
	

	  
end Word_Lists;

	
	
