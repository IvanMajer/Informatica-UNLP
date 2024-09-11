function verificar (v:vector; valor:integer):integer;

  Var
   i,cant:integer;

   Begin
     cant:= 0;
     for i:= 1 to tam do
       begin     
          if (valor = v[i]) then
            cant:= cant + 1;
       end;
   
     verificar:= cant;
   End; 
