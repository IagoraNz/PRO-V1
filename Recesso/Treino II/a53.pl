main :-
    write('Digite uma lista: '),
    read(Lista),

    inverte(Lista, Inv),
    write(Inv), nl,

    write('Digite um elemento a ser removido: '),
    read(Elem),

    remove(Elem, Inv, LR),
    write(LR).

inverte([], []).
inverte([H|T], Inv) :-
    inverte(T, Inv1),
    adiciona(Inv1, H, Inv).

adiciona([], X, [X]).
adiciona([H|T], X, [H|T1]) :-
    adiciona(T, X, T1).

remove(_, [], []).
remove(X, [X|T], T).
remove(X, [H|T], [H|T1]) :-
    remove(X, T, T1).
