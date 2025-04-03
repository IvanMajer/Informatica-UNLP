package tp1ej1;
public class tp1_ej1 {
	
	public static void UseFor (int a, int b)
	{
		for (int i=a;i<=b;i++ ) {
			System.out.println(i);			
		}
	}
	public static void UseWhile (int a, int b)
	{
		while (a<=b)
		{
			System.out.println (a);
			a++;
		}
	}
	public static void UseIter (int a, int b)
	{
		if (a<=b)
		{
			System.out.println(a);
			a++;
			UseIter(a,b);
		}
	}
}
