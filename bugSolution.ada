```ada
function Check_Range(Num : Integer) return Boolean is
begin
   if Num < 10 or Num > 100 then
      return False;
   else
      return True;
   end if;
end Check_Range;

procedure Example is
   Result : Boolean;
begin
   Result := Check_Range(50);
   if Result = True then
      Put_Line("Number is in range");
   else
      Put_Line("Number is out of range");
   end if;

   -- Handle potential Constraint_Error using an exception handler
   begin
      Result := Check_Range(Integer'Last + 1);
      if Result = True then
         Put_Line("Number is in range");
      else
         Put_Line("Number is out of range");
      end if;
   exception
      when Constraint_Error =>
         Put_Line("Constraint Error: Integer overflow");
   end;
end Example;
```