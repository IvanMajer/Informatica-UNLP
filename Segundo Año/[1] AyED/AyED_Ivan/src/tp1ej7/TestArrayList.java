package tp1ej7;
import java.util.*;
import tp1ej3.estudiante;


public class TestArrayList {
	

	public static void puntoD () {
		
		ArrayList<estudiante> lista2 = new ArrayList<>();
		lista2.add(new estudiante("Ivan","Majer",3,"random2@gmail","random"));
		lista2.add(new estudiante("Jose","pepex",3,"random2@gmail","random"));
		lista2.add(new estudiante("Pepito","Nenex",3,"random2@gmail","random"));
		
		ArrayList<estudiante> lista3 = new ArrayList<>();
        for (estudiante e : lista2) {
            lista3.add(new estudiante(e.getNombre(), e.getApellido(),e.getComision(),e.getEmail(),e.getDireccion())); // Crear nuevos objetos
        }
		
		System.out.println("Imprimo lista 1");
		for (estudiante est: lista2)
		{
			System.out.println(est.tusDatos());
		}
		System.out.println("Imprimo lista 2");
		for (estudiante est: lista3)
		{
			System.out.println(est.tusDatos());
		}
		System.out.println("Cambio lista 1");
		lista2.get(1).setDireccion("pepegrillo33");
		System.out.println("Cambio lista 2");
		lista3.get(2).setDireccion("NULL");
		System.out.println("Imprimo lista 1");
		for (estudiante est: lista2)
		{ 
			System.out.println(est.tusDatos());
		}
		System.out.println("Imprimo lista 2");
		for (estudiante estudiante: lista3)
		{
			System.out.println(estudiante.tusDatos());
		}
		
	
	}
	
	public static void main(String[] args)
	{
		ArrayList<Integer> lista1 = new ArrayList<>();
		Scanner scanner = new Scanner (System.in);
		for (int i = 1; i<5; i++) {
			System.out.println ("Ingrese numero: ");
			int entrada = scanner.nextInt();
			lista1.add(entrada);		
		}
		
		
		for (int numero: lista1)
		{
			System.out.println(numero);
		}
			
		/*--------------------------------*/
		puntoD(); 

		
		
		
		
	}
	
}