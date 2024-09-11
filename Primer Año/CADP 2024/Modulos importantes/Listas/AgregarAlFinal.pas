procedure agregarAlFinal (var pI:listaE; num:integer);
Var
 nuevo,aux:listaE;
 
Begin
   new (nuevo);
   nuevo^.elem:= num; 
   nuevo^.sig:=nil; 
   if (pI = nil) then pI:= nuevo
   else begin
        aux:= pI;
        while (aux ^.sig <> nil) do
          aux:= aux^.sig;
        aux^.sig:=nuevo;       
       end;
End;


