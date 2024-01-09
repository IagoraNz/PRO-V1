inicio() :-
    write('Digite duas listas: '),
    read(L1),
    read(L2),
    
    comum(X, L1, L2),
    write('As listas possuem '), write(X), write(' elementos em comum'), nl.

comum(0, [], _).
comum(0, _, []).
comum(X, [H|T], L2) :-
    member(H, L2),
    comum(X1, T, L2),
    X is X1 + 1.

comum(X, [H|T], L2) :-
    not(member(H, L2)),
    comum(X, T, L2).