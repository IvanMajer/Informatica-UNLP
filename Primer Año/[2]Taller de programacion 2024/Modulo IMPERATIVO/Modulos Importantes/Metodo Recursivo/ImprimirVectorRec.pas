procedure imprimirVectorRec (v: vecChar; dimLog: integer);
begin
     if (dimLog  > 0) then begin
         imprimirVectorRec(v, dimLog-1);
         writeln(dimLog, ' Valor actual = ',v[dimLog]);
    end;
end;
function unMaximoVRec (v: vecNum; max, dimLog: integer): integer;
begin
        if  (dimLog > 0 ) and (v[dimLog] > max) then begin
            max:= v[dimLog];
    end;
       unMaximoVRec:= unMaximoVRec(v, max, dimLog - 1);
   end
    else
        unMaximoVRec:= max;
end;

