%1.36 Algoritmo que receba uma lista e duplique seus elementos.
%Por exemplo: [1,2,3,4] = [1,1,2,2,3,3,4,4]

main() :-
    write('Digite uma lista: '),
    read(Lista),

    duplica(Lista, ListaD),
    write('Lista duplicada: '), write(ListaD), nl.

duplica([], []).
duplica([H|T], [H, H|T1]) :-
    duplica(T, T1).