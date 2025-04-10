
program untitled;
type 
	registroEmpleados = record
		nEmpleado : integer;
		apellido: string;
		nombre: string;
		edad : integer; 
		dni: integer;
	end; 
	
	ArchivoEmpleados = file of registroEmpleados; 
	
var
	auxEmp: registroEmpleados; 
	archivo: ArchivoEmpleados;
	nombre : string; 
	buscar :string; 
	verificador: boolean;
BEGIN
	write('Ingrese el nombre del archivo: ');
	readln (nombre); 
	Assign (archivo, nombre+'.dat');
	write ('Ingrese un numero de empleado: ');
	readln(auxEmp.nEmpleado);
	writeln ('Ingrese el apellido del empleado: ');
	readln (auxEmp.apellido);
	writeln ('Ingrese el nombre del empleado: ');
	readln(auxEmp.nombre);
	writeln ('Ingrese la edad del empleado: ');
	readln (auxEmp.edad);
	writeln ('Ingrese el dni del empleado: ');	
	readln(auxEmp.dni);
	
	Rewrite (archivo);
	
	while (auxEmp.apellido <> 'fin') do
	begin
		Write(archivo, auxEmp);
		
		write ('Ingrese un numero de empleado: ');
		readln(auxEmp.nEmpleado);
		writeln ('Ingrese el apellido del empleado: ');
		readln (auxEmp.apellido);
		writeln ('Ingrese el nombre del empleado: ');
		readln(auxEmp.nombre);
		writeln ('Ingrese la edad del empleado: ');
		readln (auxEmp.edad);
		writeln ('Ingrese el dni del empleado: ');	
		readln(auxEmp.dni);
	
	end; 
	Close(archivo);
	verificador := false; 
	
	Reset (archivo);
	write('Ingrese el nombre o apellido a buscar: ');
	readln (buscar);
	while (not EOF(archivo)) and (verificador <> true) do
	begin
		read (archivo, auxEmp); 
		
		if (auxEmp.nombre = buscar) or (auxEmp.apellido = buscar) then
		begin	
			with auxEmp do 
				writeln (nEmpleado,'', apellido,'', nombre,'', edad,'', dni );
			
			verificador := true;
		end;
	end; 
	close(archivo);
	rewrite (archivo);
	
	
	
	
	while (not EOF(archivo)) do 
	begin
	 Read(archivo,auxEmp);
	 with auxEmp do 
		writeln(nEmpleado, apellido, nombre, edad, dni);
	end;
	
	
	while (not EOF(archivo)) do
	begin
		read (archivo, auxEmp); 
		
		if (auxEmp.edad > 70) then
			
			with auxEmp do 
				writeln (nEmpleado, apellido, nombre, edad, dni );

	end; 
	
		
END.

