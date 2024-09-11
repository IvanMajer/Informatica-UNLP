procedure agregarAdelante (var pI:listaE; num:integer);
Var
 nuevo:listaE;
 
Begin
   new (nuevo); nuevo^.elem:= num; nuevo^.sig:=nil;
   if (pI = nil) then pI:= nuevo
   else begin
        nuevo^.sig:= pI;
        pI:=nuevo;
       end;
End;

