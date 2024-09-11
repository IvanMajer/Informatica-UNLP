{
	Recorre un arbol y busca total entre dos valores (en este caso DNIs).
}
function recorrerArbolEntre2 (A: arbol ; DNI1, DNI2: integer): integer;
var
  total: integer;
begin
    if (A = NIL) then
       total:= 0
    else if (A<> NIL) then begin
        if (A^.datoA.dni > DNI1) and (A^.datoA.dni< DNI2) then begin
          total:= total + A^.datoA.cant;
          recorrerArbolEntre2(A^.HD, DNI1, DNI2);
          recorrerArbolEntre2(A^.HI, DNI1, DNI2);
         end;
       end
     else
        if (A^.datoA.dni < DNI1) then
           recorrerArbolEntre2(A^.HD, DNI1, DNI2);
        if (A^.datoA.dni > DNI2) then
            recorrerArbolEntre2(A^.HI, DNI1, DNI2);
  recorrerArbolEntre2:= total;
  end;


