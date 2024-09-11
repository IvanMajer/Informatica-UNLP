Procedure enOrden ( a : arbol );
begin
   if ( a <> nil ) then begin
    enOrden (a^.HI);
    write (a^.dato); //o cualquier otra acción
    enOrden (a^.HD);
   end;
end;
