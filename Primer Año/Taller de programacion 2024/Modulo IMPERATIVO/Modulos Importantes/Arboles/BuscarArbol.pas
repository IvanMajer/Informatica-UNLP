Procedure Buscar (a:arbol;x:integer;var ok:boolean);
begin
   if ( a <> nil ) then begin
    buscar (a^.HI,x,ok);
    if (a^.dato = x) then
		ok:= true;
    buscar (a^.HD,x,ok);
   end;
end


