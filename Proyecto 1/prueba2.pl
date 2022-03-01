% HECHOS: SIEMPRE SERAN VERDADEROS
es_perro(blacky).
%es_perro = relación, blacky = objeto

/*POLITICAS DE LOS HECHOS
1. Objetos y relaciones con minuscula
2. Escribir prmero relación y luego objeto
3. Se permite _ para separar caracteres
4. Siempre se finaliza un hecho con un .
*/

es_gato(tom).
es_raton(jerry).
es_raton(1,jerry).
%VARIOS OBJETOS CON 1 RELACION
% , es AND
% ; es OR
% VARIABLES EMPIEZAN CON MAYUSCULA O CON _


masgrande(elefante,caballo).
masgrande(caballo,perro).
masgrande(perro,raton).
masgrande(raton,hormiga).
%REGLA ESTA FORMADO POR CABEZA Y CUERPO
%CABEZA ES :-

/*REGLAS RECURSIVAS
1.REALIZAR SIEMPRE EL PREDICADO DE PARADA
2.EVITAR LA RECURSIVDAD A LA IZQUIERDA*/

%PREDICADO DE PARADA: CUANDO LA REGLA SE CUMPLE
muchomasgrande(A,B):-masgrande(A,B).
%REGLA RECURSIVA
muchomasgrande(A,B):-masgrande(A,X),muchomasgrande(X,B). 

%ARBOL GENEALOGICO
%HECHOS
padrede(martin,luis).
padrede(luis,jose).
padrede(luis,pedro).
espadre(martin).
espadre(luis).
%REGLAS
hijode(B,A):-padre(A,B).

%REGLAS_AND
abuelode(A,C):-padrede(A,B),padrede(B,C).
hermanode(B,C):-espadre(A),padrede(A,B),padrede(A,C).

%REGLAS_OR
familiarde(A,B):-padrede(A,B);hijode(A,B);hermanode(A,B);abuelode(A,B).

