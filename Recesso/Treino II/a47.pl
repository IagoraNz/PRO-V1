main :-
    write('Digite uma lista: '),
    read(Lista),

    write('Digite a posicao do elemento: '),
    read(Posicao),

    busca(Lista, Posicao, Elemento),
    write(Elemento), nl.

busca([H|_], 1, H) :- !.
busca([_|T], Posicao, Elemento) :-
    Posicao1 is Posicao - 1,
    busca(T, Posicao1, Elemento).