/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.ejemplojflex;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.mycompany.ejemplojflex.AnalizadorLexico;
import java.io.IOException;
/**
 *
 * @author jairo
 */
public class EjemploJFlex {

    public static void main(String[] args) throws IOException {
        
        try {
            Reader r = new FileReader("prueba.txt");
            AnalizadorLexico scan = new AnalizadorLexico(r);
            scan.yylex();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(EjemploJFlex.class.getName()).log(Level.SEVERE, null, ex);
            
        }
    }
}
