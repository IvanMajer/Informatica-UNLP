Procedure imprimirListaRecur (L: Lista);
begin
   if (L <> NIL) then
       writeln(L^.dato);
        imprimirListaRecur(L^.sig);
   end;
end;
Procedure imprimirListaRecur2 (L: Lista);  en el orden que fueron leídos
begin
   if (L <> NIL) then
       imprimirListaRecur2(L^.sig);
       writeln(L^.dato);
   end;
end;
