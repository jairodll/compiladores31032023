//User code 
package com.mycompany.ejemplojflex;
%% 
//Opciones y definiciones regulares

%public
%class AnalizadorLexico
%char
%line //cuenta lineas  
%column //cuenta columnas
%standalone

//Definición regular
palabra = [a-zA-Z]+
espacios_blanco = [\r|\n|\r\n| |\t]

palabras_reservadas = \b(abstract|assert|boolean|break|byte|case|catch|char|class|const|continue|default|do|double|else|enum|extends|final|finally|float|for|if|goto|implements|import|instanceof|int|interface|long|native|new|package|private|protected|public|return|short|static|strictfp|super|switch|synchronized|this|throw|throws|transient|try|void|volatile|while)\b
operadores = (\+|\-|\*|\/|\%|\=|\>\=|\<\=|\>|\<|\!\=|\=\=|\&\&|\|\|)
identificador = [a-zA-Z_$][a-zA-Z0-9_$]*
signos = [\(|\)|\{|\}\[|\]]+
simbolos = [\{\}\[\];.]+


%%

//Reglas léxicas
{identificador} { System.out.println("Lexema: "+ yytext()); }
{operadores} { System.out.println("Lexema: "+ yytext()); }
{signos} { System.out.println("Lexema: "+ yytext()); }
{palabras_reservadas} { System.out.println("Lexema: "+ yytext()); }
{simbolos} { System.out.println("Lexema: "+ yytext()); }


