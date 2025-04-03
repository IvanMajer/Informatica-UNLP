package tp1ej2;

public class ArrayCreator {
	public static int[] Crear(int n)
	{
		int[] aux = new int [n];
		for (int i=1; i<=n; i++)
		{
			aux[i-1] = n*i;  
		}
		return aux;
	}
	public static void Informar (int[] v )
	{
		String aux="";
		for (int elto: v) 
		{
			aux+=elto+" ";
		}
		System.out.println(aux);
		}
	}

