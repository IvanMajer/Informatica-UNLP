Procedure agregar (var a:árbol; num:integer);
Begin
  if (a = nil) then
   begin
      new(A);
      a^.dato:= num;
      a^.HI:= nil;
      a^.HD:= nil;
   end
   else
    if (num <= A^.dato) then 
		agregar(a^.HI,num)
    else 
		agregar (a^.HD,num)   
End;
