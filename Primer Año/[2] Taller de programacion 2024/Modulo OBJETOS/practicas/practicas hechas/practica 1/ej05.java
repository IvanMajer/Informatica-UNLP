/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema1;
import PaqueteLectura.Lector;

public class ej05 {
public static void main(String[] args) {
    
    int cantClientes = 5;
    int aspectos = 4;
    
    int[][] calificacion; 
    calificacion = new int[cantClientes][aspectos];
    
    int [] vectPromedio;
    vectPromedio = new int[aspectos];
    int Calific; 
        
    for (int i=0; i<4;i++)
    { 
        vectPromedio[i] = 0;
    }


       
    for (int f= 0; f<cantClientes;f++)
    {
        System.out.println("-----Cliente numero "+f+"-----");        
        for (int c=0; c<aspectos;c++)
        {

            System.out.println ("Ingrese la nota para el aspecto numero "+c+":");
            Calific = Lector.leerInt();  
            calificacion[f][c] = Calific;
            vectPromedio [c]= vectPromedio[c] + Calific; 
        }
    }
    System.out.println ("--------------------------");
    for (int c=0;c<aspectos;c++)
    {
        double prom = 0;
        prom = vectPromedio [c] / 5;
        System.out.println ("La calificacion promedio del aspecto "+c+" = "+ prom);
    }
    
    
    
    } 
    
}
