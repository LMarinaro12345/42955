grammar Lenguaje;

// Gramática
programa: instruccion+;

instruccion
    : seleccion
    | sentencia;

seleccion
    : SEGUN expresion HACER LLAVE_ABRE (caso | caso_defecto)* LLAVE_CIERRA FINSEGUN
    ;

caso
    : CASO constante DOS_PUNTOS sentencia;

caso_defecto
    : DEFECTO DOS_PUNTOS sentencia
    ;

sentencia
    : salida PUNTO_Y_COMA      
    | terminar PUNTO_Y_COMA    
    ;

salida
    : ESCRIBIR cadena
    ;

terminar
    : SALIR
    ;

expresion
    : constante
    ;

constante
    : cadena
    | numero
    ;

cadena
    : CADENA
    ;

numero
    : NUMERO
    ;

// Tokens léxicos
SEGUN: 'segun';
HACER: 'hacer';
CASO: 'caso';
DEFECTO: 'defecto';
FINSEGUN: 'finsegun';
ESCRIBIR: 'escribir';
SALIR: 'salir';
LLAVE_ABRE: '{';
LLAVE_CIERRA: '}';
DOS_PUNTOS: ':';
PUNTO_Y_COMA: ';';

CADENA: '"' ~["\r\n]* '"';
NUMERO: [0-9]+;

WS: [ \t\r\n]+ -> skip;
