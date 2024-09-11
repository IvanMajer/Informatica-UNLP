procedure carga (var v: vector);
var
   i,valor:integer;

  begin
   for i:= 1 to tam do
    begin
      read (valor);
      v[i]:= valor;
    end;
  end;

