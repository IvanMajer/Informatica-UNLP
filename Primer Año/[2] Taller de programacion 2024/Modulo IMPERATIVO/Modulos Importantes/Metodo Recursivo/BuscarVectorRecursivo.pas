function buscarVectorRecur (v: vecInteger; dimLog, valor: integer): boolean;
var
   ok: boolean;
begin
   if (dimLog > 0) then
      if (v[dimLog] = valor) then
         ok:= true;
         buscarVectorRecur:= ok;
      else
         buscarVectorRecur(v, dimLog - 1, valor);
     end;
   else
       ok:= false;
       buscarVectorRecur:= ok;
end;
