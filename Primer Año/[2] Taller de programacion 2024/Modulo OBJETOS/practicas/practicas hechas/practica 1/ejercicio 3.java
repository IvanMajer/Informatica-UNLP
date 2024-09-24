package tema1;

import PaqueteLectura.GeneradorAleatorio;

public class Ej03Matrices {
    
    
    public static void main(String[] args) {
	GeneradorAleatorio.iniciar();
	
        int cantFilas = 5;
        int cantColumnas = 5; 
        int [][] matriz; 
        int dimF = 5;
        matriz = new int [cantFilas][cantColumnas];
        int total;
        int [] vector;
        vector = new int [dimF];
        total = 0 ;
        for (int f=0; f <cantFilas; f++)
        {
            for (int c=0;c<cantColumnas;c++)
            {
                matriz[f][c] = GeneradorAleatorio.generarInt(31);     
            }
        }
       
    
        for (int f= 0; f <cantFilas;f++ )
        {
            for (int c=0;c<cantColumnas; c++)
            {
                System.out.print ("["+f+c+"] "+ matriz[f][c] +  " |");
            }
            System.out.println ("");
        }

        for (int c=0;c<cantColumnas;c++)
        {
            int f=0;
            total = total + matriz[f][c];
        }
       System.out.println ("La suma de los elementos de la fila 1 es: " + total);
       
       
        for (int i=0; i<5; i++)
        {
            vector[i] = 0; 
        }
        for (int c=0;c<cantColumnas;c++) 
        {
            for (int f=0;f<cantFilas;f++)
            {
                vector[c] = vector[c]+ matriz[f][c];
            }
        }
        
        for (int n=0; n<=4; n++)
            System.out.println (vector[n]);

	System.out.println("Ingrese valor entero");
        int num = Lector.leerInt();
        
        int f = 0;
        int c = 0;
        boolean ok = false;
        while ((f < 5) && (!ok))
                {
            while ((c < 5) && (matriz[f][c] != num))
                  c++;
            if (c == 5){
                c = 0;
                f++;
            } else
                ok = true;
                }
        if (ok)
            System.out.println("Fila: "+f+" Columna: "+c);
        else
            System.out.println("El numero ingresado no se encontró");
            }
}    
        
    
    }
}
