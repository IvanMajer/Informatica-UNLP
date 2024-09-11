Procedure busquedaDicotomicaRecur (v: vecInteger; ini, fin: integer; dato: integer; var pos: integer);
var
   x: integer;
begin
    if (pos <> 0) then begin
       x:= (fin + ini) DIV 2;
        if (v[x] = dato) then begin
   	pos:= x;
              writeln('Encontrado en pos ', x)
        end 
       else begin
              if (dato < v[x]) then
                  busquedaDicotomica (v, ini, x, dato, pos)
              else
                  busquedaDicotomica (v, x, fin, dato, pos);
               end;
       end;
end;

