procedure cantidadProductos (A: arbol; codigo: integer; var cant: integer);
begin 
    if (A <> NIL) then begin
            if (A^.dato.codigo = codigo) then 
                cant:= cant + A^.dato.cantVendidos;
            if (codigo <= A^.dato.codigo) then
                cantidadProductosI(A^.HI, codigo, cant)
            else
                cantidadProductosI(A^.HD, codigo, cant);
        end;
end;


