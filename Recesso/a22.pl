main() :-
    espiral(L1, L2, L3),
    
    write('Espiral: '), nl,
    write(L1), nl,
    write(L2), nl,
    write(L3), nl.

espiral(L1, L2, L3) :-
    preencher(L1, L2, L3, 1).

preencher([X1, X2, X3], [X4, X5, X6], [X7, X8, X9], N) :-
    X5 is N, N1 is N + 1,
    X6 is N1, N2 is N1 + 1,
    X9 is N2, N3 is N2 + 1,
    X8 is N3, N4 is N3 + 1,
    X7 is N4, N5 is N4 + 1,
    X4 is N5, N6 is N5 + 1,
    X1 is N6, N7 is N6 + 1,
    X2 is N7, N8 is N7 + 1,
    X3 is N8.

preencher(_, _, _, _).