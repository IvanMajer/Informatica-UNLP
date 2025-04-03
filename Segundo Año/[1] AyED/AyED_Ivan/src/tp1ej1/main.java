package tp1ej1;

import java.util.Scanner;

public class main {
	public static void main(String[] args) {
		Scanner Scan = new Scanner(System.in);
		int a = Scan.nextInt();
		int b = Scan.nextInt();
		System.out.println ("-----");
		tp1_ej1.UseFor(a,b);
		System.out.println ("-----");
		tp1_ej1.UseWhile (a,b);
		System.out.println ("-----");
		tp1_ej1.UseIter(a, b);
		System.out.println ("-----");
	}
		
}
