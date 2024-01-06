main() :-
    write('Digite uma lista: '),
    read(Lista),

    inverte(Lista, LInv),
    write(LInv).

inverte([], []).
inverte([H|T], LInv) :-
    inverte(T, LInv1),
    append(LInv1, [H], LInv).