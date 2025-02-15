```ada
function Check_Range(Num : Integer) return Boolean is
begin
  if Num > 10 then
    return True;
  else
    return False;
  end if;
exception
  when Constraint_Error => -- Handle potential Constraint_Error
    Put_Line("Constraint Error: Number out of range");
    return False;
  when others =>
    Put_Line("Unexpected Error during range check");
    return False; -- Handle any other unexpected exceptions
end Check_Range;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Number : Integer := 12;
begin
   if Check_Range(Number) then
      Put_Line("Number is within range");
   else
      Put_Line("Number is out of range");
   end if;

   -- Example to trigger Constraint_Error
   declare
     Small_Number : Integer range 1..5 := 12; -- Example to trigger Constraint_Error
   begin
     null; -- Do nothing here, the exception is expected
   exception
     when Constraint_Error =>
       Put_Line("Constraint Error Example caught in main");
   end;
   
end Main;
```