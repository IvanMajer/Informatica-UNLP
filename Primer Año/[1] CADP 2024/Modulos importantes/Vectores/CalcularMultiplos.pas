function multiplos (v:vector):integer;
Var
  i,cant: integer;

Begin
  cant:=0;
  for i:= 1 to tam do
   begin
     if ((v[i] MOD multi) = 0) then
       cant:= cant + 1;
   end; 
  multiplos:= cant;
End;


