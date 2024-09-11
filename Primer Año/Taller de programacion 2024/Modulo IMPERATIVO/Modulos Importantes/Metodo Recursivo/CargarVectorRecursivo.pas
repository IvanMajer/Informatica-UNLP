procedure cargarVectorRec (var v: vecChar; var dimLog: integer);
var
    c: char;
begin
    leerCaracter(c);
    if (dimLog < dimFis) and (c <> '.') then begin
        dimLog:= dimLog + 1;
        v[dimLog]:= c;
        cargarVectorRec(v, dimLog);
    end;
end;


