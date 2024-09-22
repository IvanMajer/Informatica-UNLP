
package tema1;

import PaqueteLectura.Lector;

public class Ej02Jugadores {

  
    public static void main(String[] args) {
        Double [] vectorAlturas;
        int cantidad = 15; 
        vectorAlturas = new Double[cantidad];
        int cantidadJugadores = 0;
        int i = 0;
        int j;
        Double aux = 0.0;
        Double totalAlturas = 0.0; 
        Double Promedio;
        
        while (i<15)
        {   
            System.out.println (" Ingrese la altura del jugador: ");
            aux = Lector.leerDouble();
            vectorAlturas[i] = aux;
            totalAlturas = totalAlturas + aux;
            i= i + 1; 
        }
        
        Promedio = totalAlturas / cantidad;
                
        System.out.println ("El promedio de altura de los jugadores es: " + Promedio );
        
        for ( j= 0; j<15; j++) 
        {
           if (vectorAlturas[j] > Promedio)
               cantidadJugadores = cantidadJugadores + 1;
        }
        System.out.println ("La cantidad de jugadores con altura por encima del promedio es: " + cantidadJugadores);
    }
    
}
