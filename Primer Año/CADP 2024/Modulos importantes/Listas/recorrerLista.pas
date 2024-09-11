procedure recorrerLista (pI: listaE);

begin
 while (pI <> nil) do
   begin
      write (pI^.elem);
      pI:= pI^.sig;
   end;
end;

