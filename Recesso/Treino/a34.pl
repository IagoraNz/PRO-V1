%1.34 Algoritmo de substituição de elementos de uma lista
%Dado um elemento e uma lista, substituir todas as ocorrências do elemento na lista por outro elemento dado.

main :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite um elemento: '),
    read(Elemento),

    write('Digite o elemento a ser substituido: '),
    read(Subst),

    substitui(Lista, Elemento, Subst, ListaSubstituida),
    write(ListaSubstituida), nl.

substitui([], _, _, []).
substitui([H|T], Elemento, Subst, [Elemento|TS]) :- %[Elemento|TS] é a lista que será retornada, Elemento está sendo inserido na cabeça da lista
    H =:= Subst,
    substitui(T, Elemento, Subst, TS). %TS é a lista que será retornada, T é a lista que está sendo percorrida

substitui([H|T], Elemento, Subst, [H|TS]) :-
    H =\= Subst,
    substitui(T, Elemento, Subst, TS).