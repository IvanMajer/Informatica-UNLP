/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tema1;

import PaqueteLectura.Lector; 


public class Ej04 {
    
    
   public static void main(String[] args) { 
    
        int cantPisos = 8;
        int cantOficinas = 4; 
        int [][] oficina;
        oficina = new int [cantPisos][cantOficinas];
        
        
        for (int f=0; f<cantPisos;f++)
        {
            for (int c=0;c<cantOficinas;c++)
            {
                oficina[f][c] = 0;
            }
        }
        
        
        int piso;
        int ofic;
        
        System.out.println ("Ingrese el piso: ");
        piso = Lector.leerInt();
        while (piso != 9)
        {
            System.out.println ("Ingrese el numero de oficina: ");
            ofic = Lector.leerInt();
            oficina [piso-1][ofic-1] = oficina[piso-1][ofic-1] + 1;
            System.out.println ("Ingrese el piso: ");
            piso = Lector.leerInt();
        }
        
        
        for (int f=0; f<cantPisos; f++)
        {
            System.out.println("-----PISO-"+(f+1)+"------");
            System.out.println ("Cantidad de personas por oficinas");
            for (int c=0; c<cantOficinas; c++)
            {
                System.out.println ("Oficina "+ (c+1) +":" );
                System.out.println(oficina[f][c]);
            }
        }
        
        
   }
    
}
