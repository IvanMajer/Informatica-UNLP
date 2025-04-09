program fod;
type 
	ArchivoEnteros = file of integer; 

var 
	sum,cont,cant,aux : integer;
	nombreAr : string; 
	archivo : ArchivoEnteros;
BEGIN
	cont := 0; 
	cant := 0; 
	sum := 0; 
	writeln('Ingrese el nombre del archivo: ');
	read (nombreAr);
	Assign (archivo, nombreAr+'.dat');
	Reset(archivo);
	while (not EOF(archivo))do
	begin
		Read(archivo, aux);
		sum:= sum+aux;
		cant := cant+1;
		if (aux<1500) then cont:= cont+1; 
	end; 
	writeln(sum/cant:0:2);
	writeln(cont);
	Close (archivo);
	
END.

