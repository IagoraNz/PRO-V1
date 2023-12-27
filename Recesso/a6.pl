%1.6 Algoritmo em prolog que imprima os numeros pares de uma lista.

par(X) :-
    X mod 2 =:= 0.

imprimir([]). %Caso base
imprimir([H|T]) :- %Caso recursivo
    par(H), %Verifica se a cabeça é par
    write(H), nl,
    imprimir(T). %Chama a função novamente para o resto da lista

imprimir([_|T]) :- 
    imprimir(T).%Chama a função novamente para o resto da lista