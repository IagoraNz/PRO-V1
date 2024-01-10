main :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),

    write('Digite um elemento: '),
    read(Elem),

    remove(Elem, L1, R1),
    remove(Elem, L2, R2), nl,
    write(R1), nl,
    write(R2).

remove(_, [], []).
remove(Elem, [Elem|T], T).
remove(Elem, [H|T], [H|T1]) :-
    remove(Elem, T, T1).
