function buscar (a :números; dL:integer; valor:integer): boolean;

Var
  pos:integer;
  esta:boolean;

Begin
  esta:= false;
  pos:=1;
  while ( (pos <= dL) and (not esta) ) do
     begin
       if (a[pos]= valor) then esta:= true
       else
          pos:= pos + 1;
     end; 
   buscar:= esta; 
end.


