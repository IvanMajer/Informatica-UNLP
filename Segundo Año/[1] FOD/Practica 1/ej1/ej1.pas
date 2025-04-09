program fod;

type 
	ArchivoEnteros = file of integer; 




var 	
	aux: integer; 
	nombreArch : string;  
	archivo : ArchivoEnteros;
begin
	write ('Ingrese el nombre que desea ponerle al archivo: ');
	readln (nombreArch);
	Assign (archivo, nombreArch+'.dat'); 
	Rewrite (archivo); 
	write('Ingrese un numero: ');
	read(aux);
	while (aux <> 30000) do
	begin
		Write(archivo, aux); 
		write('Ingrese un numero: ');
		read(aux);
	end; 
	Close (archivo);
end. 
