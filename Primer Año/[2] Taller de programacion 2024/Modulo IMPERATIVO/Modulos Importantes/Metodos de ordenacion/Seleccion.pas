Procedure seleccion ( var v: tVector; dimLog: indice );

var 
i, j, pos: indice; 
item : tipoElem;	
		
begin
 for i:=1 to dimLog-1 do begin {busca el mínimo y guarda en pos la posición}
          pos := i;
          for j := i+1 to dimLog do
             if v[ j ] < v[ pos ] then pos:=j;

         {intercambia v[i] y v[p]}
         item := v[ pos ];   
         v[ pos ] := v[ i ];   
         v[ i ] := item;
      end;
end;
