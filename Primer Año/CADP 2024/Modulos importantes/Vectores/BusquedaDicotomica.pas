 Function dicotomica (a:números; dL:integer; valor:integer):boolean;

Var 
    pri, ult, medio : integer;
    ok:boolean

Begin
     ok:= false;
     pri:= 1 ;  ult:= dL;  medio := (pri + ult ) div 2 ;

     While  ( pri < = ult ) and ( valor <> vec[medio]) do 
       begin
         if ( valor < vec[medio] ) then 
           ult:= medio -1 ;
         else pri:= medio+1 ;
         medio := ( pri + ult ) div 2 ;
       end;
     if (pri <=ult) and (valor = vec[medio]) then ok:=true; 
   end;
  dicotomica:= ok;
end.
