procedure recorrerListaenArbol (A: arbol; anio: integer; var codigo: integer);
begin
     if (A = NIL) then
      codigo:= -1
    else if (A <> NIL) then begin
          recorrerListaenArbol(A^.HD, anio, codigo);
          recorrerLista(A^.datoA.LR, anio, codigo);
          recorrerListaenArbol(A^.HI, anio, codigo);
         end;  
end;


