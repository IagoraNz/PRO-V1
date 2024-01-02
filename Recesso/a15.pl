%Algoritmo que dada uma lista gere uma lista de pares e uma lista de impares. Por exemplo: [1,2,3,4,5] gera uma LP = (1,3,5) e LI = (2,4).

inicio() :-
    write('Digite uma lista: '),
    read(Lista),

    separa(Lista, LP, LI),

    write('Lista de pares: '), write(LP), nl,

    write('Lista de impares: '), write(LI).

separa([], [], []). %Se as listas forem vazias, retorna vazio.
separa([H|T], [H|LP], LI) :- %Se o primeiro elemento for par, adiciona na lista de pares.
    H mod 2 =:= 0, %Verifica se o elemento é par.
    separa(T, LP, LI). %Chama recursivamente para o resto da lista.
%Se não for par, passa para o próximo predicado.
separa([H|T], LP, [H|LI]) :- %Se o primeiro elemento for impar, adiciona na lista de impares.
    H mod 2 =:= 1,
    separa(T, LP, LI). %Chama recursivamente para o resto da lista.
