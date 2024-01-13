main :-
    write('Digite uma lista: '),
    read(Lista),

    primeiro(Lista, Elem),
    write('O primeiro elemento da lista: '), write(Elem).

primeiro([Elem], Elem).
primeiro([H|_], Elem) :-
    Elem = H.