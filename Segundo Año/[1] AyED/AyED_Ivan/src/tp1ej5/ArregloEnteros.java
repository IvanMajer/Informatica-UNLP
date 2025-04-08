package tp1ej5;

public class ArregloEnteros {
	ObjetoArreglo Obj = new ObjetoArreglo();
	
	
	public static ObjetoArreglo metodo1(int[] arreglo)
	{
		ObjetoArreglo x = new ObjetoArreglo(); 
		int suma = 0; 
		
		for(int dato:arreglo) {
			if (dato > x.getMax()) {
				x.setMax(dato);
			}
			else if (dato<x.getMin()) {
				x.setMin(dato);
			}
			
			suma = suma+dato;
		}
		x.setProm(suma/arreglo.length);
		return x;
	}
	public static void metodo2(int[] arreglo, ObjetoArreglo Datos)
	{
		int suma = 0; 
		for (int dato:arreglo) {
			if (dato> Datos.getMax()) {
				Datos.setMax(dato);
			}
			else if (dato<Datos.getMin()) {
				Datos.setMin(dato);
			}
			suma = suma+dato;
			
			Datos.setProm(suma/arreglo.length);
		}
	}
		
	public void metodo3(int[] arreglo) 
	{
		int suma = 0; 
		for (int dato:arreglo) {
			if (dato> Obj.getMax()) {
				Obj.setMax(dato);
			}
			else if (dato<Obj.getMin()) {
				Obj.setMin(dato);
			}
			suma = suma+dato;
			
			Obj.setProm(suma/arreglo.length);
		}		
	}
		

	
	public static void main(String[] args) {
			int[] Arreglo = {2,19,4,3,1};
			ObjetoArreglo Datos=metodo1(Arreglo); 
			System.out.println(Datos.toString());

			ObjetoArreglo Dato = new ObjetoArreglo();
			
			metodo2(Arreglo, Dato);
			System.out.println(Dato.toString());
			
			ArregloEnteros prueba3 = new ArregloEnteros();  
			prueba3.metodo3(Arreglo);
			
			System.out.println(prueba3.Obj.toString());
			
			
			
			
}

}
